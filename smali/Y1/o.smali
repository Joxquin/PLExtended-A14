.class public final LY1/o;
.super Lcom/google/protobuf/J;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# static fields
.field private static final DEFAULT_INSTANCE:LY1/o;

.field public static final INITIAL_QUERY_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/x0; = null

.field public static final PIXEL_APPS_SEARCH_CONFIG_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private initialQuery_:Ljava/lang/String;

.field private pixelAppsSearchConfig_:LY1/m;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LY1/o;

    invoke-direct {v0}, LY1/o;-><init>()V

    sput-object v0, LY1/o;->DEFAULT_INSTANCE:LY1/o;

    const-class v1, LY1/o;

    invoke-static {v1, v0}, Lcom/google/protobuf/J;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/J;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/J;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LY1/o;->initialQuery_:Ljava/lang/String;

    return-void
.end method

.method public static a(LY1/o;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, LY1/o;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, LY1/o;->bitField0_:I

    iput-object p1, p0, LY1/o;->initialQuery_:Ljava/lang/String;

    return-void
.end method

.method public static b(LY1/o;LY1/m;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LY1/o;->pixelAppsSearchConfig_:LY1/m;

    iget p1, p0, LY1/o;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, LY1/o;->bitField0_:I

    return-void
.end method

.method public static bridge synthetic c()LY1/o;
    .locals 1

    sget-object v0, LY1/o;->DEFAULT_INSTANCE:LY1/o;

    return-object v0
.end method

.method public static d()LY1/n;
    .locals 1

    sget-object v0, LY1/o;->DEFAULT_INSTANCE:LY1/o;

    invoke-virtual {v0}, Lcom/google/protobuf/J;->createBuilder()Lcom/google/protobuf/E;

    move-result-object v0

    check-cast v0, LY1/n;

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
    sget-object p0, LY1/o;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_1

    const-class p1, LY1/o;

    monitor-enter p1

    :try_start_0
    sget-object p0, LY1/o;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/F;

    sget-object v0, LY1/o;->DEFAULT_INSTANCE:LY1/o;

    invoke-direct {p0, v0}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/J;)V

    sput-object p0, LY1/o;->PARSER:Lcom/google/protobuf/x0;

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
    sget-object p0, LY1/o;->DEFAULT_INSTANCE:LY1/o;

    return-object p0

    :pswitch_2
    new-instance p0, LY1/n;

    invoke-direct {p0}, LY1/n;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, LY1/o;

    invoke-direct {p0}, LY1/o;-><init>()V

    return-object p0

    :pswitch_4
    const-string p0, "bitField0_"

    const-string p1, "pixelAppsSearchConfig_"

    const-string v0, "initialQuery_"

    filled-new-array {p0, p1, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1008\u0001"

    sget-object v0, LY1/o;->DEFAULT_INSTANCE:LY1/o;

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
