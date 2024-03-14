.class public final LB0/b;
.super Lcom/google/protobuf/J;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# static fields
.field public static final CLASSNAME_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:LB0/b;

.field public static final MAGIC_NUMBER_FIELD_NUMBER:I = 0x1

.field public static final PACKAGE_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/x0; = null

.field public static final REAL_TO_ELAPSED_TIME_OFFSET_NANOS_FIELD_NUMBER:I = 0x5

.field public static final WINDOWDATA_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private classname_:Lcom/google/protobuf/S;

.field private magicNumber_:J

.field private package_:Ljava/lang/String;

.field private realToElapsedTimeOffsetNanos_:J

.field private windowData_:Lcom/google/protobuf/S;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LB0/b;

    invoke-direct {v0}, LB0/b;-><init>()V

    sput-object v0, LB0/b;->DEFAULT_INSTANCE:LB0/b;

    const-class v1, LB0/b;

    invoke-static {v1, v0}, Lcom/google/protobuf/J;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/J;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/protobuf/J;-><init>()V

    sget-object v0, Lcom/google/protobuf/A0;->g:Lcom/google/protobuf/A0;

    iput-object v0, p0, LB0/b;->windowData_:Lcom/google/protobuf/S;

    const-string v1, ""

    iput-object v1, p0, LB0/b;->package_:Ljava/lang/String;

    iput-object v0, p0, LB0/b;->classname_:Lcom/google/protobuf/S;

    return-void
.end method

.method public static synthetic a()LB0/b;
    .locals 1

    sget-object v0, LB0/b;->DEFAULT_INSTANCE:LB0/b;

    return-object v0
.end method

.method public static b(LB0/b;J)V
    .locals 1

    iget v0, p0, LB0/b;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, LB0/b;->bitField0_:I

    iput-wide p1, p0, LB0/b;->magicNumber_:J

    return-void
.end method

.method public static c(LB0/b;Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, LB0/b;->classname_:Lcom/google/protobuf/S;

    invoke-interface {v0}, Lcom/google/protobuf/S;->g()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/protobuf/J;->mutableCopy(Lcom/google/protobuf/S;)Lcom/google/protobuf/S;

    move-result-object v0

    iput-object v0, p0, LB0/b;->classname_:Lcom/google/protobuf/S;

    :cond_0
    iget-object p0, p0, LB0/b;->classname_:Lcom/google/protobuf/S;

    invoke-static {p1, p0}, Lcom/google/protobuf/b;->addAll(Ljava/lang/Iterable;Lcom/google/protobuf/S;)V

    return-void
.end method

.method public static d(LB0/b;J)V
    .locals 1

    iget v0, p0, LB0/b;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, LB0/b;->bitField0_:I

    iput-wide p1, p0, LB0/b;->realToElapsedTimeOffsetNanos_:J

    return-void
.end method

.method public static e(LB0/b;Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, LB0/b;->windowData_:Lcom/google/protobuf/S;

    invoke-interface {v0}, Lcom/google/protobuf/S;->g()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/protobuf/J;->mutableCopy(Lcom/google/protobuf/S;)Lcom/google/protobuf/S;

    move-result-object v0

    iput-object v0, p0, LB0/b;->windowData_:Lcom/google/protobuf/S;

    :cond_0
    iget-object p0, p0, LB0/b;->windowData_:Lcom/google/protobuf/S;

    invoke-static {p1, p0}, Lcom/google/protobuf/b;->addAll(Ljava/lang/Iterable;Lcom/google/protobuf/S;)V

    return-void
.end method

.method public static f(LB0/b;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, LB0/b;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, LB0/b;->bitField0_:I

    iput-object p1, p0, LB0/b;->package_:Ljava/lang/String;

    return-void
.end method

.method public static g()LB0/a;
    .locals 1

    sget-object v0, LB0/b;->DEFAULT_INSTANCE:LB0/b;

    invoke-virtual {v0}, Lcom/google/protobuf/J;->createBuilder()Lcom/google/protobuf/E;

    move-result-object v0

    check-cast v0, LB0/a;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, LB0/b;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_1

    const-class p1, LB0/b;

    monitor-enter p1

    :try_start_0
    sget-object p0, LB0/b;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/F;

    sget-object v0, LB0/b;->DEFAULT_INSTANCE:LB0/b;

    invoke-direct {p0, v0}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/J;)V

    sput-object p0, LB0/b;->PARSER:Lcom/google/protobuf/x0;

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
    sget-object p0, LB0/b;->DEFAULT_INSTANCE:LB0/b;

    return-object p0

    :pswitch_2
    new-instance p0, LB0/a;

    invoke-direct {p0}, LB0/a;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, LB0/b;

    invoke-direct {p0}, LB0/b;-><init>()V

    return-object p0

    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "magicNumber_"

    const-string v2, "windowData_"

    const-class v3, LB0/h;

    const-string v4, "package_"

    const-string v5, "classname_"

    const-string v6, "realToElapsedTimeOffsetNanos_"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001\u1005\u0000\u0002\u001b\u0003\u1008\u0001\u0004\u001a\u0005\u1005\u0002"

    sget-object v0, LB0/b;->DEFAULT_INSTANCE:LB0/b;

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
