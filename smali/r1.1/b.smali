.class public final Lr1/b;
.super Lcom/google/protobuf/J;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# static fields
.field public static final CARD_TYPE_ID_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lr1/b;

.field public static final INSTANCE_ID_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/x0;


# instance fields
.field private bitField0_:I

.field private cardTypeId_:I

.field private instanceId_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr1/b;

    invoke-direct {v0}, Lr1/b;-><init>()V

    sput-object v0, Lr1/b;->DEFAULT_INSTANCE:Lr1/b;

    const-class v1, Lr1/b;

    invoke-static {v1, v0}, Lcom/google/protobuf/J;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/J;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/J;-><init>()V

    return-void
.end method

.method public static a(Lr1/b;I)V
    .locals 1

    iget v0, p0, Lr1/b;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lr1/b;->bitField0_:I

    iput p1, p0, Lr1/b;->cardTypeId_:I

    return-void
.end method

.method public static b(Lr1/b;I)V
    .locals 1

    iget v0, p0, Lr1/b;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lr1/b;->bitField0_:I

    iput p1, p0, Lr1/b;->instanceId_:I

    return-void
.end method

.method public static bridge synthetic c()Lr1/b;
    .locals 1

    sget-object v0, Lr1/b;->DEFAULT_INSTANCE:Lr1/b;

    return-object v0
.end method

.method public static d()Lr1/a;
    .locals 1

    sget-object v0, Lr1/b;->DEFAULT_INSTANCE:Lr1/b;

    invoke-virtual {v0}, Lcom/google/protobuf/J;->createBuilder()Lcom/google/protobuf/E;

    move-result-object v0

    check-cast v0, Lr1/a;

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
    sget-object p0, Lr1/b;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_1

    const-class p1, Lr1/b;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lr1/b;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/F;

    sget-object v0, Lr1/b;->DEFAULT_INSTANCE:Lr1/b;

    invoke-direct {p0, v0}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/J;)V

    sput-object p0, Lr1/b;->PARSER:Lcom/google/protobuf/x0;

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
    sget-object p0, Lr1/b;->DEFAULT_INSTANCE:Lr1/b;

    return-object p0

    :pswitch_2
    new-instance p0, Lr1/a;

    invoke-direct {p0}, Lr1/a;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, Lr1/b;

    invoke-direct {p0}, Lr1/b;-><init>()V

    return-object p0

    :pswitch_4
    const-string p0, "bitField0_"

    const-string p1, "instanceId_"

    const-string v0, "cardTypeId_"

    filled-new-array {p0, p1, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1004\u0001"

    sget-object v0, Lr1/b;->DEFAULT_INSTANCE:Lr1/b;

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
