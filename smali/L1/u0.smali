.class public final LL1/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final b:Landroid/os/Handler;

.field public final c:LL1/o;

.field public final d:Ljava/util/List;

.field public final e:Ljava/lang/StringBuilder;

.field public final f:Landroid/graphics/RectF;

.field public final g:LL1/k0;

.field public final h:LK1/a;

.field public i:I

.field public j:Landroid/text/SpannableString;

.field public k:I

.field public l:I

.field public m:I


# direct methods
.method public constructor <init>(LK1/a;LL1/K;LL1/o;LL1/d0;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LL1/u0;->d:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, LL1/u0;->e:Ljava/lang/StringBuilder;

    const/4 v0, -0x1

    iput v0, p0, LL1/u0;->i:I

    iput v0, p0, LL1/u0;->k:I

    iput v0, p0, LL1/u0;->l:I

    iput v0, p0, LL1/u0;->m:I

    iput-object p1, p0, LL1/u0;->h:LK1/a;

    iput-object p2, p0, LL1/u0;->a:Landroid/widget/TextView;

    iput-object p3, p0, LL1/u0;->c:LL1/o;

    iput-object p4, p0, LL1/u0;->g:LL1/k0;

    iput-object p5, p0, LL1/u0;->b:Landroid/os/Handler;

    iget-object p1, p3, LL1/o;->n:Landroid/graphics/RectF;

    iput-object p1, p0, LL1/u0;->f:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(II)LJ1/B;
    .locals 13

    const-string v0, "-- Selection changed: "

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LM1/b;->f(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-ltz p1, :cond_3

    if-lt p2, p1, :cond_3

    iget-object v1, p0, LL1/u0;->c:LL1/o;

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    sget v2, LM1/c;->a:I

    invoke-virtual {v1}, LL1/o;->e()LJ1/d;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, LJ1/d;->b:Ljava/util/List;

    invoke-virtual {v1}, LL1/o;->e()LJ1/d;

    move-result-object v2

    iget-object v2, v2, LJ1/d;->b:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, LJ1/g;

    invoke-direct {v3}, LJ1/g;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-int v2, p2, p1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v2, :cond_1

    add-int v7, p1, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, LL1/o;->e()LJ1/d;

    move-result-object v2

    iget-object v2, v2, LJ1/d;->b:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LJ1/g;

    iput-object v4, v2, LJ1/g;->a:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iget v4, v1, LL1/o;->g:I

    add-int/2addr v4, v3

    iput v4, v1, LL1/o;->g:I

    iput v4, p0, LL1/u0;->m:I

    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v6, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v7, v1, LL1/o;->a:LL1/a0;

    iget-object v8, v1, LL1/o;->j:LJ1/e;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, p0, LL1/u0;->h:LK1/a;

    iget-object v9, v1, LL1/o;->m:LJ1/t;

    new-instance v11, LL1/r0;

    invoke-direct {v11, v1, v2, v6}, LL1/r0;-><init>(LL1/o;Ljava/util/List;Ljava/util/concurrent/CountDownLatch;)V

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, LL1/a0;->f(LJ1/e;LJ1/t;LK1/a;LL1/Z;Z)V

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0xbb8

    invoke-virtual {v6, v8, v9, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v3, :cond_2

    iget-object v3, v1, LL1/o;->j:LJ1/e;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/EntitiesData;

    iget v6, v1, LL1/o;->f:I

    invoke-virtual {v1, v4, v3, v5, v6}, LL1/o;->a(ILJ1/e;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/EntitiesData;I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, LL1/u0;->d()LJ1/B;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_2
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to query any entities; indices: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; # of new entities: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, LM1/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_3
    const-string p2, "Unable to query new entities"

    invoke-static {p2, p1}, LM1/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    monitor-exit p0

    return-object v0

    :cond_3
    :goto_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Ljava/lang/CharSequence;II)LJ1/B;
    .locals 8

    const-string v0, "Selection changed: "

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, LL1/u0;->c:LL1/o;

    iget v2, p0, LL1/u0;->m:I

    invoke-virtual {v1, v2}, LL1/o;->i(I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_1
    iget-object v1, p0, LL1/u0;->e:Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p2, p1

    add-int/2addr p3, p1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LM1/b;->c(Ljava/lang/String;)V

    iget p1, p0, LL1/u0;->k:I

    if-ne p2, p1, :cond_1

    iget p1, p0, LL1/u0;->l:I

    if-eq p3, p1, :cond_7

    :cond_1
    iget-object p1, p0, LL1/u0;->d:Ljava/util/List;

    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LL1/a;

    iget p1, p1, LL1/a;->b:I

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, LL1/u0;->d:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    iget-object v3, p0, LL1/u0;->d:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LL1/a;

    iget v4, v3, LL1/a;->b:I

    if-gez v4, :cond_2

    goto :goto_1

    :cond_2
    iget v5, v3, LL1/a;->c:I

    if-gt v5, p2, :cond_3

    move v2, v4

    :cond_3
    iget v3, v3, LL1/a;->d:I

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v5, p3, 0x1

    if-gt v3, v5, :cond_4

    move p1, v4

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v2, p1}, LL1/u0;->a(II)LJ1/B;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object v1, p0, LL1/u0;->c:LL1/o;

    iget-object v1, v1, LL1/o;->c:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, LL1/u0;->g:LL1/k0;

    sget v2, LM1/c;->a:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p1, LJ1/B;->n:I

    iget-object v3, p0, LL1/u0;->c:LL1/o;

    iget-object v3, v3, LL1/o;->c:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ1/B;

    iget v5, v0, LJ1/B;->n:I

    iget v6, p0, LL1/u0;->k:I

    iget v7, p0, LL1/u0;->l:I

    move v3, p2

    move v4, p3

    invoke-interface/range {v1 .. v7}, LL1/k0;->a(IIIIII)V

    :cond_6
    iput p2, p0, LL1/u0;->k:I

    iput p3, p0, LL1/u0;->l:I

    new-instance p2, LL1/q0;

    invoke-direct {p2, p0, p1}, LL1/q0;-><init>(LL1/u0;LJ1/B;)V

    iget-object p3, p0, LL1/u0;->b:Landroid/os/Handler;

    invoke-virtual {p3, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p2, p0, LL1/u0;->c:LL1/o;

    iget-object p2, p2, LL1/o;->b:LL1/q;

    invoke-virtual {p2, p1}, LL1/q;->i(LJ1/B;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_7
    :try_start_2
    invoke-virtual {p0}, LL1/u0;->d()LJ1/B;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c(II)V
    .locals 2

    if-le p2, p1, :cond_0

    iget-object v0, p0, LL1/u0;->e:Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Selecting: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LM1/b;->f(Ljava/lang/String;)V

    new-instance v0, LL1/p0;

    invoke-direct {v0, p0, p1, p2}, LL1/p0;-><init>(LL1/u0;II)V

    iget-object p0, p0, LL1/u0;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final declared-synchronized d()LJ1/B;
    .locals 3

    const-string v0, "-- Selected entity: "

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, LL1/u0;->c:LL1/o;

    invoke-virtual {v1}, LL1/o;->f()LJ1/B;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, LJ1/B;->e:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LM1/b;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
