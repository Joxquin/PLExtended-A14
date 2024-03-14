.class public final Lf2/c0;
.super Lcom/google/protobuf/J;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# static fields
.field private static final DEFAULT_INSTANCE:Lf2/c0;

.field public static final LINE_ONE_FIELD_NUMBER:I = 0x2

.field public static final LINE_TWO_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/x0; = null

.field public static final RICH_ANSWER_FIELD_NUMBER:I = 0x4


# instance fields
.field private bitField0_:I

.field private lineOne_:Ljava/lang/String;

.field private lineTwo_:Ljava/lang/String;

.field private richAnswer_:LT2/n;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lf2/c0;

    invoke-direct {v0}, Lf2/c0;-><init>()V

    sput-object v0, Lf2/c0;->DEFAULT_INSTANCE:Lf2/c0;

    const-class v1, Lf2/c0;

    invoke-static {v1, v0}, Lcom/google/protobuf/J;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/J;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/J;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lf2/c0;->lineOne_:Ljava/lang/String;

    iput-object v0, p0, Lf2/c0;->lineTwo_:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a()Lf2/c0;
    .locals 1

    sget-object v0, Lf2/c0;->DEFAULT_INSTANCE:Lf2/c0;

    return-object v0
.end method

.method public static b()Lf2/c0;
    .locals 1

    sget-object v0, Lf2/c0;->DEFAULT_INSTANCE:Lf2/c0;

    return-object v0
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf2/c0;->lineOne_:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf2/c0;->lineTwo_:Ljava/lang/String;

    return-object p0
.end method

.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lf2/c0;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_1

    const-class p1, Lf2/c0;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lf2/c0;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/F;

    sget-object v0, Lf2/c0;->DEFAULT_INSTANCE:Lf2/c0;

    invoke-direct {p0, v0}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/J;)V

    sput-object p0, Lf2/c0;->PARSER:Lcom/google/protobuf/x0;

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
    sget-object p0, Lf2/c0;->DEFAULT_INSTANCE:Lf2/c0;

    return-object p0

    :pswitch_2
    new-instance p0, Lf2/b0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lf2/b0;-><init>(I)V

    return-object p0

    :pswitch_3
    new-instance p0, Lf2/c0;

    invoke-direct {p0}, Lf2/c0;-><init>()V

    return-object p0

    :pswitch_4
    const-string p0, "bitField0_"

    const-string p1, "lineOne_"

    const-string v0, "lineTwo_"

    const-string v1, "richAnswer_"

    filled-new-array {p0, p1, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0003\u0000\u0001\u0002\u0004\u0003\u0000\u0000\u0000\u0002\u1008\u0000\u0003\u1008\u0001\u0004\u1009\u0002"

    sget-object v0, Lf2/c0;->DEFAULT_INSTANCE:Lf2/c0;

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

.method public final e()LT2/n;
    .locals 0

    iget-object p0, p0, Lf2/c0;->richAnswer_:LT2/n;

    if-nez p0, :cond_0

    invoke-static {}, LT2/n;->b()LT2/n;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final f()Z
    .locals 0

    iget p0, p0, Lf2/c0;->bitField0_:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
