.class public final LB0/d;
.super Lcom/google/protobuf/J;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# static fields
.field private static final DEFAULT_INSTANCE:LB0/d;

.field public static final NODE_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/x0; = null

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private node_:LB0/f;

.field private timestamp_:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LB0/d;

    invoke-direct {v0}, LB0/d;-><init>()V

    sput-object v0, LB0/d;->DEFAULT_INSTANCE:LB0/d;

    const-class v1, LB0/d;

    invoke-static {v1, v0}, Lcom/google/protobuf/J;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/J;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/J;-><init>()V

    return-void
.end method

.method public static synthetic a()LB0/d;
    .locals 1

    sget-object v0, LB0/d;->DEFAULT_INSTANCE:LB0/d;

    return-object v0
.end method

.method public static b(LB0/d;J)V
    .locals 1

    iget v0, p0, LB0/d;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, LB0/d;->bitField0_:I

    iput-wide p1, p0, LB0/d;->timestamp_:J

    return-void
.end method

.method public static c(LB0/d;LB0/f;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LB0/d;->node_:LB0/f;

    iget p1, p0, LB0/d;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, LB0/d;->bitField0_:I

    return-void
.end method

.method public static d()LB0/c;
    .locals 1

    sget-object v0, LB0/d;->DEFAULT_INSTANCE:LB0/d;

    invoke-virtual {v0}, Lcom/google/protobuf/J;->createBuilder()Lcom/google/protobuf/E;

    move-result-object v0

    check-cast v0, LB0/c;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, LB0/d;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_1

    const-class p1, LB0/d;

    monitor-enter p1

    :try_start_0
    sget-object p0, LB0/d;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/F;

    sget-object v0, LB0/d;->DEFAULT_INSTANCE:LB0/d;

    invoke-direct {p0, v0}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/J;)V

    sput-object p0, LB0/d;->PARSER:Lcom/google/protobuf/x0;

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
    sget-object p0, LB0/d;->DEFAULT_INSTANCE:LB0/d;

    return-object p0

    :pswitch_2
    new-instance p0, LB0/c;

    invoke-direct {p0}, LB0/c;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, LB0/d;

    invoke-direct {p0}, LB0/d;-><init>()V

    return-object p0

    :pswitch_4
    const-string p0, "bitField0_"

    const-string p1, "timestamp_"

    const-string v0, "node_"

    filled-new-array {p0, p1, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1002\u0000\u0002\u1009\u0001"

    sget-object v0, LB0/d;->DEFAULT_INSTANCE:LB0/d;

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
