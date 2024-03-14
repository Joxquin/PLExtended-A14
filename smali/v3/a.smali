.class public final Lv3/a;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final d:Lv3/o;

.field public final e:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public f:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

.field public final g:Lt3/d;

.field public h:J

.field public i:J

.field private volatile indexInArray:I

.field public j:I

.field public k:Z

.field public final synthetic l:Lv3/b;

.field private volatile nextParkedWorker:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lv3/b;I)V
    .locals 0

    iput-object p1, p0, Lv3/a;->l:Lv3/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    new-instance p1, Lv3/o;

    invoke-direct {p1}, Lv3/o;-><init>()V

    iput-object p1, p0, Lv3/a;->d:Lv3/o;

    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object p1, p0, Lv3/a;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    sget-object p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    iput-object p1, p0, Lv3/a;->f:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    const/4 p1, 0x0

    invoke-static {p1}, Lt3/c;->b(I)Lt3/d;

    move-result-object p1

    iput-object p1, p0, Lv3/a;->g:Lt3/d;

    sget-object p1, Lv3/b;->n:Lkotlinx/coroutines/internal/E;

    iput-object p1, p0, Lv3/a;->nextParkedWorker:Ljava/lang/Object;

    sget-object p1, Lo3/d;->d:Lkotlin/random/Random$Default;

    invoke-virtual {p1}, Lkotlin/random/Random$Default;->a()I

    move-result p1

    iput p1, p0, Lv3/a;->j:I

    invoke-virtual {p0, p2}, Lv3/a;->f(I)V

    return-void
.end method


# virtual methods
.method public final a(Z)Lv3/i;
    .locals 10

    iget-object v0, p0, Lv3/a;->f:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->d:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lv3/a;->l:Lv3/b;

    iget-object v4, v0, Lv3/b;->l:Lt3/e;

    :cond_1
    iget-wide v5, v4, Lt3/e;->b:J

    const-wide v7, 0x7ffffc0000000000L

    and-long/2addr v7, v5

    const/16 v9, 0x2a

    shr-long/2addr v7, v9

    long-to-int v7, v7

    if-nez v7, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    const-wide v7, 0x40000000000L

    sub-long v7, v5, v7

    iget-object v9, v0, Lv3/b;->l:Lt3/e;

    invoke-virtual {v9, v5, v6, v7, v8}, Lt3/e;->b(JJ)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v3

    :goto_0
    if-eqz v0, :cond_3

    iput-object v1, p0, Lv3/a;->f:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    :goto_1
    move v0, v3

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    const/4 v1, 0x0

    if-eqz v0, :cond_a

    if-eqz p1, :cond_8

    iget-object p1, p0, Lv3/a;->l:Lv3/b;

    iget p1, p1, Lv3/b;->d:I

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lv3/a;->d(I)I

    move-result p1

    if-nez p1, :cond_4

    move v2, v3

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lv3/a;->e()Lv3/i;

    move-result-object p1

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    iget-object p1, p0, Lv3/a;->d:Lv3/o;

    iget-object v0, p1, Lv3/o;->b:Lt3/f;

    invoke-virtual {v0, v1}, Lt3/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv3/i;

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lv3/o;->b()Lv3/i;

    move-result-object p1

    goto :goto_3

    :cond_6
    move-object p1, v0

    :goto_3
    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    if-nez v2, :cond_9

    invoke-virtual {p0}, Lv3/a;->e()Lv3/i;

    move-result-object p1

    if-eqz p1, :cond_9

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Lv3/a;->e()Lv3/i;

    move-result-object p1

    if-eqz p1, :cond_9

    goto :goto_4

    :cond_9
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lv3/a;->i(I)Lv3/i;

    move-result-object p1

    :goto_4
    return-object p1

    :cond_a
    iget-object p1, p0, Lv3/a;->d:Lv3/o;

    :cond_b
    iget-object v0, p1, Lv3/o;->b:Lt3/f;

    iget-object v0, v0, Lt3/f;->b:Ljava/lang/Object;

    check-cast v0, Lv3/i;

    if-nez v0, :cond_c

    goto :goto_6

    :cond_c
    iget-object v4, v0, Lv3/i;->e:Lv3/j;

    invoke-interface {v4}, Lv3/j;->b()I

    move-result v4

    if-ne v4, v3, :cond_d

    move v4, v3

    goto :goto_5

    :cond_d
    move v4, v2

    :goto_5
    if-ne v4, v3, :cond_e

    iget-object v4, p1, Lv3/o;->b:Lt3/f;

    invoke-virtual {v4, v0, v1}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    move-object v1, v0

    goto :goto_7

    :cond_e
    :goto_6
    iget-object v0, p1, Lv3/o;->d:Lt3/d;

    iget v0, v0, Lt3/d;->b:I

    iget-object v2, p1, Lv3/o;->c:Lt3/d;

    iget v2, v2, Lt3/d;->b:I

    :cond_f
    if-eq v0, v2, :cond_11

    iget-object v4, p1, Lv3/o;->e:Lt3/d;

    iget v4, v4, Lt3/d;->b:I

    if-nez v4, :cond_10

    goto :goto_7

    :cond_10
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2, v3}, Lv3/o;->c(IZ)Lv3/i;

    move-result-object v4

    if-eqz v4, :cond_f

    move-object v1, v4

    :cond_11
    :goto_7
    if-nez v1, :cond_12

    iget-object p1, p0, Lv3/a;->l:Lv3/b;

    iget-object p1, p1, Lv3/b;->i:Lv3/e;

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/q;->c()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lv3/i;

    if-nez v1, :cond_12

    invoke-virtual {p0, v3}, Lv3/a;->i(I)Lv3/i;

    move-result-object v1

    :cond_12
    return-object v1
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lv3/a;->indexInArray:I

    return p0
