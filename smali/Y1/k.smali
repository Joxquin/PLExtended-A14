.class public final LY1/k;
.super Lcom/google/protobuf/J;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# static fields
.field public static final BITMAP_ID_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:LY1/k;

.field public static final INTENT_FIELD_NUMBER:I = 0x2

.field public static final LABEL_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/x0; = null

.field public static final URI_FIELD_NUMBER:I = 0x4


# instance fields
.field private bitField0_:I

.field private bitmapId_:Ljava/lang/String;

.field private intent_:Ljava/lang/String;

.field private label_:Ljava/lang/String;

.field private uri_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LY1/k;

    invoke-direct {v0}, LY1/k;-><init>()V

    sput-object v0, LY1/k;->DEFAULT_INSTANCE:LY1/k;

    const-class v1, LY1/k;

    invoke-static {v1, v0}, Lcom/google/protobuf/J;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/J;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/J;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LY1/k;->label_:Ljava/lang/String;

    iput-object v0, p0, LY1/k;->intent_:Ljava/lang/String;

    iput-object v0, p0, LY1/k;->bitmapId_:Ljava/lang/String;

    iput-object v0, p0, LY1/k;->uri_:Ljava/lang/String;

    return-void
.end method

.method public static a(LY1/k;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, LY1/k;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, LY1/k;->bitField0_:I

    iput-object p1, p0, LY1/k;->bitmapId_:Ljava/lang/String;

    return-void
.end method

.method public static b(LY1/k;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, LY1/k;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, LY1/k;->bitField0_:I

    iput-object p1, p0, LY1/k;->intent_:Ljava/lang/String;

    return-void
.end method

.method public static c(LY1/k;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, LY1/k;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, LY1/k;->bitField0_:I

    iput-object p1, p0, LY1/k;->label_:Ljava/lang/String;

    return-void
.end method

.method public static d(LY1/k;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, LY1/k;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, LY1/k;->bitField0_:I

    iput-object p1, p0, LY1/k;->uri_:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic e()LY1/k;
    .locals 1

    sget-object v0, LY1/k;->DEFAULT_INSTANCE:LY1/k;

    return-object v0
.end method

.method public static g()LY1/j;
    .locals 1

    sget-object v0, LY1/k;->DEFAULT_INSTANCE:LY1/k;

    invoke-virtual {v0}, Lcom/google/protobuf/J;->createBuilder()Lcom/google/protobuf/E;

    move-result-object v0

    check-cast v0, LY1/j;

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
    sget-object p0, LY1/k;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_1

    const-class p1, LY1/k;

    monitor-enter p1

    :try_start_0
    sget-object p0, LY1/k;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/F;

    sget-object v0, LY1/k;->DEFAULT_INSTANCE:LY1/k;

    invoke-direct {p0, v0}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/J;)V

    sput-object p0, LY1/k;->PARSER:Lcom/google/protobuf/x0;

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
    sget-object p0, LY1/k;->DEFAULT_INSTANCE:LY1/k;

    return-object p0

    :pswitch_2
    new-instance p0, LY1/j;

    invoke-direct {p0}, LY1/j;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, LY1/k;

    invoke-direct {p0}, LY1/k;-><init>()V

    return-object p0

    :pswitch_4
    const-string p0, "bitField0_"

    const-string p1, "label_"

    const-string v0, "intent_"

    const-string v1, "bitmapId_"

    const-string v2, "uri_"

    filled-new-array {p0, p1, v0, v1, v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1008\u0003"

    sget-object v0, LY1/k;->DEFAULT_INSTANCE:LY1/k;

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

.method public final f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LY1/k;->bitmapId_:Ljava/lang/String;

    return-object p0
.end method
