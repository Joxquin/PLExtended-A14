.class public final Lcom/android/quickstep/util/SplitSelectDataHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/android/quickstep/util/SplitSelectDataHolder$Companion;

.field public static final SPLIT_PENDINGINTENT_PENDINGINTENT:I = 0x5

.field public static final SPLIT_PENDINGINTENT_TASK:I = 0x3

.field public static final SPLIT_SHORTCUT_TASK:I = 0x4

.field public static final SPLIT_SINGLE_INTENT_FULLSCREEN:I = 0x7

.field public static final SPLIT_SINGLE_SHORTCUT_FULLSCREEN:I = 0x8

.field public static final SPLIT_SINGLE_TASK_FULLSCREEN:I = 0x6

.field public static final SPLIT_TASK_PENDINGINTENT:I = 0x1

.field public static final SPLIT_TASK_SHORTCUT:I = 0x2

.field public static final SPLIT_TASK_TASK:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private initialIntent:Landroid/content/Intent;

.field private initialPendingIntent:Landroid/app/PendingIntent;

.field private initialShortcut:Landroid/content/pm/ShortcutInfo;

.field private initialStagePosition:I

.field private initialTaskId:I

.field private initialUser:Landroid/os/UserHandle;

.field private itemInfo:Lcom/android/launcher3/model/data/ItemInfo;

.field private secondIntent:Landroid/content/Intent;

.field private secondPendingIntent:Landroid/app/PendingIntent;

.field private secondShortcut:Landroid/content/pm/ShortcutInfo;

.field private secondTaskId:I

.field private secondUser:Landroid/os/UserHandle;

.field private splitEvent:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/quickstep/util/SplitSelectDataHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/util/SplitSelectDataHolder$Companion;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lcom/android/quickstep/util/SplitSelectDataHolder;->Companion:Lcom/android/quickstep/util/SplitSelectDataHolder$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->context:Landroid/content/Context;

    const-class p1, Lcom/android/quickstep/util/SplitSelectDataHolder;

    invoke-static {p1}, Lkotlin/jvm/internal/j;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/d;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/jvm/internal/d;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->TAG:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->initialStagePosition:I

    iput p1, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->initialTaskId:I

    iput p1, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->secondTaskId:I

    return-void
.end method

