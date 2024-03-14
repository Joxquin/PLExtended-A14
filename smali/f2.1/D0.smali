.class public final Lf2/D0;
.super Lcom/google/protobuf/J;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# static fields
.field private static final DEFAULT_INSTANCE:Lf2/D0;

.field private static volatile PARSER:Lcom/google/protobuf/x0; = null

.field public static final REQUEST_HANDLING_END_FIELD_NUMBER:I = 0x4

.field public static final REQUEST_HANDLING_START_FIELD_NUMBER:I = 0x1

.field public static final SERVER_REQUEST_SENT_FIELD_NUMBER:I = 0x2

.field public static final SERVER_RESPONSE_RECEIVED_FIELD_NUMBER:I = 0x3


# instance fields
.field private bitField0_:I

.field private requestHandlingEnd_:J

.field private requestHandlingStart_:J

.field private serverRequestSent_:J

.field private serverResponseReceived_:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lf2/D0;

    invoke-direct {v0}, Lf2/D0;-><init>()V

    sput-object v0, Lf2/D0;->DEFAULT_INSTANCE:Lf2/D0;

    const-class v1, Lf2/D0;

    invoke-static {v1, v0}, Lcom/google/protobuf/J;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/J;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/J;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Lf2/D0;
    .locals 1

    sget-object v0, Lf2/D0;->DEFAULT_INSTANCE:Lf2/D0;

    return-object v0
.end method

.method public static b()Lf2/D0;
    .locals 1

    sget-object v0, Lf2/D0;->DEFAULT_INSTANCE:Lf2/D0;

    return-object v0
.end method


# virtual methods
.method public final c()J
    .locals 2

    iget-wide v0, p0, Lf2/D0;->requestHandlingEnd_:J

    return-wide v0
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lf2/D0;->requestHandlingStart_:J

    return-wide v0
.end method

.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lf2/D0;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_1

    const-class p1, Lf2/D0;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lf2/D0;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/F;

    sget-object v0, Lf2/D0;->DEFAULT_INSTANCE:Lf2/D0;

    invoke-direct {p0, v0}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/J;)V

    sput-object p0, Lf2/D0;->PARSER:Lcom/google/protobuf/x0;

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
    sget-object p0, Lf2/D0;->DEFAULT_INSTANCE:Lf2/D0;

    return-object p0

    :pswitch_2
    new-instance p0, Lf2/C0;

    invoke-direct {p0}, Lf2/C0;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, Lf2/D0;

    invoke-direct {p0}, Lf2/D0;-><init>()V

    return-object p0

    :pswitch_4
    const-string p0, "bitField0_"

    const-string p1, "requestHandlingStart_"

    const-string v0, "serverRequestSent_"

    const-string v1, "serverResponseReceived_"

    const-string v2, "requestHandlingEnd_"

    filled-new-array {p0, p1, v0, v1, v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1003\u0000\u0002\u1003\u0001\u0003\u1003\u0002\u0004\u1003\u0003"

    sget-object v0, Lf2/D0;->DEFAULT_INSTANCE:Lf2/D0;

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

.method public final e()J
    .locals 2

    iget-wide v0, p0, Lf2/D0;->serverRequestSent_:J

    return-wide v0
.end method

.method public final f()J
    .locals 2

    iget-wide v0, p0, Lf2/D0;->serverResponseReceived_:J

    return-wide v0
.end method
