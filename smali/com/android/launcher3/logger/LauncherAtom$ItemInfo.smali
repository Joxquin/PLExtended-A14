.class public final Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;
.super Lcom/google/protobuf/J;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# static fields
.field public static final APPLICATION_FIELD_NUMBER:I = 0x1

.field public static final CONTAINER_INFO_FIELD_NUMBER:I = 0x7

.field private static final DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

.field public static final FOLDER_ICON_FIELD_NUMBER:I = 0x9

.field public static final IS_KIDS_MODE_FIELD_NUMBER:I = 0xd

.field public static final IS_WORK_FIELD_NUMBER:I = 0x6

.field public static final ITEM_ATTRIBUTES_FIELD_NUMBER:I = 0xc

.field private static volatile PARSER:Lcom/google/protobuf/x0; = null

.field public static final RANK_FIELD_NUMBER:I = 0x5

.field public static final SEARCH_ACTION_ITEM_FIELD_NUMBER:I = 0xb

.field public static final SHORTCUT_FIELD_NUMBER:I = 0x3

.field public static final SLICE_FIELD_NUMBER:I = 0xa

.field public static final TASK_FIELD_NUMBER:I = 0x2

.field public static final WIDGET_FIELD_NUMBER:I = 0x4

.field private static final itemAttributes_converter_:Lcom/google/protobuf/O;


# instance fields
.field private bitField0_:I

.field private containerInfo_:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

.field private isKidsMode_:Z

.field private isWork_:Z

.field private itemAttributes_:Lcom/google/protobuf/N;

.field private itemCase_:I

.field private item_:Ljava/lang/Object;

.field private rank_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ToState$1;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$ToState$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemAttributes_converter_:Lcom/google/protobuf/O;

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;-><init>()V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    const-class v1, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v1, v0}, Lcom/google/protobuf/J;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/J;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/J;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    sget-object v0, Lcom/google/protobuf/K;->g:Lcom/google/protobuf/K;

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemAttributes_:Lcom/google/protobuf/N;

    return-void
.end method

