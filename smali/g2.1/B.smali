.class public final Lg2/B;
.super Lcom/google/protobuf/J;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# static fields
.field public static final CLIENT_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lg2/B;

.field public static final ENTRY_POINT_FIELD_NUMBER:I = 0x7

.field private static volatile PARSER:Lcom/google/protobuf/x0;


# instance fields
.field private bitField0_:I

.field private client_:Lg2/A;

.field private entryPoint_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg2/B;

    invoke-direct {v0}, Lg2/B;-><init>()V

    sput-object v0, Lg2/B;->DEFAULT_INSTANCE:Lg2/B;

    const-class v1, Lg2/B;

    invoke-static {v1, v0}, Lcom/google/protobuf/J;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/J;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/J;-><init>()V

    return-void
.end method

.method public static a(Lg2/B;Lg2/A;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lg2/B;->client_:Lg2/A;

    iget p1, p0, Lg2/B;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lg2/B;->bitField0_:I

    return-void
.end method

.method public static b(Lg2/B;Lcom/google/android/gms/play/cloud/search/grpc/EntryPoint;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/google/android/gms/play/cloud/search/grpc/EntryPoint;->getNumber()I

    move-result p1

    iput p1, p0, Lg2/B;->entryPoint_:I

    iget p1, p0, Lg2/B;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lg2/B;->bitField0_:I

    return-void
.end method

.method public static bridge synthetic c()Lg2/B;
    .locals 1

    sget-object v0, Lg2/B;->DEFAULT_INSTANCE:Lg2/B;

    return-object v0
.end method

.method public static d()Lg2/x;
    .locals 1

    sget-object v0, Lg2/B;->DEFAULT_INSTANCE:Lg2/B;

    invoke-virtual {v0}, Lcom/google/protobuf/J;->createBuilder()Lcom/google/protobuf/E;

    move-result-object v0

    check-cast v0, Lg2/x;

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
    sget-object p0, Lg2/B;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_1

    const-class p1, Lg2/B;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lg2/B;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/F;

    sget-object v0, Lg2/B;->DEFAULT_INSTANCE:Lg2/B;

    invoke-direct {p0, v0}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/J;)V

    sput-object p0, Lg2/B;->PARSER:Lcom/google/protobuf/x0;

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
    sget-object p0, Lg2/B;->DEFAULT_INSTANCE:Lg2/B;

    return-object p0

    :pswitch_2
    new-instance p0, Lg2/x;

    invoke-direct {p0}, Lg2/x;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, Lg2/B;

    invoke-direct {p0}, Lg2/B;-><init>()V

    return-object p0

    :pswitch_4
    const-string p0, "bitField0_"

    const-string p1, "client_"

    const-string v0, "entryPoint_"

    sget-object v1, Lg2/g;->a:Lg2/g;

    filled-new-array {p0, p1, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0002\u0000\u0001\u0006\u0007\u0002\u0000\u0000\u0000\u0006\u1009\u0000\u0007\u100c\u0001"

    sget-object v0, Lg2/B;->DEFAULT_INSTANCE:Lg2/B;

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
