.class public final Le2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/search/SearchAlgorithm;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/android/launcher3/popup/PopupDataProvider;

.field public final c:Landroid/os/Handler;

.field public d:Le2/g;

.field public e:Landroid/app/search/SearchSession;

.field public f:Landroid/app/search/SearchSession;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/popup/PopupDataProvider;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le2/h;->a:Landroid/content/Context;

    iput-object p2, p0, Le2/h;->b:Lcom/android/launcher3/popup/PopupDataProvider;

    new-instance p1, Landroid/os/Handler;

    sget-object p2, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p2}, Lcom/android/launcher3/util/LooperExecutor;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Le2/h;->c:Landroid/os/Handler;

    sget-object p1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance p2, Le2/a;

    const/4 v0, 0x1

    invoke-direct {p2, v0, p0}, Le2/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final cancel(Z)V
    .locals 0

    iget-object p0, p0, Le2/h;->d:Le2/g;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Le2/g;->e:Z

    iget-object p1, p0, Le2/g;->f:Le2/h;

    iget-object p1, p1, Le2/h;->c:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final destroy()V
    .locals 3

    iget-object v0, p0, Le2/h;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Le2/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Le2/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final doSearch(Ljava/lang/String;Lcom/android/launcher3/search/SearchCallback;)V
    .locals 3

    iget-object v0, p0, Le2/h;->d:Le2/g;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Le2/g;->e:Z

    iget-object v1, v0, Le2/g;->f:Le2/h;

    iget-object v1, v1, Le2/h;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Le2/g;

    invoke-direct {v0, p0, p1, p2}, Le2/g;-><init>(Le2/h;Ljava/lang/String;Lcom/android/launcher3/search/SearchCallback;)V

    iput-object v0, p0, Le2/h;->d:Le2/g;

    iget-object p1, p0, Le2/h;->e:Landroid/app/search/SearchSession;

    if-nez p1, :cond_1

    invoke-virtual {v0}, Le2/g;->a()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Le2/h;->c:Landroid/os/Handler;

    new-instance p2, Le2/a;

    const/4 v1, 0x2

    invoke-direct {p2, v1, v0}, Le2/a;-><init>(ILjava/lang/Object;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    iget-object p1, p0, Le2/h;->e:Landroid/app/search/SearchSession;

    iget-object p0, p0, Le2/h;->d:Le2/g;

    iget-object p2, p0, Le2/g;->c:Landroid/app/search/Query;

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p1, p2, v0, p0}, Landroid/app/search/SearchSession;->query(Landroid/app/search/Query;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    :goto_0
    return-void
.end method
