.class public final Lg2/b;
.super Lcom/google/protobuf/J;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# static fields
.field public static final ASSET_BYTES_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lg2/b;

.field public static final IMAGE_TOKEN_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/x0;


# instance fields
.field private assetBytes_:Lcom/google/protobuf/ByteString;

.field private bitField0_:I

.field private imageToken_:Lg2/t;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg2/b;

    invoke-direct {v0}, Lg2/b;-><init>()V

    sput-object v0, Lg2/b;->DEFAULT_INSTANCE:Lg2/b;

    const-class v1, Lg2/b;

    invoke-static {v1, v0}, Lcom/google/protobuf/J;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/J;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/J;-><init>()V

    sget-object v0, Lcom/google/protobuf/ByteString;->d:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lg2/b;->assetBytes_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static bridge synthetic a()Lg2/b;
    .locals 1

    sget-object v0, Lg2/b;->DEFAULT_INSTANCE:Lg2/b;

    return-object v0
.end method

.method public static c()Lg2/b;
    .locals 1

    sget-object v0, Lg2/b;->DEFAULT_INSTANCE:Lg2/b;

    return-object v0
.end method


# virtual methods
.method public final b()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lg2/b;->assetBytes_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public final d()Z
    .locals 0

    iget p0, p0, Lg2/b;->bitField0_:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
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
    sget-object p0, Lg2/b;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_1

    const-class p1, Lg2/b;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lg2/b;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/F;

    sget-object v0, Lg2/b;->DEFAULT_INSTANCE:Lg2/b;

    invoke-direct {p0, v0}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/J;)V

    sput-object p0, Lg2/b;->PARSER:Lcom/google/protobuf/x0;

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
    sget-object p0, Lg2/b;->DEFAULT_INSTANCE:Lg2/b;

    return-object p0

    :pswitch_2
    new-instance p0, Lg2/a;

    invoke-direct {p0}, Lg2/a;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, Lg2/b;

    invoke-direct {p0}, Lg2/b;-><init>()V

    return-object p0

    :pswitch_4
    const-string p0, "bitField0_"

    const-string p1, "imageToken_"

    const-string v0, "assetBytes_"

    filled-new-array {p0, p1, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0002\u0000\u0001\u0002\u0003\u0002\u0000\u0000\u0000\u0002\u1009\u0000\u0003\u100a\u0001"

    sget-object v0, Lg2/b;->DEFAULT_INSTANCE:Lg2/b;

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
