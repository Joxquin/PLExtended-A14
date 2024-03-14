.class public final LY1/m;
.super Lcom/google/protobuf/J;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# static fields
.field public static final BACKGROUND_HINT_COLOR_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:LY1/m;

.field public static final FIRST_ICON_ROW_BOUNDS_FIELD_NUMBER:I = 0x4

.field public static final FIRST_ROW_ICONS_FIELD_NUMBER:I = 0x6

.field public static final HAS_DOODLE_FIELD_NUMBER:I = 0x10

.field public static final ICON_TEMPLATE_ID_FIELD_NUMBER:I = 0x2

.field public static final IS_BACKGROUND_HINT_DARK_FIELD_NUMBER:I = 0xf

.field public static final LONG_CLICK_PENDING_INTENT_ID_FIELD_NUMBER:I = 0x3

.field public static final MAX_ICONS_PER_ROW_FIELD_NUMBER:I = 0x5

.field public static final NUM_DOODLE_LOOPS_FIELD_NUMBER:I = 0x12

.field private static volatile PARSER:Lcom/google/protobuf/x0; = null

.field public static final PREVIEW_BITMAP_BOUNDS_FIELD_NUMBER:I = 0xc

.field public static final PREVIEW_BITMAP_ID_FIELD_NUMBER:I = 0xb

.field public static final SEARCH_BOX_BOUNDS_FIELD_NUMBER:I = 0x7

.field public static final SEARCH_BOX_G_RES_ID_FIELD_NUMBER:I = 0x9

.field public static final SEARCH_BOX_MIC_RES_ID_FIELD_NUMBER:I = 0xa

.field public static final SEARCH_BOX_TEMPLATE_ID_FIELD_NUMBER:I = 0x8

.field public static final SECOND_ICON_ROW_BOUNDS_FIELD_NUMBER:I = 0xe

.field public static final SOURCE_FIELD_NUMBER:I = 0x13

.field public static final TAP_TARGET_FIELD_NUMBER:I = 0x11

.field public static final TRANSITION_FROM_ALL_APPS_FIELD_NUMBER:I = 0xd


# instance fields
.field private backgroundHintColor_:I

.field private bitField0_:I

.field private firstIconRowBounds_:LY1/i;

.field private firstRowIcons_:Lcom/google/protobuf/S;

.field private hasDoodle_:Z

.field private iconTemplateId_:Ljava/lang/String;

.field private isBackgroundHintDark_:Z

.field private longClickPendingIntentId_:Ljava/lang/String;

.field private maxIconsPerRow_:I

.field private numDoodleLoops_:I

.field private previewBitmapBounds_:LY1/i;

.field private previewBitmapId_:Ljava/lang/String;

.field private searchBoxBounds_:LY1/i;

.field private searchBoxGResId_:I

.field private searchBoxMicResId_:I

.field private searchBoxTemplateId_:Ljava/lang/String;

.field private secondIconRowBounds_:LY1/i;

.field private source_:I

.field private tapTarget_:I

.field private transitionFromAllApps_:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LY1/m;

    invoke-direct {v0}, LY1/m;-><init>()V

    sput-object v0, LY1/m;->DEFAULT_INSTANCE:LY1/m;

    const-class v1, LY1/m;

    invoke-static {v1, v0}, Lcom/google/protobuf/J;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/J;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/protobuf/J;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LY1/m;->iconTemplateId_:Ljava/lang/String;

    iput-object v0, p0, LY1/m;->longClickPendingIntentId_:Ljava/lang/String;

    sget-object v1, Lcom/google/protobuf/A0;->g:Lcom/google/protobuf/A0;

    iput-object v1, p0, LY1/m;->firstRowIcons_:Lcom/google/protobuf/S;

    iput-object v0, p0, LY1/m;->searchBoxTemplateId_:Ljava/lang/String;

    iput-object v0, p0, LY1/m;->previewBitmapId_:Ljava/lang/String;

    return-void
.end method

.method public static B()LY1/l;
    .locals 1

    sget-object v0, LY1/m;->DEFAULT_INSTANCE:LY1/m;

    invoke-virtual {v0}, Lcom/google/protobuf/J;->createBuilder()Lcom/google/protobuf/E;

    move-result-object v0

    check-cast v0, LY1/l;

    return-object v0
.end method

