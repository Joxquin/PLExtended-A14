.class public final LT2/f;
.super Lcom/google/protobuf/J;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# static fields
.field private static final DEFAULT_INSTANCE:LT2/f;

.field public static final EXCHANGE_NAME_FIELD_NUMBER:I = 0x2

.field public static final EXCHANGE_TIMEZONE_FIELD_NUMBER:I = 0x4

.field public static final FORMATTED_PRICE_FIELD_NUMBER:I = 0x6

.field public static final FORMATTED_TIME_FIELD_NUMBER:I = 0x3

.field public static final IS_GREEN_NEGATIVE_FIELD_NUMBER:I = 0x8

.field private static volatile PARSER:Lcom/google/protobuf/x0; = null

.field public static final PRICE_CHANGE_FIELD_NUMBER:I = 0x7

.field public static final SYMBOL_FIELD_NUMBER:I = 0x1

.field public static final USER_INTENT_FIELD_NUMBER:I = 0x5


# instance fields
.field private bitField0_:I

.field private exchangeName_:Ljava/lang/String;

.field private exchangeTimezone_:Ljava/lang/String;

.field private formattedPrice_:Ljava/lang/String;

.field private formattedTime_:Ljava/lang/String;

.field private isGreenNegative_:Z

.field private priceChange_:Ljava/lang/String;

.field private symbol_:Ljava/lang/String;

.field private userIntent_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LT2/f;

    invoke-direct {v0}, LT2/f;-><init>()V

    sput-object v0, LT2/f;->DEFAULT_INSTANCE:LT2/f;

    const-class v1, LT2/f;

    invoke-static {v1, v0}, Lcom/google/protobuf/J;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/J;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/J;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LT2/f;->symbol_:Ljava/lang/String;

    iput-object v0, p0, LT2/f;->exchangeName_:Ljava/lang/String;

    iput-object v0, p0, LT2/f;->formattedTime_:Ljava/lang/String;

    iput-object v0, p0, LT2/f;->exchangeTimezone_:Ljava/lang/String;

    iput-object v0, p0, LT2/f;->formattedPrice_:Ljava/lang/String;

    iput-object v0, p0, LT2/f;->priceChange_:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a()LT2/f;
    .locals 1

    sget-object v0, LT2/f;->DEFAULT_INSTANCE:LT2/f;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, LT2/f;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_1

    const-class p1, LT2/f;

    monitor-enter p1

    :try_start_0
    sget-object p0, LT2/f;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/F;

    sget-object v0, LT2/f;->DEFAULT_INSTANCE:LT2/f;

    invoke-direct {p0, v0}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/J;)V

    sput-object p0, LT2/f;->PARSER:Lcom/google/protobuf/x0;

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
    sget-object p0, LT2/f;->DEFAULT_INSTANCE:LT2/f;

    return-object p0

    :pswitch_2
    new-instance p0, LT2/a;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, LT2/a;-><init>(I)V

    return-object p0

    :pswitch_3
    new-instance p0, LT2/f;

    invoke-direct {p0}, LT2/f;-><init>()V

    return-object p0

    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "symbol_"

    const-string v2, "exchangeName_"

    const-string v3, "formattedTime_"

    const-string v4, "exchangeTimezone_"

    const-string v5, "userIntent_"

    sget-object v6, LT2/e;->a:LT2/e;

    const-string v7, "formattedPrice_"

    const-string v8, "priceChange_"

    const-string v9, "isGreenNegative_"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1008\u0003\u0005\u100c\u0004\u0006\u1008\u0005\u0007\u1008\u0006\u0008\u1007\u0007"

    sget-object v0, LT2/f;->DEFAULT_INSTANCE:LT2/f;

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

    nop

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
