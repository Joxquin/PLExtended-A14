.class public final Lf2/A;
.super Lcom/google/protobuf/J;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# static fields
.field private static final DEFAULT_INSTANCE:Lf2/A;

.field public static final FEATURE_FIELD_NUMBER:I = 0x8

.field private static volatile PARSER:Lcom/google/protobuf/x0; = null

.field public static final QUERY_FIELD_NUMBER:I = 0x1

.field public static final RESPONSE_ID_FIELD_NUMBER:I = 0x6

.field public static final SUGGESTION_FIELD_NUMBER:I = 0x2

.field public static final TIMING_INFO_FIELD_NUMBER:I = 0x3

.field public static final USER_NOTIFICATION_FIELD_NUMBER:I = 0x4

.field public static final VERSION_CODE_FIELD_NUMBER:I = 0x7

.field public static final VERSION_FIELD_NUMBER:I = 0x5


# instance fields
.field private bitField0_:I

.field private feature_:Lcom/google/protobuf/MapFieldLite;

.field private query_:Ljava/lang/String;

.field private responseId_:Ljava/lang/String;

.field private suggestion_:Lcom/google/protobuf/S;

.field private timingInfo_:Lf2/D0;

.field private userNotification_:Lf2/T0;

.field private versionCode_:I

.field private version_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lf2/A;

    invoke-direct {v0}, Lf2/A;-><init>()V

    sput-object v0, Lf2/A;->DEFAULT_INSTANCE:Lf2/A;

    const-class v1, Lf2/A;

    invoke-static {v1, v0}, Lcom/google/protobuf/J;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/J;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/J;-><init>()V

    sget-object v0, Lcom/google/protobuf/MapFieldLite;->d:Lcom/google/protobuf/MapFieldLite;

    iput-object v0, p0, Lf2/A;->feature_:Lcom/google/protobuf/MapFieldLite;

    const-string v0, ""

    iput-object v0, p0, Lf2/A;->query_:Ljava/lang/String;

    iput-object v0, p0, Lf2/A;->responseId_:Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/A0;->g:Lcom/google/protobuf/A0;

    iput-object v0, p0, Lf2/A;->suggestion_:Lcom/google/protobuf/S;

    return-void
.end method

.method public static bridge synthetic a()Lf2/A;
    .locals 1

    sget-object v0, Lf2/A;->DEFAULT_INSTANCE:Lf2/A;

    return-object v0
.end method

.method public static b()Lf2/A;
    .locals 1

    sget-object v0, Lf2/A;->DEFAULT_INSTANCE:Lf2/A;

    return-object v0
.end method

.method public static g([B)Lf2/A;
    .locals 1

    sget-object v0, Lf2/A;->DEFAULT_INSTANCE:Lf2/A;

    invoke-static {v0, p0}, Lcom/google/protobuf/J;->parseFrom(Lcom/google/protobuf/J;[B)Lcom/google/protobuf/J;

    move-result-object p0

    check-cast p0, Lf2/A;

    return-object p0
.end method


# virtual methods
.method public final c(I)Z
    .locals 1

    iget-object p0, p0, Lf2/A;->feature_:Lcom/google/protobuf/MapFieldLite;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf2/A;->responseId_:Ljava/lang/String;

    return-object p0
.end method

.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;
    .locals 12

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lf2/A;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_1

    const-class p1, Lf2/A;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lf2/A;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/F;

    sget-object v0, Lf2/A;->DEFAULT_INSTANCE:Lf2/A;

    invoke-direct {p0, v0}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/J;)V

    sput-object p0, Lf2/A;->PARSER:Lcom/google/protobuf/x0;

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
    sget-object p0, Lf2/A;->DEFAULT_INSTANCE:Lf2/A;

    return-object p0

    :pswitch_2
    new-instance p0, Lf2/x;

    invoke-direct {p0}, Lf2/x;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, Lf2/A;

    invoke-direct {p0}, Lf2/A;-><init>()V

    return-object p0

    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "query_"

    const-string v2, "suggestion_"

    const-class v3, Lf2/p0;

    const-string v4, "timingInfo_"

    const-string v5, "userNotification_"

    const-string v6, "version_"

    sget-object v7, Lf2/z;->a:Lf2/z;

    const-string v8, "responseId_"

    const-string v9, "versionCode_"

    const-string v10, "feature_"

    sget-object v11, Lf2/y;->a:Lcom/google/protobuf/i0;

    filled-new-array/range {v0 .. v11}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0008\u0000\u0001\u0001\u0008\u0008\u0001\u0001\u0000\u0001\u1008\u0000\u0002\u001b\u0003\u1009\u0002\u0004\u1009\u0003\u0005\u100c\u0004\u0006\u1008\u0001\u0007\u1004\u0005\u00082"

    sget-object v0, Lf2/A;->DEFAULT_INSTANCE:Lf2/A;

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

.method public final e()Lcom/google/protobuf/S;
    .locals 0

    iget-object p0, p0, Lf2/A;->suggestion_:Lcom/google/protobuf/S;

    return-object p0
.end method

.method public final f()Lf2/D0;
    .locals 0

    iget-object p0, p0, Lf2/A;->timingInfo_:Lf2/D0;

    if-nez p0, :cond_0

    invoke-static {}, Lf2/D0;->b()Lf2/D0;

    move-result-object p0

    :cond_0
    return-object p0
.end method
