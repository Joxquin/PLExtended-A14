.class public final Lf2/w;
.super Lcom/google/protobuf/J;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# static fields
.field public static final CURSOR_POSITION_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lf2/w;

.field public static final ENTRY_POINT_FIELD_NUMBER:I = 0x4

.field public static final FEATURE_FIELD_NUMBER:I = 0x8

.field public static final NEW_SESSION_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/x0; = null

.field public static final QUERY_BUILDER_TAP_FIELD_NUMBER:I = 0x3

.field public static final QUERY_FIELD_NUMBER:I = 0x1

.field public static final REQUEST_TIMESTAMP_MS_FIELD_NUMBER:I = 0x5

.field public static final VERSION_CODE_FIELD_NUMBER:I = 0x9


# instance fields
.field private bitField0_:I

.field private cursorPosition_:I

.field private entryPoint_:I

.field private feature_:Lcom/google/protobuf/MapFieldLite;

.field private newSession_:Z

.field private queryBuilderTap_:Z

.field private query_:Ljava/lang/String;

.field private requestTimestampMs_:J

.field private versionCode_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lf2/w;

    invoke-direct {v0}, Lf2/w;-><init>()V

    sput-object v0, Lf2/w;->DEFAULT_INSTANCE:Lf2/w;

    const-class v1, Lf2/w;

    invoke-static {v1, v0}, Lcom/google/protobuf/J;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/J;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/J;-><init>()V

    sget-object v0, Lcom/google/protobuf/MapFieldLite;->d:Lcom/google/protobuf/MapFieldLite;

    iput-object v0, p0, Lf2/w;->feature_:Lcom/google/protobuf/MapFieldLite;

    const-string v0, ""

    iput-object v0, p0, Lf2/w;->query_:Ljava/lang/String;

    return-void
.end method

.method public static a(Lf2/w;)Lcom/google/protobuf/MapFieldLite;
    .locals 1

    iget-object v0, p0, Lf2/w;->feature_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lf2/w;->feature_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->f()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lf2/w;->feature_:Lcom/google/protobuf/MapFieldLite;

    :cond_0
    iget-object p0, p0, Lf2/w;->feature_:Lcom/google/protobuf/MapFieldLite;

    return-object p0
.end method

.method public static b(Lf2/w;Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchEntryPoint;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchEntryPoint;->getNumber()I

    move-result p1

    iput p1, p0, Lf2/w;->entryPoint_:I

    iget p1, p0, Lf2/w;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lf2/w;->bitField0_:I

    return-void
.end method

.method public static c(Lf2/w;Z)V
    .locals 1

    iget v0, p0, Lf2/w;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lf2/w;->bitField0_:I

    iput-boolean p1, p0, Lf2/w;->newSession_:Z

    return-void
.end method

.method public static d(Lf2/w;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lf2/w;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lf2/w;->bitField0_:I

    iput-object p1, p0, Lf2/w;->query_:Ljava/lang/String;

    return-void
.end method

.method public static e(Lf2/w;J)V
    .locals 1

    iget v0, p0, Lf2/w;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lf2/w;->bitField0_:I

    iput-wide p1, p0, Lf2/w;->requestTimestampMs_:J

    return-void
.end method

.method public static f(Lf2/w;)V
    .locals 1

    iget v0, p0, Lf2/w;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lf2/w;->bitField0_:I

    const/4 v0, 0x1

    iput v0, p0, Lf2/w;->versionCode_:I

    return-void
.end method

.method public static bridge synthetic g()Lf2/w;
    .locals 1

    sget-object v0, Lf2/w;->DEFAULT_INSTANCE:Lf2/w;

    return-object v0
.end method

.method public static h()Lf2/w;
    .locals 1

    sget-object v0, Lf2/w;->DEFAULT_INSTANCE:Lf2/w;

    return-object v0
.end method

.method public static i()Lf2/u;
    .locals 1

    sget-object v0, Lf2/w;->DEFAULT_INSTANCE:Lf2/w;

    invoke-virtual {v0}, Lcom/google/protobuf/J;->createBuilder()Lcom/google/protobuf/E;

    move-result-object v0

    check-cast v0, Lf2/u;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lf2/w;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_1

    const-class p1, Lf2/w;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lf2/w;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/F;

    sget-object v0, Lf2/w;->DEFAULT_INSTANCE:Lf2/w;

    invoke-direct {p0, v0}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/J;)V

    sput-object p0, Lf2/w;->PARSER:Lcom/google/protobuf/x0;

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
    sget-object p0, Lf2/w;->DEFAULT_INSTANCE:Lf2/w;

    return-object p0

    :pswitch_2
    new-instance p0, Lf2/u;

    invoke-direct {p0}, Lf2/u;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, Lf2/w;

    invoke-direct {p0}, Lf2/w;-><init>()V

    return-object p0

    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "query_"

    const-string v2, "newSession_"

    const-string v3, "queryBuilderTap_"

    const-string v4, "entryPoint_"

    sget-object v5, Lf2/U;->a:Lf2/U;

    const-string v6, "requestTimestampMs_"

    const-string v7, "cursorPosition_"

    const-string v8, "feature_"

    sget-object v9, Lf2/v;->a:Lcom/google/protobuf/i0;

    const-string v10, "versionCode_"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0008\u0000\u0001\u0001\t\u0008\u0001\u0000\u0000\u0001\u1008\u0000\u0002\u1007\u0002\u0003\u1007\u0003\u0004\u100c\u0004\u0005\u1003\u0005\u0006\u1004\u0001\u00082\t\u1004\u0006"

    sget-object v0, Lf2/w;->DEFAULT_INSTANCE:Lf2/w;

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
