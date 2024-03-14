.class public final LL1/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Landroid/content/ComponentName;

.field public final e:LL1/c;

.field public final f:Landroid/graphics/RectF;

.field public final g:Landroid/graphics/PointF;

.field public final h:Landroid/graphics/Bitmap;

.field public final i:Landroid/graphics/RectF;

.field public final j:LL1/P;

.field public final k:I

.field public l:Z

.field public final m:Landroid/os/Bundle;

.field public n:Ljava/lang/String;


# direct methods
.method public constructor <init>(LL1/i;Landroid/graphics/RectF;Landroid/graphics/PointF;JILandroid/content/ComponentName;LL1/P;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, LL1/a0;->i:Landroid/graphics/RectF;

    const-string v0, ""

    iput-object v0, p0, LL1/a0;->n:Ljava/lang/String;

    iput-object p1, p0, LL1/a0;->e:LL1/c;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object p1, p0, LL1/a0;->f:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/PointF;

    iget p2, p3, Landroid/graphics/PointF;->x:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    invoke-direct {p1, p2, p3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, LL1/a0;->g:Landroid/graphics/PointF;

    iput-wide p4, p0, LL1/a0;->a:J

    const/4 p1, 0x0

    iput-object p1, p0, LL1/a0;->h:Landroid/graphics/Bitmap;

    iput p6, p0, LL1/a0;->k:I

    iput-object p1, p0, LL1/a0;->m:Landroid/os/Bundle;

    invoke-virtual {p7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LL1/a0;->b:Ljava/lang/String;

    invoke-virtual {p7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LL1/a0;->c:Ljava/lang/String;

    iput-object p8, p0, LL1/a0;->j:LL1/P;

    iput-object p7, p0, LL1/a0;->d:Landroid/content/ComponentName;

    return-void
.end method

.method public static a(LL1/a0;LJ1/e;LL1/Y;)V
    .locals 2

    const-string v0, "Fetched contents\n\n"

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, LL1/a0;->l:Z

    if-eqz v1, :cond_0

    const-string p1, "handleContentData failed, all pending invocations were cancelled"

    invoke-static {p1}, LM1/b;->f(Ljava/lang/String;)V

    const-string p1, "Content extraction cancelled."

    new-instance p2, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/CanceledException;

    invoke-direct {p2, p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/CanceledException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, LL1/a0;->j(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, LM1/b;->b(LJ1/e;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LM1/b;->c(Ljava/lang/String;)V

    iget-object v0, p0, LL1/a0;->e:LL1/c;

    new-instance v1, LL1/S;

    invoke-direct {v1, p0, p1, p2, p1}, LL1/S;-><init>(LL1/a0;LJ1/e;LL1/Y;LJ1/e;)V

    iget-object p1, v0, LL1/c;->a:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static b(LL1/a0;LJ1/e;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/EntitiesData;LL1/Z;Z)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LL1/a0;->l:Z

    if-eqz v0, :cond_0

    const-string p1, "Entity extraction cancelled"

    new-instance p2, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/CanceledException;

    invoke-direct {p2, p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/CanceledException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, LL1/a0;->j(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    goto :goto_3

    :cond_0
    :try_start_1
    invoke-static {p2}, LM1/b;->e(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/EntitiesData;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, LM1/b;->a:LM1/a;

    iget-boolean v1, v1, LM1/a;->a:Z

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "AiAiSuggestUi"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/EntitiesData;->entities()LJ1/A;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, LJ1/A;

    invoke-direct {v0}, LJ1/A;-><init>()V

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/EntitiesData;->entities()LJ1/A;

    move-result-object v0

    :goto_1
    move-object v3, v0

    if-eqz p4, :cond_3

    iget-object p4, p0, LL1/a0;->e:LL1/c;

    new-instance v0, LL1/V;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, LL1/V;-><init>(LL1/a0;LJ1/A;LL1/Z;LJ1/e;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/EntitiesData;)V

    iget-object p1, p4, LL1/c;->a:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_3
    iget-object p4, p0, LL1/a0;->e:LL1/c;

    new-instance v0, LL1/U;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v3, v1}, LL1/U;-><init>(LL1/a0;Ljava/lang/Object;I)V

    iget-object p4, p4, LL1/c;->a:Ljava/util/concurrent/Executor;

    invoke-interface {p4, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-interface {p3, p1, p2}, LL1/Z;->a(LJ1/e;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/EntitiesData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    monitor-exit p0

    :goto_3
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final c(Landroid/graphics/RectF;)V
    .locals 6

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, LL1/a0;->g:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v3

    iget-object p0, p0, LL1/a0;->f:Landroid/graphics/RectF;

    iget v4, p0, Landroid/graphics/RectF;->left:F

    iget v5, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v5

    iget v1, v1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, v1

    iput v4, p1, Landroid/graphics/RectF;->left:F

    iget p0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr p0, v1

    mul-float/2addr p0, v3

    iput p0, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v0

    iput v4, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr p0, v2

    iput p0, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public final d(Landroid/graphics/PointF;)V
    .locals 3

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, LL1/a0;->g:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    div-float/2addr v0, v2

    iput v0, p1, Landroid/graphics/PointF;->x:F

    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->y:F

    iget-object p0, p0, LL1/a0;->f:Landroid/graphics/RectF;

    iget v0, p0, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    iget p0, p0, Landroid/graphics/RectF;->top:F

    neg-float p0, p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/PointF;->offset(FF)V

    return-void
.end method

.method public final e(Landroid/graphics/RectF;)V
    .locals 5

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, LL1/a0;->g:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    div-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, v1, Landroid/graphics/PointF;->y:F

    div-float/2addr v2, v3

    iget v4, p1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/PointF;->x:F

    div-float/2addr v4, v1

    iget-object p0, p0, LL1/a0;->f:Landroid/graphics/RectF;

    iget v1, p0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v1

    iput v4, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    div-float/2addr v1, v3

    iget p0, p0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, p0

    iput v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v0

    iput v4, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public final declared-synchronized f(LJ1/e;LJ1/t;LK1/a;LL1/Z;Z)V
    .locals 9

    monitor-enter p0

    :try_start_0
    const-string v0, "Extracting entities."

    invoke-static {v0}, LM1/b;->f(Ljava/lang/String;)V

    iget-boolean v0, p0, LL1/a0;->l:Z

    if-eqz v0, :cond_0

    const-string p1, "Entity extraction cancelled."

    new-instance p2, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/CanceledException;

    invoke-direct {p2, p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/CanceledException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, LL1/a0;->j(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, LL1/a0;->e:LL1/c;

    new-instance v8, LL1/T;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p3

    move-object v4, p2

    move-object v5, p1

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, LL1/T;-><init>(LL1/a0;LK1/a;LJ1/t;LJ1/e;LL1/Z;Z)V

    iget-object p1, v0, LL1/c;->b:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized g(LJ1/t;LK1/a;LL1/Y;)V
    .locals 3

    const-string v0, "Contents new rect: "

    const-string v1, "Fetching contents, isPrimaryTask = "

    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p1, LJ1/t;->i:Z

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LM1/b;->f(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, LL1/a0;->i:Landroid/graphics/RectF;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, LM1/b;->a:LM1/a;

    iget-boolean v1, v1, LM1/a;->a:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "AiAiSuggestUi"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, LL1/a0;->e:LL1/c;

    new-instance v1, LL1/S;

    invoke-direct {v1, p0, p2, p1, p3}, LL1/S;-><init>(LL1/a0;LK1/a;LJ1/t;LL1/Y;)V

    iget-object p1, v0, LL1/c;->b:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final h()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, LL1/a0;->n:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, LL1/a0;->d:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, LL1/a0;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, p0, LL1/a0;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s_%s_%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v1, LM1/c;->a:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "task_snapshot_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LL1/a0;->n:Ljava/lang/String;

    :cond_1
    iget-object p0, p0, LL1/a0;->n:Ljava/lang/String;

    return-object p0
.end method

.method public final declared-synchronized i(Ljava/lang/String;LK1/a;LJ1/n;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p3, LJ1/n;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    sget v1, LM1/c;->a:I

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LL1/a0;->e:LL1/c;

    new-instance v1, LL1/Q;

    invoke-direct {v1, p2, p3}, LL1/Q;-><init>(LK1/a;LJ1/n;)V

    iget-object p2, p0, LL1/a0;->j:LL1/P;

    invoke-virtual {v0, p3, p2, p1, v1}, LL1/c;->b(LJ1/n;LL1/P;Ljava/lang/String;Ljava/util/function/Supplier;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final j(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "Canceling suggestion interaction."

    invoke-static {v0}, LM1/b;->f(Ljava/lang/String;)V

    new-instance v0, LL1/U;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, LL1/U;-><init>(LL1/a0;Ljava/lang/Object;I)V

    iget-object p0, p0, LL1/a0;->e:LL1/c;

    iget-object p0, p0, LL1/c;->a:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final declared-synchronized k(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, LL1/a0;->l:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, LL1/a0;->i:Landroid/graphics/RectF;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
