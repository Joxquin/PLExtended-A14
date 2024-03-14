.class public final LZ1/g;
.super Lcom/google/protobuf/J;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# static fields
.field private static final DEFAULT_INSTANCE:LZ1/g;

.field public static final PACKAGE_NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/x0; = null

.field public static final SEARCH_ICON_FIELD_NUMBER:I = 0x2

.field public static final VOICE_ICON_FIELD_NUMBER:I = 0x3


# instance fields
.field private bitField0_:I

.field private packageName_:Ljava/lang/String;

.field private searchIcon_:LZ1/i;

.field private voiceIcon_:LZ1/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LZ1/g;

    invoke-direct {v0}, LZ1/g;-><init>()V

    sput-object v0, LZ1/g;->DEFAULT_INSTANCE:LZ1/g;

    const-class v1, LZ1/g;

    invoke-static {v1, v0}, Lcom/google/protobuf/J;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/J;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/J;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LZ1/g;->packageName_:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a()LZ1/g;
    .locals 1

    sget-object v0, LZ1/g;->DEFAULT_INSTANCE:LZ1/g;

    return-object v0
.end method


# virtual methods
.method public final b()LZ1/i;
    .locals 0

    iget-object p0, p0, LZ1/g;->searchIcon_:LZ1/i;

    if-nez p0, :cond_0

    invoke-static {}, LZ1/i;->b()LZ1/i;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final c()LZ1/i;
    .locals 0

    iget-object p0, p0, LZ1/g;->voiceIcon_:LZ1/i;

    if-nez p0, :cond_0

    invoke-static {}, LZ1/i;->b()LZ1/i;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final d()Z
    .locals 0

    iget p0, p0, LZ1/g;->bitField0_:I

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
    sget-object p0, LZ1/g;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_1

    const-class p1, LZ1/g;

    monitor-enter p1

    :try_start_0
    sget-object p0, LZ1/g;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/F;

    sget-object v0, LZ1/g;->DEFAULT_INSTANCE:LZ1/g;

    invoke-direct {p0, v0}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/J;)V

    sput-object p0, LZ1/g;->PARSER:Lcom/google/protobuf/x0;

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
    sget-object p0, LZ1/g;->DEFAULT_INSTANCE:LZ1/g;

    return-object p0

    :pswitch_2
    new-instance p0, LZ1/f;

    invoke-direct {p0}, LZ1/f;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, LZ1/g;

    invoke-direct {p0}, LZ1/g;-><init>()V

    return-object p0

    :pswitch_4
    const-string p0, "bitField0_"

    const-string p1, "packageName_"

    const-string v0, "searchIcon_"

    const-string v1, "voiceIcon_"

    filled-new-array {p0, p1, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1009\u0001\u0003\u1009\u0002"

    sget-object v0, LZ1/g;->DEFAULT_INSTANCE:LZ1/g;

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

.method public final e()Z
    .locals 0

    iget p0, p0, LZ1/g;->bitField0_:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LZ1/g;->packageName_:Ljava/lang/String;

    return-object p0
.end method
