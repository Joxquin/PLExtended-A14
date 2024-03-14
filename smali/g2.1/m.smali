.class public final Lg2/m;
.super Lcom/google/protobuf/J;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# static fields
.field private static final DEFAULT_INSTANCE:Lg2/m;

.field public static final ENTRY_POINT_FIELD_NUMBER:I = 0x4

.field public static final ICON_SIZE_FIELD_NUMBER:I = 0x7

.field public static final INITIATE_ASSET_DOWNLOAD_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/x0; = null

.field public static final RAW_QUERY_FIELD_NUMBER:I = 0x2

.field public static final REQUEST_CONTEXT_FIELD_NUMBER:I = 0x1

.field public static final REQUEST_TIMESTAMP_MS_FIELD_NUMBER:I = 0x5

.field public static final RESULT_COUNT_FIELD_NUMBER:I = 0x6


# instance fields
.field private bitField0_:I

.field private entryPoint_:I

.field private iconSize_:I

.field private initiateAssetDownload_:Z

.field private rawQuery_:Ljava/lang/String;

.field private requestContext_:Lg2/B;

.field private requestTimestampMs_:J

.field private resultCount_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg2/m;

    invoke-direct {v0}, Lg2/m;-><init>()V

    sput-object v0, Lg2/m;->DEFAULT_INSTANCE:Lg2/m;

    const-class v1, Lg2/m;

    invoke-static {v1, v0}, Lcom/google/protobuf/J;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/J;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/J;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lg2/m;->rawQuery_:Ljava/lang/String;

    return-void
.end method

.method public static a(Lg2/m;I)V
    .locals 1

    iget v0, p0, Lg2/m;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lg2/m;->bitField0_:I

    iput p1, p0, Lg2/m;->iconSize_:I

    return-void
.end method

.method public static b(Lg2/m;)V
    .locals 1

    iget v0, p0, Lg2/m;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lg2/m;->bitField0_:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg2/m;->initiateAssetDownload_:Z

    return-void
.end method

.method public static c(Lg2/m;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lg2/m;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lg2/m;->bitField0_:I

    iput-object p1, p0, Lg2/m;->rawQuery_:Ljava/lang/String;

    return-void
.end method

.method public static d(Lg2/m;Lg2/B;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lg2/m;->requestContext_:Lg2/B;

    iget p1, p0, Lg2/m;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lg2/m;->bitField0_:I

    return-void
.end method

.method public static e(Lg2/m;J)V
    .locals 1

    iget v0, p0, Lg2/m;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lg2/m;->bitField0_:I

    iput-wide p1, p0, Lg2/m;->requestTimestampMs_:J

    return-void
.end method

.method public static f(Lg2/m;I)V
    .locals 1

    iget v0, p0, Lg2/m;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lg2/m;->bitField0_:I

    iput p1, p0, Lg2/m;->resultCount_:I

    return-void
.end method

.method public static bridge synthetic g()Lg2/m;
    .locals 1

    sget-object v0, Lg2/m;->DEFAULT_INSTANCE:Lg2/m;

    return-object v0
.end method

.method public static h()Lg2/m;
    .locals 1

    sget-object v0, Lg2/m;->DEFAULT_INSTANCE:Lg2/m;

    return-object v0
.end method

.method public static i()Lg2/l;
    .locals 1

    sget-object v0, Lg2/m;->DEFAULT_INSTANCE:Lg2/m;

    invoke-virtual {v0}, Lcom/google/protobuf/J;->createBuilder()Lcom/google/protobuf/E;

    move-result-object v0

    check-cast v0, Lg2/l;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lg2/m;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_1

    const-class p1, Lg2/m;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lg2/m;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/F;

    sget-object v0, Lg2/m;->DEFAULT_INSTANCE:Lg2/m;

    invoke-direct {p0, v0}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/J;)V

    sput-object p0, Lg2/m;->PARSER:Lcom/google/protobuf/x0;

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
    sget-object p0, Lg2/m;->DEFAULT_INSTANCE:Lg2/m;

    return-object p0

    :pswitch_2
    new-instance p0, Lg2/l;

    invoke-direct {p0}, Lg2/l;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, Lg2/m;

    invoke-direct {p0}, Lg2/m;-><init>()V

    return-object p0

    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "requestContext_"

    const-string v2, "rawQuery_"

    const-string v3, "initiateAssetDownload_"

    const-string v4, "entryPoint_"

    sget-object v5, Lg2/g;->a:Lg2/g;

    const-string v6, "requestTimestampMs_"

    const-string v7, "resultCount_"

    const-string v8, "iconSize_"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1008\u0001\u0003\u1007\u0002\u0004\u100c\u0003\u0005\u1003\u0004\u0006\u1004\u0005\u0007\u1004\u0006"

    sget-object v0, Lg2/m;->DEFAULT_INSTANCE:Lg2/m;

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
