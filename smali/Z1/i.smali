.class public final LZ1/i;
.super Lcom/google/protobuf/J;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# static fields
.field private static final DEFAULT_INSTANCE:LZ1/i;

.field public static final ICON_HDPI_URL_FIELD_NUMBER:I = 0x3

.field public static final ICON_MDPI_URL_FIELD_NUMBER:I = 0x2

.field public static final ICON_XHDPI_URL_FIELD_NUMBER:I = 0x4

.field public static final ICON_XXHDPI_URL_FIELD_NUMBER:I = 0x5

.field public static final ICON_XXXHDPI_URL_FIELD_NUMBER:I = 0x6

.field public static final INTENT_DEFINITION_FIELD_NUMBER:I = 0x7

.field private static volatile PARSER:Lcom/google/protobuf/x0;


# instance fields
.field private bitField0_:I

.field private iconHdpiUrl_:Ljava/lang/String;

.field private iconMdpiUrl_:Ljava/lang/String;

.field private iconXhdpiUrl_:Ljava/lang/String;

.field private iconXxhdpiUrl_:Ljava/lang/String;

.field private iconXxxhdpiUrl_:Ljava/lang/String;

.field private intentDefinition_:LZ1/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LZ1/i;

    invoke-direct {v0}, LZ1/i;-><init>()V

    sput-object v0, LZ1/i;->DEFAULT_INSTANCE:LZ1/i;

    const-class v1, LZ1/i;

    invoke-static {v1, v0}, Lcom/google/protobuf/J;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/J;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/J;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LZ1/i;->iconMdpiUrl_:Ljava/lang/String;

    iput-object v0, p0, LZ1/i;->iconHdpiUrl_:Ljava/lang/String;

    iput-object v0, p0, LZ1/i;->iconXhdpiUrl_:Ljava/lang/String;

    iput-object v0, p0, LZ1/i;->iconXxhdpiUrl_:Ljava/lang/String;

    iput-object v0, p0, LZ1/i;->iconXxxhdpiUrl_:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a()LZ1/i;
    .locals 1

    sget-object v0, LZ1/i;->DEFAULT_INSTANCE:LZ1/i;

    return-object v0
.end method

.method public static b()LZ1/i;
    .locals 1

    sget-object v0, LZ1/i;->DEFAULT_INSTANCE:LZ1/i;

    return-object v0
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LZ1/i;->iconXxxhdpiUrl_:Ljava/lang/String;

    return-object p0
.end method

.method public final d()LZ1/b;
    .locals 0

    iget-object p0, p0, LZ1/i;->intentDefinition_:LZ1/b;

    if-nez p0, :cond_0

    invoke-static {}, LZ1/b;->d()LZ1/b;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, LZ1/i;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_1

    const-class p1, LZ1/i;

    monitor-enter p1

    :try_start_0
    sget-object p0, LZ1/i;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/F;

    sget-object v0, LZ1/i;->DEFAULT_INSTANCE:LZ1/i;

    invoke-direct {p0, v0}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/J;)V

    sput-object p0, LZ1/i;->PARSER:Lcom/google/protobuf/x0;

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
    sget-object p0, LZ1/i;->DEFAULT_INSTANCE:LZ1/i;

    return-object p0

    :pswitch_2
    new-instance p0, LZ1/h;

    invoke-direct {p0}, LZ1/h;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, LZ1/i;

    invoke-direct {p0}, LZ1/i;-><init>()V

    return-object p0

    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "iconMdpiUrl_"

    const-string v2, "iconHdpiUrl_"

    const-string v3, "iconXhdpiUrl_"

    const-string v4, "iconXxhdpiUrl_"

    const-string v5, "iconXxxhdpiUrl_"

    const-string v6, "intentDefinition_"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0006\u0000\u0001\u0002\u0007\u0006\u0000\u0000\u0000\u0002\u1008\u0000\u0003\u1008\u0001\u0004\u1008\u0002\u0005\u1008\u0003\u0006\u1008\u0004\u0007\u1009\u0005"

    sget-object v0, LZ1/i;->DEFAULT_INSTANCE:LZ1/i;

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
