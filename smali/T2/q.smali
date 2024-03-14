.class public final LT2/q;
.super Lcom/google/protobuf/J;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# static fields
.field public static final ATTRIBUTION_FIELD_NUMBER:I = 0x7

.field public static final CONDITION_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:LT2/q;

.field public static final FORMATTED_ADDRESS_FIELD_NUMBER:I = 0x4

.field public static final FORMATTED_DATE_TIME_FIELD_NUMBER:I = 0x5

.field public static final ICON_URL_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/x0; = null

.field public static final TEMPERATURE_FIELD_NUMBER:I = 0x1

.field public static final UNIT_FIELD_NUMBER:I = 0x2


# instance fields
.field private attribution_:Ljava/lang/String;

.field private bitField0_:I

.field private condition_:Ljava/lang/String;

.field private formattedAddress_:Ljava/lang/String;

.field private formattedDateTime_:Ljava/lang/String;

.field private iconUrl_:Ljava/lang/String;

.field private temperature_:I

.field private unit_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LT2/q;

    invoke-direct {v0}, LT2/q;-><init>()V

    sput-object v0, LT2/q;->DEFAULT_INSTANCE:LT2/q;

    const-class v1, LT2/q;

    invoke-static {v1, v0}, Lcom/google/protobuf/J;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/J;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/J;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LT2/q;->unit_:Ljava/lang/String;

    iput-object v0, p0, LT2/q;->iconUrl_:Ljava/lang/String;

    iput-object v0, p0, LT2/q;->formattedAddress_:Ljava/lang/String;

    iput-object v0, p0, LT2/q;->formattedDateTime_:Ljava/lang/String;

    iput-object v0, p0, LT2/q;->condition_:Ljava/lang/String;

    iput-object v0, p0, LT2/q;->attribution_:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a()LT2/q;
    .locals 1

    sget-object v0, LT2/q;->DEFAULT_INSTANCE:LT2/q;

    return-object v0
.end method

.method public static d()LT2/q;
    .locals 1

    sget-object v0, LT2/q;->DEFAULT_INSTANCE:LT2/q;

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LT2/q;->attribution_:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LT2/q;->condition_:Ljava/lang/String;

    return-object p0
.end method

.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, LT2/q;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_1

    const-class p1, LT2/q;

    monitor-enter p1

    :try_start_0
    sget-object p0, LT2/q;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/F;

    sget-object v0, LT2/q;->DEFAULT_INSTANCE:LT2/q;

    invoke-direct {p0, v0}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/J;)V

    sput-object p0, LT2/q;->PARSER:Lcom/google/protobuf/x0;

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
    sget-object p0, LT2/q;->DEFAULT_INSTANCE:LT2/q;

    return-object p0

    :pswitch_2
    new-instance p0, LT2/a;

    const/16 p1, 0xd

    invoke-direct {p0, p1}, LT2/a;-><init>(I)V

    return-object p0

    :pswitch_3
    new-instance p0, LT2/q;

    invoke-direct {p0}, LT2/q;-><init>()V

    return-object p0

    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "temperature_"

    const-string v2, "unit_"

    const-string v3, "iconUrl_"

    const-string v4, "formattedAddress_"

    const-string v5, "formattedDateTime_"

    const-string v6, "condition_"

    const-string v7, "attribution_"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1008\u0003\u0005\u1008\u0004\u0006\u1008\u0005\u0007\u1008\u0006"

    sget-object v0, LT2/q;->DEFAULT_INSTANCE:LT2/q;

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

.method public final e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LT2/q;->formattedAddress_:Ljava/lang/String;

    return-object p0
.end method

.method public final f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LT2/q;->formattedDateTime_:Ljava/lang/String;

    return-object p0
.end method

.method public final g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LT2/q;->iconUrl_:Ljava/lang/String;

    return-object p0
.end method

.method public final h()I
    .locals 0

    iget p0, p0, LT2/q;->temperature_:I

    return p0
.end method

.method public final i()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LT2/q;->unit_:Ljava/lang/String;

    return-object p0
.end method
