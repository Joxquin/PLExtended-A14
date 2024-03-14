.class public final Lf2/j;
.super Lcom/google/protobuf/J;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# static fields
.field private static final DEFAULT_INSTANCE:Lf2/j;

.field private static volatile PARSER:Lcom/google/protobuf/x0; = null

.field public static final SELECT_SUGGESTION_REQUEST_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private selectSuggestionRequest_:Lf2/P0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lf2/j;

    invoke-direct {v0}, Lf2/j;-><init>()V

    sput-object v0, Lf2/j;->DEFAULT_INSTANCE:Lf2/j;

    const-class v1, Lf2/j;

    invoke-static {v1, v0}, Lcom/google/protobuf/J;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/J;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/J;-><init>()V

    return-void
.end method

.method public static a(Lf2/j;Lf2/P0;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lf2/j;->selectSuggestionRequest_:Lf2/P0;

    iget p1, p0, Lf2/j;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lf2/j;->bitField0_:I

    return-void
.end method

.method public static bridge synthetic b()Lf2/j;
    .locals 1

    sget-object v0, Lf2/j;->DEFAULT_INSTANCE:Lf2/j;

    return-object v0
.end method

.method public static c()Lf2/j;
    .locals 1

    sget-object v0, Lf2/j;->DEFAULT_INSTANCE:Lf2/j;

    return-object v0
.end method

.method public static d()Lf2/i;
    .locals 1

    sget-object v0, Lf2/j;->DEFAULT_INSTANCE:Lf2/j;

    invoke-virtual {v0}, Lcom/google/protobuf/J;->createBuilder()Lcom/google/protobuf/E;

    move-result-object v0

    check-cast v0, Lf2/i;

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
    sget-object p0, Lf2/j;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_1

    const-class p1, Lf2/j;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lf2/j;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/F;

    sget-object v0, Lf2/j;->DEFAULT_INSTANCE:Lf2/j;

    invoke-direct {p0, v0}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/J;)V

    sput-object p0, Lf2/j;->PARSER:Lcom/google/protobuf/x0;

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
    sget-object p0, Lf2/j;->DEFAULT_INSTANCE:Lf2/j;

    return-object p0

    :pswitch_2
    new-instance p0, Lf2/i;

    invoke-direct {p0}, Lf2/i;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, Lf2/j;

    invoke-direct {p0}, Lf2/j;-><init>()V

    return-object p0

    :pswitch_4
    const-string p0, "bitField0_"

    const-string p1, "selectSuggestionRequest_"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u1009\u0000"

    sget-object v0, Lf2/j;->DEFAULT_INSTANCE:Lf2/j;

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