.method public static a(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Ljava/lang/Iterable;)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemAttributes_:Lcom/google/protobuf/N;

    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/c;

    iget-boolean v1, v1, Lcom/google/protobuf/c;->d:Z

    if-nez v1, :cond_2

    check-cast v0, Lcom/google/protobuf/K;

    iget v1, v0, Lcom/google/protobuf/K;->f:I

    if-nez v1, :cond_0

    const/16 v2, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v2, v1, 0x2

    :goto_0
    if-lt v2, v1, :cond_1

    new-instance v1, Lcom/google/protobuf/K;

    iget-object v3, v0, Lcom/google/protobuf/K;->e:[I

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iget v0, v0, Lcom/google/protobuf/K;->f:I

    invoke-direct {v1, v2, v0}, Lcom/google/protobuf/K;-><init>([II)V

    iput-object v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemAttributes_:Lcom/google/protobuf/N;

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Attribute;

    iget-object v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemAttributes_:Lcom/google/protobuf/N;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Attribute;->getNumber()I

    move-result v0

    check-cast v1, Lcom/google/protobuf/K;

    invoke-virtual {v1, v0}, Lcom/google/protobuf/K;->i(I)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public static b(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Attribute;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemAttributes_:Lcom/google/protobuf/N;

    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/c;

    iget-boolean v1, v1, Lcom/google/protobuf/c;->d:Z

    if-nez v1, :cond_2

    check-cast v0, Lcom/google/protobuf/K;

    iget v1, v0, Lcom/google/protobuf/K;->f:I

    if-nez v1, :cond_0

    const/16 v2, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v2, v1, 0x2

    :goto_0
    if-lt v2, v1, :cond_1

    new-instance v1, Lcom/google/protobuf/K;

    iget-object v3, v0, Lcom/google/protobuf/K;->e:[I

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iget v0, v0, Lcom/google/protobuf/K;->f:I

    invoke-direct {v1, v2, v0}, Lcom/google/protobuf/K;-><init>([II)V

    iput-object v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemAttributes_:Lcom/google/protobuf/N;

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemAttributes_:Lcom/google/protobuf/N;

    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$Attribute;->getNumber()I

    move-result p1

    check-cast p0, Lcom/google/protobuf/K;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/K;->i(I)V

    return-void
.end method

.method public static c(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Application;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    return-void
.end method

.method public static d(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->containerInfo_:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    iget p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    return-void
.end method

.method public static e(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    const/16 p1, 0x9

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    return-void
.end method

.method public static f(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Z)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    iput-boolean p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->isKidsMode_:Z

    return-void
.end method

.method public static g(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Z)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    iput-boolean p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->isWork_:Z

    return-void
.end method

.method public static h(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;I)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->rank_:I

    return-void
.end method

.method public static i(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    const/16 p1, 0xb

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    return-void
.end method

.method public static j(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Shortcut;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    const/4 p1, 0x3

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    return-void
.end method

.method public static k(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Slice;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    const/16 p1, 0xa

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    return-void
.end method

.method public static l(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Task;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    return-void
.end method

.method public static m(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Widget;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    const/4 p1, 0x4

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    return-void
.end method

.method public static bridge synthetic n()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/J;->createBuilder()Lcom/google/protobuf/E;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;
    .locals 17

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->PARSER:Lcom/google/protobuf/x0;

    if-nez v0, :cond_1

    const-class v1, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->PARSER:Lcom/google/protobuf/x0;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/F;

    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-direct {v0, v2}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/J;)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->PARSER:Lcom/google/protobuf/x0;

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
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    return-object v0

    :pswitch_2
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;-><init>(I)V

    return-object v0

    :pswitch_3
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;-><init>()V

    return-object v0

    :pswitch_4
    const-string v1, "item_"

    const-string v2, "itemCase_"

    const-string v3, "bitField0_"

    const-class v4, Lcom/android/launcher3/logger/LauncherAtom$Application;

    const-class v5, Lcom/android/launcher3/logger/LauncherAtom$Task;

    const-class v6, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    const-class v7, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    const-string v8, "rank_"

    const-string v9, "isWork_"

    const-string v10, "containerInfo_"

    const-class v11, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    const-class v12, Lcom/android/launcher3/logger/LauncherAtom$Slice;

    const-class v13, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    const-string v14, "itemAttributes_"

    sget-object v15, Lcom/android/launcher3/logger/LauncherAtom$Attribute$AttributeVerifier;->INSTANCE:Lcom/google/protobuf/M;

    const-string v16, "isKidsMode_"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "\u0001\u000c\u0001\u0001\u0001\r\u000c\u0000\u0001\u0000\u0001\u103c\u0000\u0002\u103c\u0000\u0003\u103c\u0000\u0004\u103c\u0000\u0005\u1004\u0007\u0006\u1007\u0008\u0007\u1009\t\t\u103c\u0000\n\u103c\u0000\u000b\u103c\u0000\u000c\u001e\r\u1007\n"

    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

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

.method public final getApplication()Lcom/android/launcher3/logger/LauncherAtom$Application;
    .locals 2

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$Application;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Application;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$Application;

    move-result-object p0

    return-object p0
.end method

.method public final getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->containerInfo_:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final getFolderIcon()Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;
    .locals 2

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    move-result-object p0

    return-object p0
.end method

.method public final getIsKidsMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->isKidsMode_:Z

    return p0
.end method

.method public final getIsWork()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->isWork_:Z

    return p0
.end method

.method public final getItemAttributesList()Lcom/google/protobuf/P;
    .locals 2

    new-instance v0, Lcom/google/protobuf/P;

    iget-object p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemAttributes_:Lcom/google/protobuf/N;

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemAttributes_converter_:Lcom/google/protobuf/O;

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/P;-><init>(Lcom/google/protobuf/N;Lcom/google/protobuf/O;)V

    return-object v0
.end method

.method public final getItemCase()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;
    .locals 1

    iget p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->SEARCH_ACTION_ITEM:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    goto :goto_0

    :pswitch_1
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->SLICE:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    goto :goto_0

    :pswitch_2
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->FOLDER_ICON:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->WIDGET:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->SHORTCUT:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->TASK:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->APPLICATION:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->ITEM_NOT_SET:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getRank()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->rank_:I

    return p0
.end method

.method public final getSearchActionItem()Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;
    .locals 2

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    move-result-object p0

    return-object p0
.end method

.method public final getShortcut()Lcom/android/launcher3/logger/LauncherAtom$Shortcut;
    .locals 2

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    move-result-object p0

    return-object p0
.end method

.method public final getSlice()Lcom/android/launcher3/logger/LauncherAtom$Slice;
    .locals 2

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$Slice;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Slice;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$Slice;

    move-result-object p0

    return-object p0
.end method

.method public final getTask()Lcom/android/launcher3/logger/LauncherAtom$Task;
    .locals 2

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Task;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$Task;

    move-result-object p0

    return-object p0
.end method

.method public final getWidget()Lcom/android/launcher3/logger/LauncherAtom$Widget;
    .locals 2

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$Widget;

    move-result-object p0

    return-object p0
.end method

.method public final hasContainerInfo()Z
    .locals 0

    iget p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    and-int/lit16 p0, p0, 0x200

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hasTask()Z
    .locals 1

    iget p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
