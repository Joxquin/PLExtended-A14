.class public final LB0/f;
.super Lcom/google/protobuf/J;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# static fields
.field public static final ALPHA_FIELD_NUMBER:I = 0xf

.field public static final CHILDREN_FIELD_NUMBER:I = 0x3

.field public static final CLASSNAME_INDEX_FIELD_NUMBER:I = 0x1

.field public static final CLIPCHILDREN_FIELD_NUMBER:I = 0x11

.field private static final DEFAULT_INSTANCE:LB0/f;

.field public static final ELEVATION_FIELD_NUMBER:I = 0x13

.field public static final HASHCODE_FIELD_NUMBER:I = 0x2

.field public static final HEIGHT_FIELD_NUMBER:I = 0x8

.field public static final ID_FIELD_NUMBER:I = 0x4

.field public static final LEFT_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/x0; = null

.field public static final SCALEX_FIELD_NUMBER:I = 0xd

.field public static final SCALEY_FIELD_NUMBER:I = 0xe

.field public static final SCROLLX_FIELD_NUMBER:I = 0x9

.field public static final SCROLLY_FIELD_NUMBER:I = 0xa

.field public static final TOP_FIELD_NUMBER:I = 0x6

.field public static final TRANSLATIONX_FIELD_NUMBER:I = 0xb

.field public static final TRANSLATIONY_FIELD_NUMBER:I = 0xc

.field public static final VISIBILITY_FIELD_NUMBER:I = 0x12

.field public static final WIDTH_FIELD_NUMBER:I = 0x7

.field public static final WILLNOTDRAW_FIELD_NUMBER:I = 0x10


# instance fields
.field private alpha_:F

.field private bitField0_:I

.field private children_:Lcom/google/protobuf/S;

.field private classnameIndex_:I

.field private clipChildren_:Z

.field private elevation_:F

.field private hashcode_:I

.field private height_:I

.field private id_:Ljava/lang/String;

.field private left_:I

.field private scaleX_:F

.field private scaleY_:F

.field private scrollX_:I

.field private scrollY_:I

.field private top_:I

.field private translationX_:F

.field private translationY_:F

.field private visibility_:I

.field private width_:I

.field private willNotDraw_:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LB0/f;

    invoke-direct {v0}, LB0/f;-><init>()V

    sput-object v0, LB0/f;->DEFAULT_INSTANCE:LB0/f;

    const-class v1, LB0/f;

    invoke-static {v1, v0}, Lcom/google/protobuf/J;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/J;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/J;-><init>()V

    sget-object v0, Lcom/google/protobuf/A0;->g:Lcom/google/protobuf/A0;

    iput-object v0, p0, LB0/f;->children_:Lcom/google/protobuf/S;

    const-string v0, ""

    iput-object v0, p0, LB0/f;->id_:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, LB0/f;->scaleX_:F

    iput v0, p0, LB0/f;->scaleY_:F

    iput v0, p0, LB0/f;->alpha_:F

    return-void
.end method

.method public static synthetic a()LB0/f;
    .locals 1

    sget-object v0, LB0/f;->DEFAULT_INSTANCE:LB0/f;

    return-object v0
.end method

.method public static b(LB0/f;I)V
    .locals 1

    iget v0, p0, LB0/f;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, LB0/f;->bitField0_:I

    iput p1, p0, LB0/f;->classnameIndex_:I

    return-void
.end method

