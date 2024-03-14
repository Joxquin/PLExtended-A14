.class public final Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;
.super Lcom/google/protobuf/J;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# static fields
.field public static final ALL_APPS_CONTAINER_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

.field public static final EXTENDED_CONTAINERS_FIELD_NUMBER:I = 0x14

.field public static final FOLDER_FIELD_NUMBER:I = 0x3

.field public static final HOTSEAT_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/x0; = null

.field public static final PREDICTED_HOTSEAT_CONTAINER_FIELD_NUMBER:I = 0xa

.field public static final PREDICTION_CONTAINER_FIELD_NUMBER:I = 0x6

.field public static final SEARCH_RESULT_CONTAINER_FIELD_NUMBER:I = 0x7

.field public static final SETTINGS_CONTAINER_FIELD_NUMBER:I = 0x9

.field public static final SHORTCUTS_CONTAINER_FIELD_NUMBER:I = 0x8

.field public static final TASK_BAR_CONTAINER_FIELD_NUMBER:I = 0xc

.field public static final TASK_SWITCHER_CONTAINER_FIELD_NUMBER:I = 0xb

.field public static final WALLPAPERS_CONTAINER_FIELD_NUMBER:I = 0xd

.field public static final WIDGETS_CONTAINER_FIELD_NUMBER:I = 0x5

.field public static final WORKSPACE_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private containerCase_:I

.field private container_:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;-><init>()V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    const-class v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-static {v1, v0}, Lcom/google/protobuf/J;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/J;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/J;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    return-void
.end method

.method public static a(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    const/4 p1, 0x4

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    return-void
.end method

.method public static b(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    const/16 p1, 0x14

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    return-void
.end method

.method public static c(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    const/4 p1, 0x3

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    return-void
.end method

.method public static d(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    return-void
.end method

.method public static e(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    const/16 p1, 0xa

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    return-void
.end method

.method public static f(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    const/4 p1, 0x6

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    return-void
.end method

.method public static g(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    const/4 p1, 0x7

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    return-object v0
.end method

.method public static h(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    const/16 p1, 0x9

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    return-void
.end method

.method public static i(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    const/16 p1, 0x8

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    return-void
.end method

.method public static j(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    const/16 p1, 0xc

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    return-void
.end method

.method public static k(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    const/16 p1, 0xb

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    return-void
.end method

.method public static l(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    const/16 p1, 0xd

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    return-void
.end method

.method public static m(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    const/4 p1, 0x5

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    return-void
.end method

.method public static n(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    return-void
.end method

.method public static newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/J;->createBuilder()Lcom/google/protobuf/E;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    return-object v0
.end method

.method public static bridge synthetic o()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;
    .locals 18

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->PARSER:Lcom/google/protobuf/x0;

    if-nez v0, :cond_1

    const-class v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->PARSER:Lcom/google/protobuf/x0;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/F;

    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-direct {v0, v2}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/J;)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->PARSER:Lcom/google/protobuf/x0;

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    return-object v0

    :pswitch_2
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;-><init>(I)V

    return-object v0

    :pswitch_3
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;-><init>()V

    return-object v0

    :pswitch_4
    const-string v1, "container_"

    const-string v2, "containerCase_"

    const-string v3, "bitField0_"

    const-class v4, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    const-class v5, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    const-class v6, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    const-class v7, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    const-class v8, Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;

    const-class v9, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    const-class v10, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    const-class v11, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    const-class v12, Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer;

    const-class v13, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    const-class v14, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    const-class v15, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    const-class v16, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    const-class v17, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    filled-new-array/range {v1 .. v17}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "\u0001\u000e\u0001\u0001\u0001\u0014\u000e\u0000\u0000\u0000\u0001\u103c\u0000\u0002\u103c\u0000\u0003\u103c\u0000\u0004\u103c\u0000\u0005\u103c\u0000\u0006\u103c\u0000\u0007\u103c\u0000\u0008\u103c\u0000\t\u103c\u0000\n\u103c\u0000\u000b\u103c\u0000\u000c\u103c\u0000\r\u103c\u0000\u0014\u103c\u0000"

    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    new-instance v3, Lcom/google/protobuf/B0;

    invoke-direct {v3, v2, v1, v0}, Lcom/google/protobuf/B0;-><init>(Lcom/google/protobuf/J;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    :pswitch_5
    const/4 v0, 0x0

    return-object v0

    :pswitch_6
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getAllAppsContainer()Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;
    .locals 2

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    move-result-object p0

    return-object p0
.end method

.method public final getContainerCase()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;
    .locals 1

    iget p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v0, 0x14

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->WALLPAPERS_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    goto :goto_0

    :pswitch_1
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->TASK_BAR_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    goto :goto_0

    :pswitch_2
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->TASK_SWITCHER_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    goto :goto_0

    :pswitch_3
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->PREDICTED_HOTSEAT_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    goto :goto_0

    :pswitch_4
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->SETTINGS_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    goto :goto_0

    :pswitch_5
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->SHORTCUTS_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    goto :goto_0

    :pswitch_6
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->SEARCH_RESULT_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    goto :goto_0

    :pswitch_7
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->PREDICTION_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    goto :goto_0

    :pswitch_8
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->WIDGETS_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    goto :goto_0

    :pswitch_9
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->ALL_APPS_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    goto :goto_0

    :pswitch_a
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->FOLDER:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    goto :goto_0

    :pswitch_b
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->HOTSEAT:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    goto :goto_0

    :pswitch_c
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->WORKSPACE:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    goto :goto_0

    :pswitch_d
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->CONTAINER_NOT_SET:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->EXTENDED_CONTAINERS:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getExtendedContainers()Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;
    .locals 2

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    move-result-object p0

    return-object p0
.end method

.method public final getFolder()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;
    .locals 2

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    move-result-object p0

    return-object p0
.end method

.method public final getHotseat()Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;
    .locals 2

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    move-result-object p0

    return-object p0
.end method

.method public final getPredictedHotseatContainer()Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;
    .locals 2

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    move-result-object p0

    return-object p0
.end method

.method public final getPredictionContainer()Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;
    .locals 2

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    move-result-object p0

    return-object p0
.end method

.method public final getSearchResultContainer()Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;
    .locals 2

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    move-result-object p0

    return-object p0
.end method

.method public final getTaskBarContainer()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;
    .locals 2

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    move-result-object p0

    return-object p0
.end method

.method public final getWorkspace()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;
    .locals 2

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    move-result-object p0

    return-object p0
.end method

.method public final hasAllAppsContainer()Z
    .locals 1

    iget p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hasFolder()Z
    .locals 1

    iget p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hasHotseat()Z
    .locals 1

    iget p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hasPredictedHotseatContainer()Z
    .locals 1

    iget p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hasPredictionContainer()Z
    .locals 1

    iget p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