.method public static a(LY1/m;LY1/k;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LY1/m;->firstRowIcons_:Lcom/google/protobuf/S;

    invoke-interface {v0}, Lcom/google/protobuf/S;->g()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/protobuf/J;->mutableCopy(Lcom/google/protobuf/S;)Lcom/google/protobuf/S;

    move-result-object v0

    iput-object v0, p0, LY1/m;->firstRowIcons_:Lcom/google/protobuf/S;

    :cond_0
    iget-object p0, p0, LY1/m;->firstRowIcons_:Lcom/google/protobuf/S;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static b(LY1/m;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/google/protobuf/A0;->g:Lcom/google/protobuf/A0;

    iput-object v0, p0, LY1/m;->firstRowIcons_:Lcom/google/protobuf/S;

    return-void
.end method

.method public static c(LY1/m;I)V
    .locals 1

    iget v0, p0, LY1/m;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, LY1/m;->bitField0_:I

    iput p1, p0, LY1/m;->backgroundHintColor_:I

    return-void
.end method

.method public static d(LY1/m;LY1/i;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LY1/m;->firstIconRowBounds_:LY1/i;

    iget p1, p0, LY1/m;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, LY1/m;->bitField0_:I

    return-void
.end method

.method public static e(LY1/m;Z)V
    .locals 1

    iget v0, p0, LY1/m;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, LY1/m;->bitField0_:I

    iput-boolean p1, p0, LY1/m;->hasDoodle_:Z

    return-void
.end method

.method public static f(LY1/m;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, LY1/m;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, LY1/m;->bitField0_:I

    const-string v0, "icon_view_template"

    iput-object v0, p0, LY1/m;->iconTemplateId_:Ljava/lang/String;

    return-void
.end method

.method public static g(LY1/m;Z)V
    .locals 1

    iget v0, p0, LY1/m;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, LY1/m;->bitField0_:I

    iput-boolean p1, p0, LY1/m;->isBackgroundHintDark_:Z

    return-void
.end method

.method public static h(LY1/m;I)V
    .locals 1

    iget v0, p0, LY1/m;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, LY1/m;->bitField0_:I

    iput p1, p0, LY1/m;->maxIconsPerRow_:I

    return-void
.end method

.method public static i(LY1/m;I)V
    .locals 2

    iget v0, p0, LY1/m;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, LY1/m;->bitField0_:I

    iput p1, p0, LY1/m;->numDoodleLoops_:I

    return-void
.end method

.method public static j(LY1/m;LY1/i;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LY1/m;->previewBitmapBounds_:LY1/i;

    iget p1, p0, LY1/m;->bitField0_:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, LY1/m;->bitField0_:I

    return-void
.end method

.method public static k(LY1/m;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, LY1/m;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, LY1/m;->bitField0_:I

    const-string v0, "preview_bitmap"

    iput-object v0, p0, LY1/m;->previewBitmapId_:Ljava/lang/String;

    return-void
.end method

.method public static l(LY1/m;LY1/i;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LY1/m;->searchBoxBounds_:LY1/i;

    iget p1, p0, LY1/m;->bitField0_:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, LY1/m;->bitField0_:I

    return-void
.end method

.method public static m(LY1/m;)V
    .locals 1

    iget v0, p0, LY1/m;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, LY1/m;->bitField0_:I

    const v0, 0x7f0a0185

    iput v0, p0, LY1/m;->searchBoxGResId_:I

    return-void
.end method

.method public static n(LY1/m;I)V
    .locals 1

    iget v0, p0, LY1/m;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, LY1/m;->bitField0_:I

    iput p1, p0, LY1/m;->searchBoxMicResId_:I

    return-void
.end method

.method public static o(LY1/m;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, LY1/m;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, LY1/m;->bitField0_:I

    const-string v0, "search_box_template"

    iput-object v0, p0, LY1/m;->searchBoxTemplateId_:Ljava/lang/String;

    return-void
.end method

.method public static p(LY1/m;LY1/i;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LY1/m;->secondIconRowBounds_:LY1/i;

    iget p1, p0, LY1/m;->bitField0_:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, LY1/m;->bitField0_:I

    return-void
.end method

.method public static q(LY1/m;Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;->getNumber()I

    move-result p1

    iput p1, p0, LY1/m;->source_:I

    iget p1, p0, LY1/m;->bitField0_:I

    const/high16 v0, 0x20000

    or-int/2addr p1, v0

    iput p1, p0, LY1/m;->bitField0_:I

    return-void
.end method

.method public static r(LY1/m;Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;->getNumber()I

    move-result p1

    iput p1, p0, LY1/m;->tapTarget_:I

    iget p1, p0, LY1/m;->bitField0_:I

    const v0, 0x8000

    or-int/2addr p1, v0

    iput p1, p0, LY1/m;->bitField0_:I

    return-void
.end method

.method public static s(LY1/m;Z)V
    .locals 1

    iget v0, p0, LY1/m;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, LY1/m;->bitField0_:I

    iput-boolean p1, p0, LY1/m;->transitionFromAllApps_:Z

    return-void
.end method

.method public static bridge synthetic t()LY1/m;
    .locals 1

    sget-object v0, LY1/m;->DEFAULT_INSTANCE:LY1/m;

    return-object v0
.end method


# virtual methods
.method public final A()Z
    .locals 0

    iget p0, p0, LY1/m;->bitField0_:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;
    .locals 24

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    sget-object v0, LY1/m;->PARSER:Lcom/google/protobuf/x0;

    if-nez v0, :cond_1

    const-class v1, LY1/m;

    monitor-enter v1

    :try_start_0
    sget-object v0, LY1/m;->PARSER:Lcom/google/protobuf/x0;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/F;

    sget-object v2, LY1/m;->DEFAULT_INSTANCE:LY1/m;

    invoke-direct {v0, v2}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/J;)V

    sput-object v0, LY1/m;->PARSER:Lcom/google/protobuf/x0;

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
    sget-object v0, LY1/m;->DEFAULT_INSTANCE:LY1/m;

    return-object v0

    :pswitch_2
    new-instance v0, LY1/l;

    invoke-direct {v0}, LY1/l;-><init>()V

    return-object v0

    :pswitch_3
    new-instance v0, LY1/m;

    invoke-direct {v0}, LY1/m;-><init>()V

    return-object v0

    :pswitch_4
    const-string v1, "bitField0_"

    const-string v2, "backgroundHintColor_"

    const-string v3, "iconTemplateId_"

    const-string v4, "longClickPendingIntentId_"

    const-string v5, "firstIconRowBounds_"

    const-string v6, "maxIconsPerRow_"

    const-string v7, "firstRowIcons_"

    const-class v8, LY1/k;

    const-string v9, "searchBoxBounds_"

    const-string v10, "searchBoxTemplateId_"

    const-string v11, "searchBoxGResId_"

    const-string v12, "searchBoxMicResId_"

    const-string v13, "previewBitmapId_"

    const-string v14, "previewBitmapBounds_"

    const-string v15, "transitionFromAllApps_"

    const-string v16, "secondIconRowBounds_"

    const-string v17, "isBackgroundHintDark_"

    const-string v18, "hasDoodle_"

    const-string v19, "tapTarget_"

    sget-object v20, LY1/q;->a:LY1/q;

    const-string v21, "numDoodleLoops_"

    const-string v22, "source_"

    sget-object v23, LY1/p;->a:LY1/p;

    filled-new-array/range {v1 .. v23}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "\u0001\u0013\u0000\u0001\u0001\u0013\u0013\u0000\u0001\u0000\u0001\u1004\u0000\u0002\u1008\u0002\u0003\u1008\u0003\u0004\u1009\u0004\u0005\u1004\u0006\u0006\u001b\u0007\u1009\u0007\u0008\u1008\u0008\t\u1004\t\n\u1004\n\u000b\u1008\u000b\u000c\u1009\u000c\r\u1007\r\u000e\u1009\u0005\u000f\u1007\u0001\u0010\u1007\u000e\u0011\u100c\u000f\u0012\u1004\u0010\u0013\u100c\u0011"

    sget-object v2, LY1/m;->DEFAULT_INSTANCE:LY1/m;

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

.method public final u()LY1/i;
    .locals 0

    iget-object p0, p0, LY1/m;->firstIconRowBounds_:LY1/i;

    if-nez p0, :cond_0

    invoke-static {}, LY1/i;->f()LY1/i;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final v()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LY1/m;->iconTemplateId_:Ljava/lang/String;

    return-object p0
.end method

.method public final w()I
    .locals 0

    iget p0, p0, LY1/m;->maxIconsPerRow_:I

    return p0
.end method

.method public final x()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LY1/m;->previewBitmapId_:Ljava/lang/String;

    return-object p0
.end method

.method public final y()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LY1/m;->searchBoxTemplateId_:Ljava/lang/String;

    return-object p0
.end method

.method public final z()Z
    .locals 0

    iget-boolean p0, p0, LY1/m;->transitionFromAllApps_:Z

    return p0
.end method
