.class public final Lg2/A;
.super Lcom/google/protobuf/J;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# static fields
.field public static final CLIENT_NAME_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lg2/A;

.field private static volatile PARSER:Lcom/google/protobuf/x0; = null

.field public static final VERSION_CODE_FIELD_NUMBER:I = 0x2

.field public static final VERSION_NAME_FIELD_NUMBER:I = 0x3


# instance fields
.field private bitField0_:I

.field private clientName_:I

.field private versionCode_:I

.field private versionName_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg2/A;

    invoke-direct {v0}, Lg2/A;-><init>()V

    sput-object v0, Lg2/A;->DEFAULT_INSTANCE:Lg2/A;

    const-class v1, Lg2/A;

    invoke-static {v1, v0}, Lcom/google/protobuf/J;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/J;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/J;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lg2/A;->versionName_:Ljava/lang/String;

    return-void
.end method

.method public static a(Lg2/A;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/play/cloud/search/grpc/RequestContext$Client$ClientName;->e:Lcom/google/android/gms/play/cloud/search/grpc/RequestContext$Client$ClientName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/google/android/gms/play/cloud/search/grpc/RequestContext$Client$ClientName;->getNumber()I

    move-result v0

    iput v0, p0, Lg2/A;->clientName_:I

    iget v0, p0, Lg2/A;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lg2/A;->bitField0_:I

    return-void
.end method

.method public static b(Lg2/A;)V
    .locals 1

    iget v0, p0, Lg2/A;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lg2/A;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lg2/A;->versionCode_:I

    return-void
.end method

.method public static c(Lg2/A;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lg2/A;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lg2/A;->bitField0_:I

    iput-object p1, p0, Lg2/A;->versionName_:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic d()Lg2/A;
    .locals 1

    sget-object v0, Lg2/A;->DEFAULT_INSTANCE:Lg2/A;

    return-object v0
.end method

.method public static e()Lg2/y;
    .locals 1

    sget-object v0, Lg2/A;->DEFAULT_INSTANCE:Lg2/A;

    invoke-virtual {v0}, Lcom/google/protobuf/J;->createBuilder()Lcom/google/protobuf/E;

    move-result-object v0

    check-cast v0, Lg2/y;

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
    sget-object p0, Lg2/A;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_1

    const-class p1, Lg2/A;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lg2/A;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/F;

    sget-object v0, Lg2/A;->DEFAULT_INSTANCE:Lg2/A;

    invoke-direct {p0, v0}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/J;)V

    sput-object p0, Lg2/A;->PARSER:Lcom/google/protobuf/x0;

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
    sget-object p0, Lg2/A;->DEFAULT_INSTANCE:Lg2/A;

    return-object p0

    :pswitch_2
    new-instance p0, Lg2/y;

    invoke-direct {p0}, Lg2/y;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, Lg2/A;

    invoke-direct {p0}, Lg2/A;-><init>()V

    return-object p0

    :pswitch_4
    const-string p0, "bitField0_"

    const-string p1, "clientName_"

    sget-object v0, Lg2/z;->a:Lg2/z;

    const-string v1, "versionCode_"

    const-string v2, "versionName_"

    filled-new-array {p0, p1, v0, v1, v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u1004\u0001\u0003\u1008\u0002"

    sget-object v0, Lg2/A;->DEFAULT_INSTANCE:Lg2/A;

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
