.class public final synthetic Lk0/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lk0/K;


# direct methods
.method public synthetic constructor <init>(Lk0/K;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk0/I;->d:Lk0/K;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lk0/I;->d:Lk0/K;

    iget-object v0, p0, Lk0/K;->d:Lk0/H;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, v0, Lk0/H;->a:Ljava/lang/Object;

    if-eqz v1, :cond_2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lk0/K;->a:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk0/E;

    invoke-interface {v2, v1}, Lk0/E;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    iget-object v0, v0, Lk0/H;->b:Ljava/lang/Throwable;

    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lk0/K;->b:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "Lottie encountered an error but no failure listener was added:"

    invoke-static {v1, v0}, Lw0/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    goto :goto_2

    :cond_3
    :try_start_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk0/E;

    invoke-interface {v2, v0}, Lk0/E;->a(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :cond_4
    monitor-exit p0

    :goto_2
    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
