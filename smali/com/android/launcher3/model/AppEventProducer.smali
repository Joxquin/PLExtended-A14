.class public final Lcom/android/launcher3/model/AppEventProducer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/quickstep/logging/StatsLogCompatManager$StatsLogConsumer;


# instance fields
.field private final mCallback:Ljava/util/function/ObjIntConsumer;

.field private final mContext:Landroid/content/Context;

.field private mLastDragItem:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

.field private final mMessageHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/model/R0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/AppEventProducer;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/Handler;

    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/model/d;

    invoke-direct {v1, p0}, Lcom/android/launcher3/model/d;-><init>(Lcom/android/launcher3/model/AppEventProducer;)V

    invoke-direct {p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/android/launcher3/model/AppEventProducer;->mMessageHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/launcher3/model/AppEventProducer;->mCallback:Ljava/util/function/ObjIntConsumer;

    return-void
.end method

.method public static a(Lcom/android/launcher3/model/AppEventProducer;Landroid/os/Message;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/prediction/AppTargetEvent;

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/android/launcher3/model/AppEventProducer;->mCallback:Ljava/util/function/ObjIntConsumer;

    invoke-interface {p0, v0, p1}, Ljava/util/function/ObjIntConsumer;->accept(Ljava/lang/Object;I)V

    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private createTempFolderTarget()Landroid/app/prediction/AppTarget;
    .locals 5

    new-instance v0, Landroid/app/prediction/AppTarget$Builder;

    new-instance v1, Landroid/app/prediction/AppTargetId;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "folder:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/prediction/AppTargetId;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/model/AppEventProducer;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Landroid/app/prediction/AppTarget$Builder;-><init>(Landroid/app/prediction/AppTargetId;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v0}, Landroid/app/prediction/AppTarget$Builder;->build()Landroid/app/prediction/AppTarget;

    move-result-object p0

    return-object p0
.end method

.method private static getWorkspaceContainerString(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;II)Ljava/lang/String;
    .locals 3

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->getPageIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->getGridX()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->getGridY()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v1, v2, p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "workspace/%d/[%d,%d]/[%d,%d]"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static parseNullable(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private sendEvent(Landroid/app/prediction/AppTarget;Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;II)V
    .locals 3

    if-eqz p1, :cond_d

    .line 1
    invoke-static {}, Lcom/android/launcher3/Utilities;->isRunningInTestHarness()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2
    new-instance v0, Landroid/app/prediction/AppTargetEvent$Builder;

    invoke-direct {v0, p1, p3}, Landroid/app/prediction/AppTargetEvent$Builder;-><init>(Landroid/app/prediction/AppTarget;I)V

    .line 3
    invoke-virtual {p2}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getContainerCase()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    if-eqz p3, :cond_c

    const-string p2, "hotseat/%1$d/[%1$d,0]/[1,1]"

    const/4 v1, 0x1

    if-eq p3, v1, :cond_b

    const/4 v2, 0x2

    if-eq p3, v2, :cond_8

    const/4 p2, 0x3

    if-eq p3, p2, :cond_7

    const/4 p2, 0x5

    if-eq p3, p2, :cond_6

    const/4 p2, 0x6

    if-eq p3, p2, :cond_5

    const/4 p2, 0x7

    if-eq p3, p2, :cond_4

    const/16 p2, 0x9

    if-eq p3, p2, :cond_3

    const/16 p2, 0xa

    if-eq p3, p2, :cond_2

    const/16 p2, 0xd

    if-eq p3, p2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getExtendedContainers()Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->getContainerCase()Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$ContainerCase;

    move-result-object p1

    sget-object p2, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$ContainerCase;->DEVICE_SEARCH_RESULT_CONTAINER:Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$ContainerCase;

    if-ne p1, p2, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, ""

    goto/16 :goto_2

    :cond_2
    const-string p1, "task-switcher"

    goto/16 :goto_2

    :cond_3
    const-string p1, "predictions/hotseat"

    goto/16 :goto_2

    :cond_4
    const-string p1, "deep-shortcuts"

    goto/16 :goto_2

    :cond_5
    :goto_1
    const-string p1, "search-results"

    goto/16 :goto_2

    :cond_6
    const-string p1, "predictions"

    goto/16 :goto_2

    :cond_7
    const-string p1, "all-apps"

    goto/16 :goto_2

    .line 6
    :cond_8
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getFolder()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->getParentContainerCase()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    const-string v2, "folder/"

    if-eqz p3, :cond_a

    if-eq p3, v1, :cond_9

    const-string p1, "folder"

    goto :goto_2

    .line 8
    :cond_9
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->getHotseat()Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    move-result-object p1

    .line 9
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->getIndex()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 11
    :cond_a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->getWorkspace()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    move-result-object p1

    invoke-static {p1, v1, v1}, Lcom/android/launcher3/model/AppEventProducer;->getWorkspaceContainerString(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 12
    :cond_b
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getHotseat()Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    move-result-object p1

    .line 13
    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->getIndex()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 14
    :cond_c
    invoke-virtual {p2}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getWidget()Lcom/android/launcher3/logger/LauncherAtom$Widget;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->getSpanX()I

    move-result p3

    .line 15
    invoke-virtual {p2}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getWidget()Lcom/android/launcher3/logger/LauncherAtom$Widget;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->getSpanY()I

    move-result p2

    .line 16
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getWorkspace()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    move-result-object p1

    invoke-static {p1, p3, p2}, Lcom/android/launcher3/model/AppEventProducer;->getWorkspaceContainerString(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;II)Ljava/lang/String;

    move-result-object p1

    .line 17
    :goto_2
    invoke-virtual {v0, p1}, Landroid/app/prediction/AppTargetEvent$Builder;->setLaunchLocation(Ljava/lang/String;)Landroid/app/prediction/AppTargetEvent$Builder;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroid/app/prediction/AppTargetEvent$Builder;->build()Landroid/app/prediction/AppTargetEvent;

    move-result-object p1

    .line 19
    iget-object p0, p0, Lcom/android/launcher3/model/AppEventProducer;->mMessageHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p4, p2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_d
    return-void
.end method

.method private sendEvent(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;II)V
    .locals 7

    .line 20
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 21
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getIsWork()Z

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/model/AppEventProducer;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 22
    sget-object v1, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v1}, Lcom/android/launcher3/pm/UserCache;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    .line 23
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/launcher3/model/c;

    invoke-direct {v4, v0}, Lcom/android/launcher3/model/c;-><init>(Landroid/os/UserHandle;)V

    invoke-interface {v4}, Ljava/util/function/Predicate;->negate()Ljava/util/function/Predicate;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v0

    .line 25
    invoke-virtual {v0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    :cond_0
    if-nez v0, :cond_1

    goto/16 :goto_5

    .line 26
    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getItemCase()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v4, "app:"

    if-eqz v1, :cond_8

    const/4 v5, 0x1

    if-eq v1, v5, :cond_7

    const/4 v4, 0x2

    if-eq v1, v4, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    goto/16 :goto_0

    .line 27
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher3/model/AppEventProducer;->createTempFolderTarget()Landroid/app/prediction/AppTarget;

    move-result-object v3

    goto/16 :goto_5

    .line 28
    :cond_3
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getWidget()Lcom/android/launcher3/logger/LauncherAtom$Widget;

    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->getComponentName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/model/AppEventProducer;->parseNullable(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "widget:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 31
    :cond_4
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getShortcut()Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->getShortcutId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 33
    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->getShortcutName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher3/model/AppEventProducer;->parseNullable(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 34
    new-instance v5, Lcom/android/launcher3/shortcuts/ShortcutRequest;

    invoke-direct {v5, v2, v0}, Lcom/android/launcher3/shortcuts/ShortcutRequest;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    .line 35
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->getShortcutId()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    .line 36
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->forPackage(Ljava/lang/String;Ljava/util/List;)V

    const/16 v2, 0xb

    .line 37
    invoke-virtual {v5, v2}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->query(I)Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;

    move-result-object v2

    .line 38
    invoke-virtual {v2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v2

    .line 39
    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 40
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 41
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "shortcut:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->getShortcutId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_5
    move-object v1, v4

    goto :goto_2

    :cond_6
    :goto_0
    move-object v4, v3

    goto :goto_3

    .line 42
    :cond_7
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getTask()Lcom/android/launcher3/logger/LauncherAtom$Task;

    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$Task;->getComponentName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/model/AppEventProducer;->parseNullable(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 45
    :cond_8
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getApplication()Lcom/android/launcher3/logger/LauncherAtom$Application;

    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$Application;->getComponentName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/model/AppEventProducer;->parseNullable(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v4, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_4

    :cond_9
    :goto_2
    move-object v4, v1

    :goto_3
    move-object v1, v3

    move-object v2, v1

    :goto_4
    if-eqz v1, :cond_b

    if-eqz v4, :cond_b

    if-eqz v2, :cond_a

    .line 48
    new-instance v0, Landroid/app/prediction/AppTarget$Builder;

    new-instance v3, Landroid/app/prediction/AppTargetId;

    invoke-direct {v3, v1}, Landroid/app/prediction/AppTargetId;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3, v2}, Landroid/app/prediction/AppTarget$Builder;-><init>(Landroid/app/prediction/AppTargetId;Landroid/content/pm/ShortcutInfo;)V

    invoke-virtual {v0}, Landroid/app/prediction/AppTarget$Builder;->build()Landroid/app/prediction/AppTarget;

    move-result-object v3

    goto :goto_5

    .line 49
    :cond_a
    new-instance v2, Landroid/app/prediction/AppTarget$Builder;

    new-instance v3, Landroid/app/prediction/AppTargetId;

    invoke-direct {v3, v1}, Landroid/app/prediction/AppTargetId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1, v0}, Landroid/app/prediction/AppTarget$Builder;-><init>(Landroid/app/prediction/AppTargetId;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 50
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/prediction/AppTarget$Builder;->setClassName(Ljava/lang/String;)Landroid/app/prediction/AppTarget$Builder;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/app/prediction/AppTarget$Builder;->build()Landroid/app/prediction/AppTarget;

    move-result-object v3

    .line 52
    :cond_b
    :goto_5
    invoke-direct {p0, v3, p1, p2, p3}, Lcom/android/launcher3/model/AppEventProducer;->sendEvent(Landroid/app/prediction/AppTarget;Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;II)V

    return-void
.end method


# virtual methods
.method public final consume(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)V
    .locals 10

    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_APP_LAUNCH_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const/4 v1, 0x1

    const/16 v2, -0x66

    if-eq p1, v0, :cond_10

    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASK_LAUNCH_SWIPE_DOWN:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    if-eq p1, v0, :cond_10

    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASK_LAUNCH_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    if-eq p1, v0, :cond_10

    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_QUICKSWITCH_RIGHT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    if-eq p1, v0, :cond_10

    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_QUICKSWITCH_LEFT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    if-ne p1, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DROPPED_ON_DONT_SUGGEST:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    invoke-direct {p0, p2, p1, v2}, Lcom/android/launcher3/model/AppEventProducer;->sendEvent(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;II)V

    goto/16 :goto_3

    :cond_1
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DRAG_STARTED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    if-ne p1, v0, :cond_2

    iput-object p2, p0, Lcom/android/launcher3/model/AppEventProducer;->mLastDragItem:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    goto/16 :goto_3

    :cond_2
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DROP_COMPLETED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    sget-object v3, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->WORKSPACE:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    const/4 v4, 0x0

    sget-object v5, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->WIDGET:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    const/16 v6, -0x6f

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/16 v9, -0x67

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Lcom/android/launcher3/model/AppEventProducer;->mLastDragItem:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-static {p1}, Lcom/android/launcher3/model/PredictionHelper;->isTrackedForHotseatPrediction(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/launcher3/model/AppEventProducer;->mLastDragItem:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-direct {p0, p1, v7, v9}, Lcom/android/launcher3/model/AppEventProducer;->sendEvent(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;II)V

    :cond_4
    invoke-static {p2}, Lcom/android/launcher3/model/PredictionHelper;->isTrackedForHotseatPrediction(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0, p2, v8, v9}, Lcom/android/launcher3/model/AppEventProducer;->sendEvent(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;II)V

    :cond_5
    invoke-virtual {p2}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getItemCase()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    move-result-object p1

    if-ne p1, v5, :cond_6

    invoke-virtual {p2}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getContainerCase()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    move-result-object p1

    if-ne p1, v3, :cond_6

    goto :goto_0

    :cond_6
    move v1, v4

    :goto_0
    if-eqz v1, :cond_7

    invoke-direct {p0, p2, v8, v6}, Lcom/android/launcher3/model/AppEventProducer;->sendEvent(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;II)V

    :cond_7
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/model/AppEventProducer;->mLastDragItem:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    goto/16 :goto_3

    :cond_8
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DROP_FOLDER_CREATED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    if-ne p1, v0, :cond_9

    invoke-static {p2}, Lcom/android/launcher3/model/PredictionHelper;->isTrackedForHotseatPrediction(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-direct {p0}, Lcom/android/launcher3/model/AppEventProducer;->createTempFolderTarget()Landroid/app/prediction/AppTarget;

    move-result-object p1

    invoke-direct {p0, p1, p2, v8, v9}, Lcom/android/launcher3/model/AppEventProducer;->sendEvent(Landroid/app/prediction/AppTarget;Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;II)V

    invoke-direct {p0, p2, v7, v9}, Lcom/android/launcher3/model/AppEventProducer;->sendEvent(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;II)V

    goto/16 :goto_3

    :cond_9
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_FOLDER_CONVERTED_TO_ICON:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    if-ne p1, v0, :cond_a

    invoke-static {p2}, Lcom/android/launcher3/model/PredictionHelper;->isTrackedForHotseatPrediction(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-direct {p0}, Lcom/android/launcher3/model/AppEventProducer;->createTempFolderTarget()Landroid/app/prediction/AppTarget;

    move-result-object p1

    invoke-direct {p0, p1, p2, v7, v9}, Lcom/android/launcher3/model/AppEventProducer;->sendEvent(Landroid/app/prediction/AppTarget;Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;II)V

    invoke-direct {p0, p2, v8, v9}, Lcom/android/launcher3/model/AppEventProducer;->sendEvent(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;II)V

    goto/16 :goto_3

    :cond_a
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DROPPED_ON_REMOVE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    if-ne p1, v0, :cond_d

    iget-object p1, p0, Lcom/android/launcher3/model/AppEventProducer;->mLastDragItem:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    if-eqz p1, :cond_b

    invoke-static {p1}, Lcom/android/launcher3/model/PredictionHelper;->isTrackedForHotseatPrediction(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/launcher3/model/AppEventProducer;->mLastDragItem:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-direct {p0, p1, v7, v9}, Lcom/android/launcher3/model/AppEventProducer;->sendEvent(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;II)V

    :cond_b
    iget-object p1, p0, Lcom/android/launcher3/model/AppEventProducer;->mLastDragItem:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getItemCase()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    move-result-object p2

    if-ne p2, v5, :cond_c

    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getContainerCase()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    move-result-object p1

    if-ne p1, v3, :cond_c

    goto :goto_1

    :cond_c
    move v1, v4

    :goto_1
    if-eqz v1, :cond_11

    iget-object p1, p0, Lcom/android/launcher3/model/AppEventProducer;->mLastDragItem:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-direct {p0, p1, v7, v6}, Lcom/android/launcher3/model/AppEventProducer;->sendEvent(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;II)V

    goto :goto_3

    :cond_d
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_HOTSEAT_PREDICTION_PINNED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    if-ne p1, v0, :cond_e

    invoke-static {p2}, Lcom/android/launcher3/model/PredictionHelper;->isTrackedForHotseatPrediction(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-direct {p0, p2, v8, v9}, Lcom/android/launcher3/model/AppEventProducer;->sendEvent(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;II)V

    goto :goto_3

    :cond_e
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ONRESUME:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    if-ne p1, v0, :cond_f

    new-instance p1, Landroid/app/prediction/AppTarget$Builder;

    new-instance v0, Landroid/app/prediction/AppTargetId;

    const-string v3, "launcher:launcher"

    invoke-direct {v0, v3}, Landroid/app/prediction/AppTargetId;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher3/model/AppEventProducer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-direct {p1, v0, v3, v4}, Landroid/app/prediction/AppTarget$Builder;-><init>(Landroid/app/prediction/AppTargetId;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {p1}, Landroid/app/prediction/AppTarget$Builder;->build()Landroid/app/prediction/AppTarget;

    move-result-object p1

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/launcher3/model/AppEventProducer;->sendEvent(Landroid/app/prediction/AppTarget;Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;II)V

    goto :goto_3

    :cond_f
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_DISMISS_PREDICTION_UNDO:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    if-ne p1, v0, :cond_11

    const/4 p1, 0x5

    invoke-direct {p0, p2, p1, v9}, Lcom/android/launcher3/model/AppEventProducer;->sendEvent(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;II)V

    goto :goto_3

    :cond_10
    :goto_2
    invoke-direct {p0, p2, v1, v2}, Lcom/android/launcher3/model/AppEventProducer;->sendEvent(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;II)V

    :cond_11
    :goto_3
    return-void
.end method
