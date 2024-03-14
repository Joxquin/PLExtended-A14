.class public Lcom/android/quickstep/BinderTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "BinderTracker"

.field private static final mMainThreadIgnoreIpcStack:Ljava/util/LinkedList;

.field private static final mMainThreadTraceStack:Ljava/util/LinkedList;

.field private static final sAllowedFrameworkClasses:Ljava/util/Set;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "android.os.IPowerManager"

    const-string v1, "android.os.IServiceManager"

    const-string v2, "android.view.IWindowSession"

    invoke-static {v2, v0, v1}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/quickstep/BinderTracker;->sAllowedFrameworkClasses:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/quickstep/BinderTracker;->mMainThreadTraceStack:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/quickstep/BinderTracker;->mMainThreadIgnoreIpcStack:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/util/TraceHelper;)V
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/BinderTracker;->lambda$startTracking$0(Lcom/android/launcher3/util/TraceHelper;)V

    return-void
.end method

.method public static bridge synthetic b()Ljava/util/LinkedList;
    .locals 1

    sget-object v0, Lcom/android/quickstep/BinderTracker;->mMainThreadIgnoreIpcStack:Ljava/util/LinkedList;

    return-object v0
.end method

.method public static bridge synthetic c()Ljava/util/LinkedList;
    .locals 1

    sget-object v0, Lcom/android/quickstep/BinderTracker;->mMainThreadTraceStack:Ljava/util/LinkedList;

    return-object v0
.end method

.method public static bridge synthetic d()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/android/quickstep/BinderTracker;->sAllowedFrameworkClasses:Ljava/util/Set;

    return-object v0
.end method

.method public static bridge synthetic e()Z
    .locals 1

    invoke-static {}, Lcom/android/quickstep/BinderTracker;->isMainThread()Z

    move-result v0

    return v0
.end method

.method private static isMainThread()Z
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$startTracking$0(Lcom/android/launcher3/util/TraceHelper;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Binder;->setProxyTransactListener(Landroid/os/Binder$ProxyTransactListener;)V

    sput-object p0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    return-void
.end method

.method public static startTracking(Ljava/util/function/Consumer;)Lcom/android/launcher3/util/SafeCloseable;
    .locals 2

    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    new-instance v1, Lcom/android/quickstep/BinderTracker$TraceHelperExtension;

    invoke-direct {v1, p0}, Lcom/android/quickstep/BinderTracker$TraceHelperExtension;-><init>(Ljava/util/function/Consumer;)V

    sput-object v1, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-static {v1}, Landroid/os/Binder;->setProxyTransactListener(Landroid/os/Binder$ProxyTransactListener;)V

    new-instance p0, Lcom/android/quickstep/z;

    invoke-direct {p0, v0}, Lcom/android/quickstep/z;-><init>(Lcom/android/launcher3/util/TraceHelper;)V

    return-object p0
.end method
