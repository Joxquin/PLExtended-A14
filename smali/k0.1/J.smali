.class public final Lk0/J;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lk0/K;


# direct methods
.method public constructor <init>(Lk0/K;Ljava/util/concurrent/Callable;)V
    .locals 0

    iput-object p1, p0, Lk0/J;->d:Lk0/K;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method public final done()V
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lk0/J;->d:Lk0/K;

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk0/H;

    invoke-virtual {v0, v1}, Lk0/K;->b(Lk0/H;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object p0, p0, Lk0/J;->d:Lk0/K;

    new-instance v1, Lk0/H;

    invoke-direct {v1, v0}, Lk0/H;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lk0/K;->b(Lk0/H;)V

    :goto_0
    return-void
.end method