.end method

.method public final c()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lv3/a;->nextParkedWorker:Ljava/lang/Object;

    return-object p0
.end method

.method public final d(I)I
    .locals 2

    iget v0, p0, Lv3/a;->j:I

    shl-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x11

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x5

    xor-int/2addr v0, v1

    iput v0, p0, Lv3/a;->j:I

    add-int/lit8 p0, p1, -0x1

    and-int v1, p0, p1

    if-nez v1, :cond_0

    and-int/2addr p0, v0

    return p0

    :cond_0
    const p0, 0x7fffffff

    and-int/2addr p0, v0

    rem-int/2addr p0, p1

    return p0
.end method

.method public final e()Lv3/i;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lv3/a;->d(I)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lv3/a;->l:Lv3/b;

    iget-object v0, v0, Lv3/b;->h:Lv3/e;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/q;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv3/i;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lv3/a;->l:Lv3/b;

    iget-object p0, p0, Lv3/b;->i:Lv3/e;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/q;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv3/i;

    return-object p0

    :cond_1
    iget-object v0, p0, Lv3/a;->l:Lv3/b;

    iget-object v0, v0, Lv3/b;->i:Lv3/e;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/q;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv3/i;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    iget-object p0, p0, Lv3/a;->l:Lv3/b;

    iget-object p0, p0, Lv3/b;->h:Lv3/e;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/q;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv3/i;

    return-object p0
.end method

.method public final f(I)V
    .locals 3

    iget-object v0, p0, Lv3/a;->l:Lv3/b;

    iget-object v0, v0, Lv3/b;->g:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string v1, "TERMINATED"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-worker-"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iput p1, p0, Lv3/a;->indexInArray:I

    return-void
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lv3/a;->nextParkedWorker:Ljava/lang/Object;

    return-void
.end method

