.class public final Lf2/x0;
.super Lcom/google/protobuf/J;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# static fields
.field private static final DEFAULT_INSTANCE:Lf2/x0;

.field public static final ONE_SEARCH_RENDERED_BLOCKS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/x0; = null

.field public static final SUGGESTIONS_RENDERED_TIMESTAMP_MS_FIELD_NUMBER:I = 0x3

.field public static final SUGGESTIONS_RESPONSE_ID_FIELD_NUMBER:I = 0x4


# instance fields
.field private bitField0_:I

.field private oneSearchRenderedBlocks_:Lcom/google/protobuf/S;

.field private suggestionsRenderedTimestampMs_:J

.field private suggestionsResponseId_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lf2/x0;

    invoke-direct {v0}, Lf2/x0;-><init>()V

    sput-object v0, Lf2/x0;->DEFAULT_INSTANCE:Lf2/x0;

    const-class v1, Lf2/x0;

    invoke-static {v1, v0}, Lcom/google/protobuf/J;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/J;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/J;-><init>()V

    sget-object v0, Lcom/google/protobuf/A0;->g:Lcom/google/protobuf/A0;

    iput-object v0, p0, Lf2/x0;->oneSearchRenderedBlocks_:Lcom/google/protobuf/S;

    const-string v0, ""

    iput-object v0, p0, Lf2/x0;->suggestionsResponseId_:Ljava/lang/String;

    return-void
.end method

.method public static a(Lf2/x0;Lf2/w0;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lf2/x0;->oneSearchRenderedBlocks_:Lcom/google/protobuf/S;

    invoke-interface {v0}, Lcom/google/protobuf/S;->g()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/protobuf/J;->mutableCopy(Lcom/google/protobuf/S;)Lcom/google/protobuf/S;

    move-result-object v0

    iput-object v0, p0, Lf2/x0;->oneSearchRenderedBlocks_:Lcom/google/protobuf/S;

    :cond_0
    iget-object p0, p0, Lf2/x0;->oneSearchRenderedBlocks_:Lcom/google/protobuf/S;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static b(Lf2/x0;J)V
    .locals 1

    iget v0, p0, Lf2/x0;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lf2/x0;->bitField0_:I

    iput-wide p1, p0, Lf2/x0;->suggestionsRenderedTimestampMs_:J

    return-void
.end method

.method public static c(Lf2/x0;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lf2/x0;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lf2/x0;->bitField0_:I

    iput-object p1, p0, Lf2/x0;->suggestionsResponseId_:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic d()Lf2/x0;
    .locals 1

    sget-object v0, Lf2/x0;->DEFAULT_INSTANCE:Lf2/x0;

    return-object v0
.end method

.method public static h()Lf2/q0;
    .locals 1

    sget-object v0, Lf2/x0;->DEFAULT_INSTANCE:Lf2/x0;

    invoke-virtual {v0}, Lcom/google/protobuf/J;->createBuilder()Lcom/google/protobuf/E;

    move-result-object v0

    check-cast v0, Lf2/q0;

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
    sget-object p0, Lf2/x0;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_1

    const-class p1, Lf2/x0;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lf2/x0;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/F;

    sget-object v0, Lf2/x0;->DEFAULT_INSTANCE:Lf2/x0;

    invoke-direct {p0, v0}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/J;)V

    sput-object p0, Lf2/x0;->PARSER:Lcom/google/protobuf/x0;

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
    sget-object p0, Lf2/x0;->DEFAULT_INSTANCE:Lf2/x0;

    return-object p0

    :pswitch_2
    new-instance p0, Lf2/q0;

    invoke-direct {p0}, Lf2/q0;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, Lf2/x0;

    invoke-direct {p0}, Lf2/x0;-><init>()V

    return-object p0

    :pswitch_4
    const-string p0, "bitField0_"

    const-string p1, "oneSearchRenderedBlocks_"

    const-class v0, Lf2/w0;

    const-string v1, "suggestionsRenderedTimestampMs_"

    const-string v2, "suggestionsResponseId_"

    filled-new-array {p0, p1, v0, v1, v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0003\u0000\u0001\u0002\u0004\u0003\u0000\u0001\u0000\u0002\u001b\u0003\u1003\u0000\u0004\u1008\u0001"

    sget-object v0, Lf2/x0;->DEFAULT_INSTANCE:Lf2/x0;

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

.method public final e()I
    .locals 0

    iget-object p0, p0, Lf2/x0;->oneSearchRenderedBlocks_:Lcom/google/protobuf/S;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final f()Lcom/google/protobuf/S;
    .locals 0

    iget-object p0, p0, Lf2/x0;->oneSearchRenderedBlocks_:Lcom/google/protobuf/S;

    return-object p0
.end method

.method public final g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf2/x0;->suggestionsResponseId_:Ljava/lang/String;

    return-object p0
.end method
