.class Lcom/android/quickstep/BinderTracker$TraceHelperExtension;
.super Lcom/android/launcher3/util/TraceHelper;
.source "SourceFile"

# interfaces
.implements Landroid/os/Binder$ProxyTransactListener;


# instance fields
.field private final mUnexpectedTransactionCallback:Ljava/util/function/Consumer;


# direct methods
.method public constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/util/TraceHelper;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/BinderTracker$TraceHelperExtension;->mUnexpectedTransactionCallback:Ljava/util/function/Consumer;

    return-void
.end method

.method public static synthetic e(ILjava/lang/String;)V
    .locals 0

    invoke-static {p1, p0}, Lcom/android/quickstep/BinderTracker$TraceHelperExtension;->lambda$beginAsyncSection$0(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic f(ILjava/lang/String;)V
    .locals 0

    invoke-static {p1, p0}, Lcom/android/quickstep/BinderTracker$TraceHelperExtension;->lambda$allowIpcs$1(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic lambda$allowIpcs$1(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    invoke-static {}, Lcom/android/quickstep/BinderTracker;->c()Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/quickstep/BinderTracker;->b()Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private static synthetic lambda$beginAsyncSection$0(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    invoke-static {}, Lcom/android/quickstep/BinderTracker;->c()Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public allowIpcs(Ljava/lang/String;)Lcom/android/launcher3/util/SafeCloseable;
    .locals 1

    invoke-static {}, Lcom/android/quickstep/BinderTracker;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/launcher3/util/TraceHelper;->allowIpcs(Ljava/lang/String;)Lcom/android/launcher3/util/SafeCloseable;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/quickstep/BinderTracker;->c()Ljava/util/LinkedList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/quickstep/BinderTracker;->b()Ljava/util/LinkedList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object p0, Lo3/d;->d:Lkotlin/random/Random$Default;

    invoke-virtual {p0}, Lkotlin/random/Random$Default;->a()I

    move-result p0

    invoke-static {p1, p0}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    new-instance v0, Lcom/android/quickstep/B;

    invoke-direct {v0, p1, p0}, Lcom/android/quickstep/B;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public beginAsyncSection(Ljava/lang/String;)Lcom/android/launcher3/util/SafeCloseable;
    .locals 1

    invoke-static {}, Lcom/android/quickstep/BinderTracker;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/launcher3/util/TraceHelper;->beginAsyncSection(Ljava/lang/String;)Lcom/android/launcher3/util/SafeCloseable;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/quickstep/BinderTracker;->c()Ljava/util/LinkedList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object p0, Lo3/d;->d:Lkotlin/random/Random$Default;

    invoke-virtual {p0}, Lkotlin/random/Random$Default;->a()I

    move-result p0

    invoke-static {p1, p0}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    new-instance v0, Lcom/android/quickstep/A;

    invoke-direct {v0, p1, p0}, Lcom/android/quickstep/A;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public beginSection(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/android/quickstep/BinderTracker;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/quickstep/BinderTracker;->c()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)V

    return-void
.end method

.method public endSection()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher3/util/TraceHelper;->endSection()V

    invoke-static {}, Lcom/android/quickstep/BinderTracker;->e()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/quickstep/BinderTracker;->c()Ljava/util/LinkedList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onTransactEnded(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onTransactStarted(Landroid/os/IBinder;I)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public onTransactStarted(Landroid/os/IBinder;II)Ljava/lang/Object;
    .locals 4

    const-string v0, "BinderTracker"

    .line 2
    invoke-static {}, Lcom/android/quickstep/BinderTracker;->e()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    and-int/2addr p3, v1

    if-ne p3, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/quickstep/BinderTracker;->b()Ljava/util/LinkedList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 4
    :try_start_0
    invoke-interface {p1}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/android/quickstep/BinderTracker;->d()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    return-object v2

    :catch_0
    move-exception v1

    const-string v3, "Error getting IPC descriptor"

    .line 6
    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-nez p3, :cond_2

    .line 8
    iget-object p0, p0, Lcom/android/quickstep/BinderTracker$TraceHelperExtension;->mUnexpectedTransactionCallback:Ljava/util/function/Consumer;

    new-instance p1, Lcom/android/quickstep/BinderTracker$BinderCallSite;

    invoke-static {}, Lcom/android/quickstep/BinderTracker;->c()Ljava/util/LinkedList;

    move-result-object p3

    .line 9
    invoke-virtual {p3}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-direct {p1, p3, v1, p2}, Lcom/android/quickstep/BinderTracker$BinderCallSite;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 10
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "MainThread-IPC "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ignored due to "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-object v2
.end method