.method public final h(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z
    .locals 5

    iget-object v0, p0, Lv3/a;->f:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->d:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lv3/a;->l:Lv3/b;

    iget-object v2, v2, Lv3/b;->l:Lt3/e;

    const-wide v3, 0x40000000000L

    invoke-virtual {v2, v3, v4}, Lt3/e;->a(J)J

    :cond_1
    if-eq v0, p1, :cond_2

    iput-object p1, p0, Lv3/a;->f:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    :cond_2
    return v1
.end method

.method public final i(I)Lv3/i;
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lv3/a;->l:Lv3/b;

    iget-object v2, v2, Lv3/b;->l:Lt3/e;

    iget-wide v2, v2, Lt3/e;->b:J

    const-wide/32 v4, 0x1fffff

    and-long/2addr v2, v4

    long-to-int v2, v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ge v2, v3, :cond_0

    return-object v4

    :cond_0
    invoke-virtual {v0, v2}, Lv3/a;->d(I)I

    move-result v5

    iget-object v6, v0, Lv3/a;->l:Lv3/b;

    const/4 v10, 0x0

    const-wide v11, 0x7fffffffffffffffL

    :goto_0
    if-ge v10, v2, :cond_10

    const/4 v15, 0x1

    add-int/2addr v5, v15

    if-le v5, v2, :cond_1

    move v5, v15

    :cond_1
    iget-object v3, v6, Lv3/b;->k:Lkotlinx/coroutines/internal/z;

    invoke-virtual {v3, v5}, Lkotlinx/coroutines/internal/z;->b(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv3/a;

    if-eqz v3, :cond_f

    if-eq v3, v0, :cond_f

    iget-object v3, v3, Lv3/a;->d:Lv3/o;

    iget-object v9, v0, Lv3/a;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "stolenTaskRef"

    invoke-static {v9, v7}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x3

    if-ne v1, v7, :cond_2

    invoke-virtual {v3}, Lv3/o;->b()Lv3/i;

    move-result-object v7

    goto :goto_3

    :cond_2
    iget-object v7, v3, Lv3/o;->d:Lt3/d;

    iget v7, v7, Lt3/d;->b:I

    iget-object v8, v3, Lv3/o;->c:Lt3/d;

    iget v8, v8, Lt3/d;->b:I

    if-ne v1, v15, :cond_3

    move v13, v15

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    :goto_1
    if-eq v7, v8, :cond_5

    if-eqz v13, :cond_4

    iget-object v14, v3, Lv3/o;->e:Lt3/d;

    iget v14, v14, Lt3/d;->b:I

    if-nez v14, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v14, v7, 0x1

    invoke-virtual {v3, v7, v13}, Lv3/o;->c(IZ)Lv3/i;

    move-result-object v7

    if-nez v7, :cond_6

    move v7, v14

    goto :goto_1

    :cond_5
    :goto_2
    move-object v7, v4

    :cond_6
    :goto_3
    if-eqz v7, :cond_7

    iput-object v7, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_8

    :cond_7
    :goto_4
    iget-object v7, v3, Lv3/o;->b:Lt3/f;

    iget-object v7, v7, Lt3/f;->b:Ljava/lang/Object;

    check-cast v7, Lv3/i;

    if-nez v7, :cond_8

    goto :goto_7

    :cond_8
    iget-object v8, v7, Lv3/i;->e:Lv3/j;

    invoke-interface {v8}, Lv3/j;->b()I

    move-result v8

    if-ne v8, v15, :cond_9

    move v8, v15

    goto :goto_5

    :cond_9
    const/4 v8, 0x0

    :goto_5
    if-eqz v8, :cond_a

    move v8, v15

    goto :goto_6

    :cond_a
    const/4 v8, 0x2

    :goto_6
    and-int/2addr v8, v1

    if-nez v8, :cond_b

    :goto_7
    const-wide/16 v7, -0x2

    goto :goto_9

    :cond_b
    sget-object v8, Lv3/m;->f:Lv3/f;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    iget-wide v13, v7, Lv3/i;->d:J

    sub-long v18, v18, v13

    sget-wide v13, Lv3/m;->b:J

    cmp-long v8, v18, v13

    if-gez v8, :cond_c

    sub-long v7, v13, v18

    goto :goto_9

    :cond_c
    iget-object v8, v3, Lv3/o;->b:Lt3/f;

    invoke-virtual {v8, v7, v4}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    iput-object v7, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :goto_8
    const-wide/16 v7, -0x1

    :goto_9
    const-wide/16 v13, -0x1

    cmp-long v3, v7, v13

    if-nez v3, :cond_d

    iget-object v0, v0, Lv3/a;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lv3/i;

    iput-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object v1

    :cond_d
    const-wide/16 v16, 0x0

    cmp-long v3, v7, v16

    if-lez v3, :cond_f

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    goto :goto_a

    :cond_e
    const-wide/16 v16, 0x0

    goto :goto_4

    :cond_f
    :goto_a
    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x2

    goto/16 :goto_0

    :cond_10
    const-wide v7, 0x7fffffffffffffffL

    const-wide/16 v16, 0x0

    cmp-long v1, v11, v7

    if-eqz v1, :cond_11

    goto :goto_b

    :cond_11
    move-wide/from16 v11, v16

    :goto_b
    iput-wide v11, v0, Lv3/a;->i:J

    return-object v4
.end method

.method public final run()V
    .locals 16

    move-object/from16 v1, p0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    iget-object v3, v1, Lv3/a;->l:Lv3/b;

    iget-object v3, v3, Lv3/b;->m:Lt3/b;

    iget v3, v3, Lt3/b;->b:I

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_2

    :cond_1
    move v3, v0

    :goto_2
    if-nez v3, :cond_1b

    iget-object v3, v1, Lv3/a;->f:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v5, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->h:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-eq v3, v5, :cond_1b

    iget-boolean v3, v1, Lv3/a;->k:Z

    invoke-virtual {v1, v3}, Lv3/a;->a(Z)Lv3/i;

    move-result-object v3

    const-wide/32 v6, -0x200000

    const-wide/16 v8, 0x0

    if-eqz v3, :cond_8

    iput-wide v8, v1, Lv3/a;->i:J

    iget-object v0, v3, Lv3/i;->e:Lv3/j;

    invoke-interface {v0}, Lv3/j;->b()I

    move-result v2

    iput-wide v8, v1, Lv3/a;->h:J

    iget-object v0, v1, Lv3/a;->f:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->f:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v8, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->e:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-ne v0, v4, :cond_2

    iput-object v8, v1, Lv3/a;->f:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    :cond_2
    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1, v8}, Lv3/a;->h(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v1, Lv3/a;->l:Lv3/b;

    invoke-virtual {v0}, Lv3/b;->e()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    iget-object v4, v0, Lv3/b;->l:Lt3/e;

    iget-wide v8, v4, Lt3/e;->b:J

    invoke-virtual {v0, v8, v9}, Lv3/b;->d(J)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Lv3/b;->e()Z

    :cond_6
    :goto_3
    iget-object v0, v1, Lv3/a;->l:Lv3/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v3, v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v4

    invoke-interface {v4, v0, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_4
    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    iget-object v0, v1, Lv3/a;->l:Lv3/b;

    iget-object v0, v0, Lv3/b;->l:Lt3/e;

    invoke-virtual {v0, v6, v7}, Lt3/e;->a(J)J

    iget-object v0, v1, Lv3/a;->f:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-eq v0, v5, :cond_0

    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    iput-object v0, v1, Lv3/a;->f:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    goto :goto_0

    :cond_8
    iput-boolean v0, v1, Lv3/a;->k:Z

    iget-wide v10, v1, Lv3/a;->i:J

    cmp-long v3, v10, v8

    if-eqz v3, :cond_a

    if-nez v2, :cond_9

    move v2, v4

    goto/16 :goto_1

    :cond_9
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->f:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    invoke-virtual {v1, v0}, Lv3/a;->h(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    iget-wide v2, v1, Lv3/a;->i:J

    invoke-static {v2, v3}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    iput-wide v8, v1, Lv3/a;->i:J

    goto/16 :goto_0

    :cond_a
    iget-object v3, v1, Lv3/a;->nextParkedWorker:Ljava/lang/Object;

    sget-object v5, Lv3/b;->n:Lkotlinx/coroutines/internal/E;

    if-eq v3, v5, :cond_b

    move v3, v4

    goto :goto_5

    :cond_b
    move v3, v0

    :goto_5
    const-wide/32 v10, 0x1fffff

    if-nez v3, :cond_e

    iget-object v3, v1, Lv3/a;->l:Lv3/b;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v1, Lv3/a;->nextParkedWorker:Ljava/lang/Object;

    if-eq v4, v5, :cond_c

    goto/16 :goto_b

    :cond_c
    iget-object v5, v3, Lv3/b;->j:Lt3/e;

    :cond_d
    iget-wide v8, v5, Lt3/e;->b:J

    and-long v12, v8, v10

    long-to-int v4, v12

    const-wide/32 v12, 0x200000

    add-long/2addr v12, v8

    and-long/2addr v12, v6

    iget v14, v1, Lv3/a;->indexInArray:I

    iget-object v15, v3, Lv3/b;->k:Lkotlinx/coroutines/internal/z;

    invoke-virtual {v15, v4}, Lkotlinx/coroutines/internal/z;->b(I)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v1, Lv3/a;->nextParkedWorker:Ljava/lang/Object;

    iget-object v4, v3, Lv3/b;->j:Lt3/e;

    int-to-long v14, v14

    or-long/2addr v12, v14

    invoke-virtual {v4, v8, v9, v12, v13}, Lt3/e;->b(JJ)Z

    move-result v4

    if-eqz v4, :cond_d

    goto/16 :goto_b

    :cond_e
    iget-object v3, v1, Lv3/a;->g:Lt3/d;

    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Lt3/d;->d(I)V

    :goto_6
    iget-object v3, v1, Lv3/a;->nextParkedWorker:Ljava/lang/Object;

    sget-object v6, Lv3/b;->n:Lkotlinx/coroutines/internal/E;

    if-eq v3, v6, :cond_f

    move v3, v4

    goto :goto_7

    :cond_f
    move v3, v0

    :goto_7
    if-eqz v3, :cond_1a

    iget-object v3, v1, Lv3/a;->g:Lt3/d;

    iget v3, v3, Lt3/d;->b:I

    if-ne v3, v5, :cond_1a

    iget-object v3, v1, Lv3/a;->l:Lv3/b;

    iget-object v3, v3, Lv3/b;->m:Lt3/b;

    iget v3, v3, Lt3/b;->b:I

    if-eqz v3, :cond_10

    move v3, v4

    goto :goto_8

    :cond_10
    move v3, v0

    :goto_8
    if-nez v3, :cond_1a

    iget-object v3, v1, Lv3/a;->f:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v6, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->h:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-ne v3, v6, :cond_11

    goto/16 :goto_b

    :cond_11
    sget-object v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->f:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    invoke-virtual {v1, v3}, Lv3/a;->h(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    iget-wide v12, v1, Lv3/a;->h:J

    cmp-long v3, v12, v8

    if-nez v3, :cond_12

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    iget-object v3, v1, Lv3/a;->l:Lv3/b;

    iget-wide v14, v3, Lv3/b;->f:J

    add-long/2addr v12, v14

    iput-wide v12, v1, Lv3/a;->h:J

    :cond_12
    iget-object v3, v1, Lv3/a;->l:Lv3/b;

    iget-wide v12, v3, Lv3/b;->f:J

    invoke-static {v12, v13}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    iget-wide v14, v1, Lv3/a;->h:J

    sub-long/2addr v12, v14

    cmp-long v3, v12, v8

    if-ltz v3, :cond_19

    iput-wide v8, v1, Lv3/a;->h:J

    iget-object v3, v1, Lv3/a;->l:Lv3/b;

    iget-object v7, v3, Lv3/b;->k:Lkotlinx/coroutines/internal/z;

    monitor-enter v7

    :try_start_1
    iget-object v12, v3, Lv3/b;->m:Lt3/b;

    iget v12, v12, Lt3/b;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v12, :cond_13

    move v12, v4

    goto :goto_9

    :cond_13
    move v12, v0

    :goto_9
    if-eqz v12, :cond_14

    monitor-exit v7

    goto :goto_a

    :cond_14
    :try_start_2
    iget-object v12, v3, Lv3/b;->l:Lt3/e;

    iget-wide v12, v12, Lt3/e;->b:J

    and-long/2addr v12, v10

    long-to-int v12, v12

    iget v13, v3, Lv3/b;->d:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-gt v12, v13, :cond_15

    monitor-exit v7

    goto :goto_a

    :cond_15
    :try_start_3
    iget-object v12, v1, Lv3/a;->g:Lt3/d;

    invoke-virtual {v12, v5, v4}, Lt3/d;->a(II)Z

    move-result v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v12, :cond_16

    monitor-exit v7

    goto :goto_a

    :cond_16
    :try_start_4
    iget v12, v1, Lv3/a;->indexInArray:I

    invoke-virtual {v1, v0}, Lv3/a;->f(I)V

    invoke-virtual {v3, v1, v12, v0}, Lv3/b;->c(Lv3/a;II)V

    iget-object v13, v3, Lv3/b;->l:Lt3/e;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Lt3/e;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v14, v13}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndDecrement(Ljava/lang/Object;)J

    move-result-wide v14

    sget-object v0, Lt3/g;->a:Lt3/g;

    iget-object v13, v13, Lt3/e;->a:Lt3/h;

    if-eq v13, v0, :cond_17

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "getAndDec():"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lt3/h;->a(Ljava/lang/Object;)V

    :cond_17
    and-long v13, v14, v10

    long-to-int v0, v13

    if-eq v0, v12, :cond_18

    iget-object v4, v3, Lv3/b;->k:Lkotlinx/coroutines/internal/z;

    invoke-virtual {v4, v0}, Lkotlinx/coroutines/internal/z;->b(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    check-cast v4, Lv3/a;

    iget-object v13, v3, Lv3/b;->k:Lkotlinx/coroutines/internal/z;

    invoke-virtual {v13, v12, v4}, Lkotlinx/coroutines/internal/z;->c(ILv3/a;)V

    invoke-virtual {v4, v12}, Lv3/a;->f(I)V

    invoke-virtual {v3, v4, v0, v12}, Lv3/b;->c(Lv3/a;II)V

    :cond_18
    iget-object v3, v3, Lv3/b;->k:Lkotlinx/coroutines/internal/z;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lkotlinx/coroutines/internal/z;->c(ILv3/a;)V

    sget-object v0, Le3/f;->a:Le3/f;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v7

    iput-object v6, v1, Lv3/a;->f:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    goto :goto_a

    :catchall_1
    move-exception v0

    monitor-exit v7

    throw v0

    :cond_19
    :goto_a
    const/4 v0, 0x0

    const/4 v4, 0x1

    goto/16 :goto_6

    :cond_1a
    :goto_b
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_1b
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->h:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    invoke-virtual {v1, v0}, Lv3/a;->h(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    return-void
.end method
