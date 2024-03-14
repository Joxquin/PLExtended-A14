.class public Lcom/android/launcher3/util/TraceHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FLAG_ALLOW_BINDER_TRACKING:I = 0x1

.field public static final FLAG_IGNORE_BINDERS:I = 0x2

.field public static INSTANCE:Lcom/android/launcher3/util/TraceHelper;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/TraceHelper;

    invoke-direct {v0}, Lcom/android/launcher3/util/TraceHelper;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/android/launcher3/util/TraceHelper;->lambda$allowIpcs$2()V

    return-void
.end method

.method public static allowIpcs(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 1

    .line 6
    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/TraceHelper;->allowIpcs(Ljava/lang/String;)Lcom/android/launcher3/util/SafeCloseable;

    move-result-object p0

    .line 7
    :try_start_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 8
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    .line 9
    :try_start_1
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lcom/android/launcher3/util/TraceHelper;->lambda$beginAsyncSection$0()V

    return-void
.end method

.method public static synthetic c(ILjava/lang/String;)V
    .locals 0

    invoke-static {p1, p0}, Lcom/android/launcher3/util/TraceHelper;->lambda$beginAsyncSection$1(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic d(ILjava/lang/String;)V
    .locals 0

    invoke-static {p1, p0}, Lcom/android/launcher3/util/TraceHelper;->lambda$allowIpcs$3(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic lambda$allowIpcs$2()V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$allowIpcs$3(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic lambda$beginAsyncSection$0()V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$beginAsyncSection$1(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public allowIpcs(Ljava/lang/String;)Lcom/android/launcher3/util/SafeCloseable;
    .locals 1

    .line 1
    sget-boolean p0, Lcom/android/launcher3/Utilities;->ATLEAST_Q:Z

    if-nez p0, :cond_0

    .line 2
    new-instance p0, Lcom/android/launcher3/util/G;

    invoke-direct {p0}, Lcom/android/launcher3/util/G;-><init>()V

    return-object p0

    .line 3
    :cond_0
    sget-object p0, Lo3/d;->d:Lkotlin/random/Random$Default;

    invoke-virtual {p0}, Lkotlin/random/Random$Default;->a()I

    move-result p0

    .line 4
    invoke-static {p1, p0}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    .line 5
    new-instance v0, Lcom/android/launcher3/util/H;

    invoke-direct {v0, p1, p0}, Lcom/android/launcher3/util/H;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public beginAsyncSection(Ljava/lang/String;)Lcom/android/launcher3/util/SafeCloseable;
    .locals 1

    sget-boolean p0, Lcom/android/launcher3/Utilities;->ATLEAST_Q:Z

    if-nez p0, :cond_0

    new-instance p0, Lcom/android/launcher3/util/E;

    invoke-direct {p0}, Lcom/android/launcher3/util/E;-><init>()V

    return-object p0

    :cond_0
    sget-object p0, Lo3/d;->d:Lkotlin/random/Random$Default;

    invoke-virtual {p0}, Lkotlin/random/Random$Default;->a()I

    move-result p0

    invoke-static {p1, p0}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    new-instance v0, Lcom/android/launcher3/util/F;

    invoke-direct {v0, p1, p0}, Lcom/android/launcher3/util/F;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public beginSection(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    return-void
.end method

.method public endSection()V
    .locals 0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
