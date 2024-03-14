.class public final LZ1/e;
.super Lcom/google/protobuf/J;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# static fields
.field private static final DEFAULT_INSTANCE:LZ1/e;

.field public static final PACKAGE_NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/x0; = null

.field public static final SEARCH_ICON_FIELD_NUMBER:I = 0x3

.field public static final SEARCH_INTENT_FIELD_NUMBER:I = 0x2

.field public static final VOICE_ICON_FIELD_NUMBER:I = 0x5

.field public static final VOICE_INTENT_FIELD_NUMBER:I = 0x4


# instance fields
.field private bitField0_:I

.field private packageName_:Ljava/lang/String;

.field private searchIcon_:Lcom/google/protobuf/ByteString;

.field private searchIntent_:Ljava/lang/String;

.field private voiceIcon_:Lcom/google/protobuf/ByteString;

.field private voiceIntent_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LZ1/e;

    invoke-direct {v0}, LZ1/e;-><init>()V

    sput-object v0, LZ1/e;->DEFAULT_INSTANCE:LZ1/e;

    const-class v1, LZ1/e;

    invoke-static {v1, v0}, Lcom/google/protobuf/J;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/J;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/protobuf/J;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LZ1/e;->packageName_:Ljava/lang/String;

    iput-object v0, p0, LZ1/e;->searchIntent_:Ljava/lang/String;

    sget-object v1, Lcom/google/protobuf/ByteString;->d:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, LZ1/e;->searchIcon_:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, LZ1/e;->voiceIntent_:Ljava/lang/String;

    iput-object v1, p0, LZ1/e;->voiceIcon_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static a(LZ1/e;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, LZ1/e;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, LZ1/e;->bitField0_:I

    iput-object p1, p0, LZ1/e;->packageName_:Ljava/lang/String;

    return-void
.end method

.method public static b(LZ1/e;Lcom/google/protobuf/ByteString;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, LZ1/e;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, LZ1/e;->bitField0_:I

    iput-object p1, p0, LZ1/e;->searchIcon_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static c(LZ1/e;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, LZ1/e;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, LZ1/e;->bitField0_:I

    iput-object p1, p0, LZ1/e;->searchIntent_:Ljava/lang/String;

    return-void
.end method

.method public static d(LZ1/e;Lcom/google/protobuf/ByteString;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, LZ1/e;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, LZ1/e;->bitField0_:I

    iput-object p1, p0, LZ1/e;->voiceIcon_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static e(LZ1/e;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, LZ1/e;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, LZ1/e;->bitField0_:I

    iput-object p1, p0, LZ1/e;->voiceIntent_:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic f()LZ1/e;
    .locals 1

    sget-object v0, LZ1/e;->DEFAULT_INSTANCE:LZ1/e;

    return-object v0
.end method

.method public static l()LZ1/d;
    .locals 1

    sget-object v0, LZ1/e;->DEFAULT_INSTANCE:LZ1/e;

    invoke-virtual {v0}, Lcom/google/protobuf/J;->createBuilder()Lcom/google/protobuf/E;

    move-result-object v0

    check-cast v0, LZ1/d;

    return-object v0
.end method

.method public static m([B)LZ1/e;
    .locals 1

    sget-object v0, LZ1/e;->DEFAULT_INSTANCE:LZ1/e;

    invoke-static {v0, p0}, Lcom/google/protobuf/J;->parseFrom(Lcom/google/protobuf/J;[B)Lcom/google/protobuf/J;

    move-result-object p0

    check-cast p0, LZ1/e;

    return-object p0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, LZ1/e;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_1

    const-class p1, LZ1/e;

    monitor-enter p1

    :try_start_0
    sget-object p0, LZ1/e;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/F;

    sget-object v0, LZ1/e;->DEFAULT_INSTANCE:LZ1/e;

    invoke-direct {p0, v0}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/J;)V

    sput-object p0, LZ1/e;->PARSER:Lcom/google/protobuf/x0;

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
    sget-object p0, LZ1/e;->DEFAULT_INSTANCE:LZ1/e;

    return-object p0

    :pswitch_2
    new-instance p0, LZ1/d;

    invoke-direct {p0}, LZ1/d;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, LZ1/e;

    invoke-direct {p0}, LZ1/e;-><init>()V

    return-object p0

    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "packageName_"

    const-string v2, "searchIntent_"

    const-string v3, "searchIcon_"

    const-string v4, "voiceIntent_"

    const-string v5, "voiceIcon_"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u100a\u0002\u0004\u1008\u0003\u0005\u100a\u0004"

    sget-object v0, LZ1/e;->DEFAULT_INSTANCE:LZ1/e;

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

.method public final g()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, LZ1/e;->searchIcon_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LZ1/e;->packageName_:Ljava/lang/String;

    return-object p0
.end method

.method public final h()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LZ1/e;->searchIntent_:Ljava/lang/String;

    return-object p0
.end method

.method public final i()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, LZ1/e;->voiceIcon_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public final j()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LZ1/e;->voiceIntent_:Ljava/lang/String;

    return-object p0
.end method

.method public final k()Z
    .locals 0

    iget p0, p0, LZ1/e;->bitField0_:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
