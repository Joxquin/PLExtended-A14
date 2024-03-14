.class public final LT2/n;
.super Lcom/google/protobuf/J;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# static fields
.field public static final ACCESSIBILITY_LABEL_FIELD_NUMBER:I = 0xd

.field public static final CURRENCY_ANSWER_FIELD_NUMBER:I = 0xa

.field private static final DEFAULT_INSTANCE:LT2/n;

.field public static final DICTIONARY_ANSWER_FIELD_NUMBER:I = 0x2

.field public static final FINANCE_ANSWER_FIELD_NUMBER:I = 0x3

.field public static final FLIGHT_STATUS_ANSWER_FIELD_NUMBER:I = 0xc

.field public static final GENERIC_ANSWER_FIELD_NUMBER:I = 0x4

.field public static final LOCAL_TIME_ANSWER_FIELD_NUMBER:I = 0xb

.field private static volatile PARSER:Lcom/google/protobuf/x0; = null

.field public static final SPORTS_ANSWER_FIELD_NUMBER:I = 0x5

.field public static final SUGGESTION_TEXT_FIELD_NUMBER:I = 0x1

.field public static final SUNRISE_SUNSET_ANSWER_FIELD_NUMBER:I = 0x6

.field public static final TRANSLATION_ANSWER_FIELD_NUMBER:I = 0x7

.field public static final WEATHER_ANSWER_FIELD_NUMBER:I = 0x8

.field public static final WHEN_IS_ANSWER_FIELD_NUMBER:I = 0x9


# instance fields
.field private accessibilityLabel_:Ljava/lang/String;

.field private answerDataCase_:I

.field private answerData_:Ljava/lang/Object;

.field private bitField0_:I

.field private suggestionText_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LT2/n;

    invoke-direct {v0}, LT2/n;-><init>()V

    sput-object v0, LT2/n;->DEFAULT_INSTANCE:LT2/n;

    const-class v1, LT2/n;

    invoke-static {v1, v0}, Lcom/google/protobuf/J;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/J;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/J;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LT2/n;->answerDataCase_:I

    const-string v0, ""

    iput-object v0, p0, LT2/n;->suggestionText_:Ljava/lang/String;

    iput-object v0, p0, LT2/n;->accessibilityLabel_:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a()LT2/n;
    .locals 1

    sget-object v0, LT2/n;->DEFAULT_INSTANCE:LT2/n;

    return-object v0
.end method

.method public static b()LT2/n;
    .locals 1

    sget-object v0, LT2/n;->DEFAULT_INSTANCE:LT2/n;

    return-object v0
.end method


# virtual methods
.method public final c()LT2/i;
    .locals 2

    iget v0, p0, LT2/n;->answerDataCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object p0, p0, LT2/n;->answerData_:Ljava/lang/Object;

    check-cast p0, LT2/i;

    return-object p0

    :cond_0
    invoke-static {}, LT2/i;->d()LT2/i;

    move-result-object p0

    return-object p0
.end method

.method public final d()LT2/q;
    .locals 2

    iget v0, p0, LT2/n;->answerDataCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object p0, p0, LT2/n;->answerData_:Ljava/lang/Object;

    check-cast p0, LT2/q;

    return-object p0

    :cond_0
    invoke-static {}, LT2/q;->d()LT2/q;

    move-result-object p0

    return-object p0
.end method

.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;
    .locals 17

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    sget-object v0, LT2/n;->PARSER:Lcom/google/protobuf/x0;

    if-nez v0, :cond_1

    const-class v1, LT2/n;

    monitor-enter v1

    :try_start_0
    sget-object v0, LT2/n;->PARSER:Lcom/google/protobuf/x0;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/F;

    sget-object v2, LT2/n;->DEFAULT_INSTANCE:LT2/n;

    invoke-direct {v0, v2}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/J;)V

    sput-object v0, LT2/n;->PARSER:Lcom/google/protobuf/x0;

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, LT2/n;->DEFAULT_INSTANCE:LT2/n;

    return-object v0

    :pswitch_2
    new-instance v0, LT2/a;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, LT2/a;-><init>(I)V

    return-object v0

    :pswitch_3
    new-instance v0, LT2/n;

    invoke-direct {v0}, LT2/n;-><init>()V

    return-object v0

    :pswitch_4
    const-string v1, "answerData_"

    const-string v2, "answerDataCase_"

    const-string v3, "bitField0_"

    const-string v4, "suggestionText_"

    const-class v5, LT2/d;

    const-class v6, LT2/f;

    const-class v7, LT2/i;

    const-class v8, LT2/m;

    const-class v9, LT2/o;

    const-class v10, LT2/p;

    const-class v11, LT2/q;

    const-class v12, LT2/r;

    const-class v13, LT2/c;

    const-class v14, LT2/j;

    const-class v15, LT2/h;

    const-string v16, "accessibilityLabel_"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "\u0001\r\u0001\u0001\u0001\r\r\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u103c\u0000\u0003\u103c\u0000\u0004\u103c\u0000\u0005\u103c\u0000\u0006\u103c\u0000\u0007\u103c\u0000\u0008\u103c\u0000\t\u103c\u0000\n\u103c\u0000\u000b\u103c\u0000\u000c\u103c\u0000\r\u1008\u000c"

    sget-object v2, LT2/n;->DEFAULT_INSTANCE:LT2/n;

    new-instance v3, Lcom/google/protobuf/B0;

    invoke-direct {v3, v2, v1, v0}, Lcom/google/protobuf/B0;-><init>(Lcom/google/protobuf/J;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    :pswitch_5
    const/4 v0, 0x0

    return-object v0

    :pswitch_6
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

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
    .locals 1

    iget p0, p0, LT2/n;->answerDataCase_:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final f()Z
    .locals 1

    iget p0, p0, LT2/n;->answerDataCase_:I

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