.method public static c(LB0/f;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, LB0/f;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, LB0/f;->bitField0_:I

    iput-object p1, p0, LB0/f;->id_:Ljava/lang/String;

    return-void
.end method

.method public static d(LB0/f;I)V
    .locals 1

    iget v0, p0, LB0/f;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, LB0/f;->bitField0_:I

    iput p1, p0, LB0/f;->left_:I

    return-void
.end method

.method public static e(LB0/f;I)V
    .locals 1

    iget v0, p0, LB0/f;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, LB0/f;->bitField0_:I

    iput p1, p0, LB0/f;->top_:I

    return-void
.end method

.method public static f(LB0/f;I)V
    .locals 1

    iget v0, p0, LB0/f;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, LB0/f;->bitField0_:I

    iput p1, p0, LB0/f;->width_:I

    return-void
.end method

.method public static g(LB0/f;I)V
    .locals 1

    iget v0, p0, LB0/f;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, LB0/f;->bitField0_:I

    iput p1, p0, LB0/f;->height_:I

    return-void
.end method

.method public static h(LB0/f;I)V
    .locals 1

    iget v0, p0, LB0/f;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, LB0/f;->bitField0_:I

    iput p1, p0, LB0/f;->scrollX_:I

    return-void
.end method

.method public static i(LB0/f;I)V
    .locals 1

    iget v0, p0, LB0/f;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, LB0/f;->bitField0_:I

    iput p1, p0, LB0/f;->scrollY_:I

    return-void
.end method

.method public static j(LB0/f;F)V
    .locals 1

    iget v0, p0, LB0/f;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, LB0/f;->bitField0_:I

    iput p1, p0, LB0/f;->translationX_:F

    return-void
.end method

.method public static k(LB0/f;F)V
    .locals 1

    iget v0, p0, LB0/f;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, LB0/f;->bitField0_:I

    iput p1, p0, LB0/f;->translationY_:F

    return-void
.end method

.method public static l(LB0/f;I)V
    .locals 1

    iget v0, p0, LB0/f;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, LB0/f;->bitField0_:I

    iput p1, p0, LB0/f;->hashcode_:I

    return-void
.end method

.method public static m(LB0/f;F)V
    .locals 1

    iget v0, p0, LB0/f;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, LB0/f;->bitField0_:I

    iput p1, p0, LB0/f;->scaleX_:F

    return-void
.end method

.method public static n(LB0/f;F)V
    .locals 1

    iget v0, p0, LB0/f;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, LB0/f;->bitField0_:I

    iput p1, p0, LB0/f;->scaleY_:F

    return-void
.end method

.method public static o(LB0/f;F)V
    .locals 1

    iget v0, p0, LB0/f;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, LB0/f;->bitField0_:I

    iput p1, p0, LB0/f;->alpha_:F

    return-void
.end method

.method public static p(LB0/f;Z)V
    .locals 1

    iget v0, p0, LB0/f;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, LB0/f;->bitField0_:I

    iput-boolean p1, p0, LB0/f;->willNotDraw_:Z

    return-void
.end method

.method public static q(LB0/f;Z)V
    .locals 2

    iget v0, p0, LB0/f;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, LB0/f;->bitField0_:I

    iput-boolean p1, p0, LB0/f;->clipChildren_:Z

    return-void
.end method

.method public static r(LB0/f;I)V
    .locals 2

    iget v0, p0, LB0/f;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, LB0/f;->bitField0_:I

    iput p1, p0, LB0/f;->visibility_:I

    return-void
.end method

.method public static s(LB0/f;F)V
    .locals 2

    iget v0, p0, LB0/f;->bitField0_:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, LB0/f;->bitField0_:I

    iput p1, p0, LB0/f;->elevation_:F

    return-void
.end method

.method public static t(LB0/f;LB0/f;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LB0/f;->children_:Lcom/google/protobuf/S;

    invoke-interface {v0}, Lcom/google/protobuf/S;->g()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/protobuf/J;->mutableCopy(Lcom/google/protobuf/S;)Lcom/google/protobuf/S;

    move-result-object v0

    iput-object v0, p0, LB0/f;->children_:Lcom/google/protobuf/S;

    :cond_0
    iget-object p0, p0, LB0/f;->children_:Lcom/google/protobuf/S;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static u()LB0/e;
    .locals 1

    sget-object v0, LB0/f;->DEFAULT_INSTANCE:LB0/f;

    invoke-virtual {v0}, Lcom/google/protobuf/J;->createBuilder()Lcom/google/protobuf/E;

    move-result-object v0

    check-cast v0, LB0/e;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;
    .locals 22

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    sget-object v0, LB0/f;->PARSER:Lcom/google/protobuf/x0;

    if-nez v0, :cond_1

    const-class v1, LB0/f;

    monitor-enter v1

    :try_start_0
    sget-object v0, LB0/f;->PARSER:Lcom/google/protobuf/x0;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/F;

    sget-object v2, LB0/f;->DEFAULT_INSTANCE:LB0/f;

    invoke-direct {v0, v2}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/J;)V

    sput-object v0, LB0/f;->PARSER:Lcom/google/protobuf/x0;

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
    sget-object v0, LB0/f;->DEFAULT_INSTANCE:LB0/f;

    return-object v0

    :pswitch_2
    new-instance v0, LB0/e;

    invoke-direct {v0}, LB0/e;-><init>()V

    return-object v0

    :pswitch_3
    new-instance v0, LB0/f;

    invoke-direct {v0}, LB0/f;-><init>()V

    return-object v0

    :pswitch_4
    const-string v1, "bitField0_"

    const-string v2, "classnameIndex_"

    const-string v3, "hashcode_"

    const-string v4, "children_"

    const-class v5, LB0/f;

    const-string v6, "id_"

    const-string v7, "left_"

    const-string v8, "top_"

    const-string v9, "width_"

    const-string v10, "height_"

    const-string v11, "scrollX_"

    const-string v12, "scrollY_"

    const-string v13, "translationX_"

    const-string v14, "translationY_"

    const-string v15, "scaleX_"

    const-string v16, "scaleY_"

    const-string v17, "alpha_"

    const-string v18, "willNotDraw_"

    const-string v19, "clipChildren_"

    const-string v20, "visibility_"

    const-string v21, "elevation_"

    filled-new-array/range {v1 .. v21}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "\u0001\u0013\u0000\u0001\u0001\u0013\u0013\u0000\u0001\u0000\u0001\u1004\u0000\u0002\u1004\u0001\u0003\u001b\u0004\u1008\u0002\u0005\u1004\u0003\u0006\u1004\u0004\u0007\u1004\u0005\u0008\u1004\u0006\t\u1004\u0007\n\u1004\u0008\u000b\u1001\t\u000c\u1001\n\r\u1001\u000b\u000e\u1001\u000c\u000f\u1001\r\u0010\u1007\u000e\u0011\u1007\u000f\u0012\u1004\u0010\u0013\u1001\u0011"

    sget-object v2, LB0/f;->DEFAULT_INSTANCE:LB0/f;

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