.method private final convertIntentsToFinalTypes()V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->initialIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->initialUser:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v1}, Lcom/android/quickstep/util/SplitSelectDataHolder;->getShortcutInfo(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->initialShortcut:Landroid/content/pm/ShortcutInfo;

    iget-object v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->initialIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->initialUser:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v1}, Lcom/android/quickstep/util/SplitSelectDataHolder;->getPendingIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->initialPendingIntent:Landroid/app/PendingIntent;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->initialIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->secondIntent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->secondPendingIntent:Landroid/app/PendingIntent;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Both secondIntent and secondPendingIntent non-null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->secondPendingIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_2

    iput-object v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->secondIntent:Landroid/content/Intent;

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->secondUser:Landroid/os/UserHandle;

    invoke-direct {p0, v1, v2}, Lcom/android/quickstep/util/SplitSelectDataHolder;->getShortcutInfo(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->secondShortcut:Landroid/content/pm/ShortcutInfo;

    iget-object v1, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->secondIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->secondUser:Landroid/os/UserHandle;

    invoke-direct {p0, v1, v2}, Lcom/android/quickstep/util/SplitSelectDataHolder;->getPendingIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->secondPendingIntent:Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->secondIntent:Landroid/content/Intent;

    return-void
.end method

.method private final generateSplitLaunchData(I)Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;
    .locals 14

    new-instance v13, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;

    iget v2, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->initialTaskId:I

    iget v3, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->secondTaskId:I

    iget-object v4, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->initialPendingIntent:Landroid/app/PendingIntent;

    iget-object v5, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->secondPendingIntent:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->initialUser:Landroid/os/UserHandle;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    move v6, v0

    goto :goto_0

    :cond_0
    move v6, v1

    :goto_0
    iget-object v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->secondUser:Landroid/os/UserHandle;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    move v7, v0

    goto :goto_1

    :cond_1
    move v7, v1

    :goto_1
    iget-object v8, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->initialShortcut:Landroid/content/pm/ShortcutInfo;

    iget-object v9, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->secondShortcut:Landroid/content/pm/ShortcutInfo;

    iget-object v10, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->itemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v11, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->splitEvent:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    iget v12, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->initialStagePosition:I

    move-object v0, v13

    move v1, p1

    invoke-direct/range {v0 .. v12}, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;-><init>(IIILandroid/app/PendingIntent;Landroid/app/PendingIntent;IILandroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/StatsLogManager$EventEnum;I)V

    return-object v13
.end method

.method private final getFullscreenLaunchType()I
    .locals 2

    iget v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->initialTaskId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 p0, 0x6

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->initialShortcut:Landroid/content/pm/ShortcutInfo;

    if-eqz v0, :cond_1

    const/16 p0, 0x8

    return p0

    :cond_1
    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->initialPendingIntent:Landroid/app/PendingIntent;

    if-eqz p0, :cond_2

    const/4 p0, 0x7

    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unidentified fullscreen launch type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static synthetic getInitialStagePosition$annotations()V
    .locals 0

    return-void
.end method

.method private final getPendingIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/app/PendingIntent;
    .locals 6

    iget-object v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->initialIntent:Landroid/content/Intent;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->secondIntent:Landroid/content/Intent;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid intent to convert to PendingIntent"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->context:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v3, 0x3000000

    const/4 v4, 0x0

    move-object v2, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->context:Landroid/content/Context;

    const/4 p2, 0x0

    const/high16 v0, 0x3000000

    invoke-static {p0, p2, p1, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private final getShortcutInfo(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/ShortcutInfo;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const-string v1, "shortcut_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p2

    const-string v2, "context.createPackageCon\u2026e(), 0 /* flags */, user)"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/content/pm/ShortcutInfo$Builder;

    invoke-direct {v2, p2, v1}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Failed to create a ShortcutInfo for "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private final isInitialTaskIntentSet()Z
    .locals 2

    iget v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->initialTaskId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->initialIntent:Landroid/content/Intent;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private final isSecondTaskIntentSet()Z
    .locals 2

    iget v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->secondTaskId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->secondIntent:Landroid/content/Intent;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->secondPendingIntent:Landroid/app/PendingIntent;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private final setInitialData(ILcom/android/launcher3/logging/StatsLogManager$EventEnum;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 0

    iput-object p3, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->itemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iput p1, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->initialStagePosition:I

    iput-object p2, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->splitEvent:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "writer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, " SplitSelectDataHolder"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->initialStagePosition:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tinitialStagePosition= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->initialTaskId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tinitialTaskId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->secondTaskId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tsecondTaskId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->initialUser:Landroid/os/UserHandle;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tinitialUser= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->secondUser:Landroid/os/UserHandle;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tsecondUser= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->initialIntent:Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tinitialIntent= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->secondIntent:Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tsecondIntent= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->secondPendingIntent:Landroid/app/PendingIntent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tsecondPendingIntent= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->itemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\titemInfo= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->splitEvent:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tsplitEvent= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->initialShortcut:Landroid/content/pm/ShortcutInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tinitialShortcut= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->secondShortcut:Landroid/content/pm/ShortcutInfo;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\tsecondShortcut= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final getFullscreenLaunchData()Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;
    .locals 1

    invoke-direct {p0}, Lcom/android/quickstep/util/SplitSelectDataHolder;->convertIntentsToFinalTypes()V

    invoke-direct {p0}, Lcom/android/quickstep/util/SplitSelectDataHolder;->getFullscreenLaunchType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/quickstep/util/SplitSelectDataHolder;->generateSplitLaunchData(I)Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;

    move-result-object p0

    return-object p0
.end method

.method public final getInitialStagePosition()I
    .locals 0

    iget p0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->initialStagePosition:I

    return p0
.end method

.method public final getInitialTaskId()I
    .locals 0

    iget p0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->initialTaskId:I

    return p0
.end method

.method public final getItemInfo()Lcom/android/launcher3/model/data/ItemInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->itemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    return-object p0
.end method

.method public final getSecondTaskId()I
    .locals 0

    iget p0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->secondTaskId:I

    return p0
.end method

.method public final getSplitEvent()Lcom/android/launcher3/logging/StatsLogManager$EventEnum;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->splitEvent:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    return-object p0
.end method

.method public final getSplitLaunchData()Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;
    .locals 4

    invoke-direct {p0}, Lcom/android/quickstep/util/SplitSelectDataHolder;->convertIntentsToFinalTypes()V

    invoke-virtual {p0}, Lcom/android/quickstep/util/SplitSelectDataHolder;->getSplitLaunchType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_2

    :cond_0
    iget v2, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->initialStagePosition:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    move v2, v1

    :goto_1
    iput v2, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->initialStagePosition:I

    :goto_2
    invoke-direct {p0, v0}, Lcom/android/quickstep/util/SplitSelectDataHolder;->generateSplitLaunchData(I)Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;

    move-result-object p0

    return-object p0
.end method

.method public final getSplitLaunchType()I
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->initialIntent:Landroid/content/Intent;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->secondIntent:Landroid/content/Intent;

    if-nez v0, :cond_6

    iget v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->initialTaskId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->secondTaskId:I

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->secondShortcut:Landroid/content/pm/ShortcutInfo;

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->secondPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    iget v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->secondTaskId:I

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->initialShortcut:Landroid/content/pm/ShortcutInfo;

    if-eqz v0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    iget-object v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->initialPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_4

    const/4 p0, 0x3

    return p0

    :cond_4
    iget-object v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->initialPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->secondPendingIntent:Landroid/app/PendingIntent;

    if-eqz p0, :cond_5

    const/4 p0, 0x5

    return p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unidentified split launch type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Intents need to be converted"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public final isBothSplitAppsConfirmed()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/quickstep/util/SplitSelectDataHolder;->isInitialTaskIntentSet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/quickstep/util/SplitSelectDataHolder;->isSecondTaskIntentSet()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSplitSelectActive()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/quickstep/util/SplitSelectDataHolder;->isInitialTaskIntentSet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/quickstep/util/SplitSelectDataHolder;->isSecondTaskIntentSet()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final resetState()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->initialStagePosition:I

    iput v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->initialTaskId:I

    iput v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->secondTaskId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->initialUser:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->secondUser:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->initialIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->secondIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->secondPendingIntent:Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->itemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iput-object v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->splitEvent:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    iput-object v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->initialShortcut:Landroid/content/pm/ShortcutInfo;

    iput-object v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->secondShortcut:Landroid/content/pm/ShortcutInfo;

    return-void
.end method

.method public final setInitialTaskSelect(Landroid/app/ActivityManager$RunningTaskInfo;ILcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V
    .locals 1

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iput p1, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->initialTaskId:I

    .line 6
    invoke-direct {p0, p2, p4, p3}, Lcom/android/quickstep/util/SplitSelectDataHolder;->setInitialData(ILcom/android/launcher3/logging/StatsLogManager$EventEnum;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public final setInitialTaskSelect(Landroid/content/Intent;ILcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/StatsLogManager$EventEnum;I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p5, v0, :cond_0

    .line 1
    iput p5, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->initialTaskId:I

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->initialIntent:Landroid/content/Intent;

    .line 3
    invoke-static {p3}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    iget-object p1, p3, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iput-object p1, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->initialUser:Landroid/os/UserHandle;

    .line 4
    :goto_0
    invoke-direct {p0, p2, p4, p3}, Lcom/android/quickstep/util/SplitSelectDataHolder;->setInitialData(ILcom/android/launcher3/logging/StatsLogManager$EventEnum;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public final setSecondTask(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->secondTaskId:I

    return-void
.end method

.method public final setSecondTask(Landroid/app/PendingIntent;)V
    .locals 1

    const-string v0, "pendingIntent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->secondPendingIntent:Landroid/app/PendingIntent;

    .line 5
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->secondUser:Landroid/os/UserHandle;

    return-void
.end method

.method public final setSecondTask(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "user"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->secondIntent:Landroid/content/Intent;

    .line 3
    iput-object p2, p0, Lcom/android/quickstep/util/SplitSelectDataHolder;->secondUser:Landroid/os/UserHandle;

    return-void
.end method
