.class public final LY1/i;
.super Lcom/google/protobuf/J;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# static fields
.field private static final DEFAULT_INSTANCE:LY1/i;

.field public static final HEIGHT_FIELD_NUMBER:I = 0x4

.field public static final LEFT_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/x0; = null

.field public static final TOP_FIELD_NUMBER:I = 0x2

.field public static final WIDTH_FIELD_NUMBER:I = 0x3


# instance fields
.field private bitField0_:I

.field private height_:I

.field private left_:I

.field private top_:I

.field private width_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LY1/i;

    invoke-direct {v0}, LY1/i;-><init>()V

    sput-object v0, LY1/i;->DEFAULT_INSTANCE:LY1/i;

    const-class v1, LY1/i;

    invoke-static {v1, v0}, Lcom/google/protobuf/J;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/J;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/J;-><init>()V

    return-void
.end method

.method public static a(LY1/i;I)V
    .locals 1

    iget v0, p0, LY1/i;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, LY1/i;->bitField0_:I

    iput p1, p0, LY1/i;->height_:I

    return-void
.end method

.method public static b(LY1/i;I)V
    .locals 1

    iget v0, p0, LY1/i;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, LY1/i;->bitField0_:I

    iput p1, p0, LY1/i;->left_:I

    return-void
.end method

.method public static c(LY1/i;I)V
    .locals 1

    iget v0, p0, LY1/i;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, LY1/i;->bitField0_:I

    iput p1, p0, LY1/i;->top_:I

    return-void
.end method

.method public static d(LY1/i;I)V
    .locals 1

    iget v0, p0, LY1/i;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, LY1/i;->bitField0_:I

    iput p1, p0, LY1/i;->width_:I

    return-void
.end method

.method public static bridge synthetic e()LY1/i;
    .locals 1

    sget-object v0, LY1/i;->DEFAULT_INSTANCE:LY1/i;

    return-object v0
.end method

.method public static f()LY1/i;
    .locals 1

    sget-object v0, LY1/i;->DEFAULT_INSTANCE:LY1/i;

    return-object v0
.end method

.method public static k()LY1/h;
    .locals 1

    sget-object v0, LY1/i;->DEFAULT_INSTANCE:LY1/i;

    invoke-virtual {v0}, Lcom/google/protobuf/J;->createBuilder()Lcom/google/protobuf/E;

    move-result-object v0

    check-cast v0, LY1/h;

    return-object v0
.end method

.method public static l(LY1/i;)LY1/h;
    .locals 1

    sget-object v0, LY1/i;->DEFAULT_INSTANCE:LY1/i;

    invoke-virtual {v0}, Lcom/google/protobuf/J;->createBuilder()Lcom/google/protobuf/E;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/E;->mergeFrom(Lcom/google/protobuf/J;)V

    check-cast v0, LY1/h;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, LY1/i;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_1

    const-class p1, LY1/i;

    monitor-enter p1

    :try_start_0
    sget-object p0, LY1/i;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/F;

    sget-object v0, LY1/i;->DEFAULT_INSTANCE:LY1/i;

    invoke-direct {p0, v0}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/J;)V

    sput-object p0, LY1/i;->PARSER:Lcom/google/protobuf/x0;

    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object p0

    :pswitch_1
    sget-object p0, LY1/i;->DEFAULT_INSTANCE:LY1/i;

    return-object p0

    :pswitch_2
    new-instance p0, LY1/h;

    invoke-direct {p0}, LY1/h;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, LY1/i;

    invoke-direct {p0}, LY1/i;-><init>()V

    return-object p0

    :pswitch_4
    const-string p0, "bitField0_"

    const-string p1, "left_"

    const-string v0, "top_"

    const-string v1, "width_"

    const-string v2, "height_"

    filled-new-array {p0, p1, v0, v1, v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1004\u0001\u0003\u1004\u0002\u0004\u1004\u0003"

    sget-object v0, LY1/i;->DEFAULT_INSTANCE:LY1/i;

    new-instance v1, Lcom/google/protobuf/B0;

    invoke-direct {v1, v0, p1, p0}, Lcom/google/protobuf/B0;-><init>(Lcom/google/protobuf/J;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :pswitch_5
    const/4 p0, 0x0

    return-object p0

    :pswitch_6
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

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

.method public final g()I
    .locals 0

    iget p0, p0, LY1/i;->height_:I

    return p0
.end method

.method public final h()I
    .locals 0

    iget p0, p0, LY1/i;->left_:I

    return p0
.end method

.method public final i()I
    .locals 0

    iget p0, p0, LY1/i;->top_:I

    return p0
.end method

.method public final j()I
    .locals 0

    iget p0, p0, LY1/i;->width_:I

    return p0
.end method
