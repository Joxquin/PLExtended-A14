.class public final Lkotlinx/coroutines/channels/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/channels/g;
.implements Lkotlinx/coroutines/w0;


# instance fields
.field public d:Ljava/lang/Object;

.field public e:Lkotlinx/coroutines/h;

.field public final synthetic f:Lkotlinx/coroutines/channels/c;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/c;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/channels/a;->f:Lkotlinx/coroutines/channels/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lkotlinx/coroutines/channels/d;->p:Lkotlinx/coroutines/internal/E;

    iput-object p1, p0, Lkotlinx/coroutines/channels/a;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    iget-object v7, v0, Lkotlinx/coroutines/channels/a;->f:Lkotlinx/coroutines/channels/c;

    const/4 v8, 0x0

    iget-object v1, v7, Lkotlinx/coroutines/channels/c;->k:Lt3/f;

    iget-object v1, v1, Lt3/f;->b:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/k;

    :goto_0
    iget-object v2, v7, Lkotlinx/coroutines/channels/c;->f:Lt3/e;

    iget-wide v2, v2, Lt3/e;->b:J

    const/4 v9, 0x1

    invoke-virtual {v7, v2, v3, v9}, Lkotlinx/coroutines/channels/c;->r(JZ)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Lkotlinx/coroutines/channels/d;->l:Lkotlinx/coroutines/internal/E;

    iput-object v1, v0, Lkotlinx/coroutines/channels/a;->d:Ljava/lang/Object;

    iget-object v0, v0, Lkotlinx/coroutines/channels/a;->f:Lkotlinx/coroutines/channels/c;

    invoke-virtual {v0}, Lkotlinx/coroutines/channels/c;->k()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_7

    :cond_0
    sget v1, Lkotlinx/coroutines/internal/D;->a:I

    throw v0

    :cond_1
    iget-object v2, v7, Lkotlinx/coroutines/channels/c;->g:Lt3/e;

    invoke-virtual {v2}, Lt3/e;->c()J

    move-result-wide v10

    sget v2, Lkotlinx/coroutines/channels/d;->b:I

    int-to-long v2, v2

    div-long v4, v10, v2

    rem-long v2, v10, v2

    long-to-int v12, v2

    iget-wide v2, v1, Lkotlinx/coroutines/internal/B;->f:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    invoke-virtual {v7, v4, v5, v1}, Lkotlinx/coroutines/channels/c;->j(JLkotlinx/coroutines/channels/k;)Lkotlinx/coroutines/channels/k;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v13, v2

    goto :goto_1

    :cond_3
    move-object v13, v1

    :goto_1
    move-object v1, v7

    move-object v2, v13

    move v3, v12

    move-wide v4, v10

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Lkotlinx/coroutines/channels/c;->A(Lkotlinx/coroutines/channels/k;IJLkotlinx/coroutines/channels/g;)Ljava/lang/Object;

    move-result-object v1

    sget-object v14, Lkotlinx/coroutines/channels/d;->m:Lkotlinx/coroutines/internal/E;

    if-eq v1, v14, :cond_14

    sget-object v15, Lkotlinx/coroutines/channels/d;->o:Lkotlinx/coroutines/internal/E;

    if-ne v1, v15, :cond_5

    invoke-virtual {v7}, Lkotlinx/coroutines/channels/c;->n()J

    move-result-wide v1

    cmp-long v1, v10, v1

    if-gez v1, :cond_4

    invoke-virtual {v13}, Lkotlinx/coroutines/internal/c;->a()V

    :cond_4
    move-object v1, v13

    goto :goto_0

    :cond_5
    sget-object v2, Lkotlinx/coroutines/channels/d;->n:Lkotlinx/coroutines/internal/E;

    if-ne v1, v2, :cond_13

    iget-object v7, v0, Lkotlinx/coroutines/channels/a;->f:Lkotlinx/coroutines/channels/c;

    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/intrinsics/a;->b(Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/j;->a(Lkotlin/coroutines/c;)Lkotlinx/coroutines/h;

    move-result-object v8

    :try_start_0
    iput-object v8, v0, Lkotlinx/coroutines/channels/a;->e:Lkotlinx/coroutines/h;

    move-object v1, v7

    move-object v2, v13

    move v3, v12

    move-wide v4, v10

    move-object/from16 v6, p0

    invoke-virtual/range {v1 .. v6}, Lkotlinx/coroutines/channels/c;->A(Lkotlinx/coroutines/channels/k;IJLkotlinx/coroutines/channels/g;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v14, :cond_6

    iget-object v0, v0, Lkotlinx/coroutines/channels/a;->e:Lkotlinx/coroutines/h;

    if-eqz v0, :cond_12

    invoke-virtual {v0, v13, v12}, Lkotlinx/coroutines/h;->b(Lkotlinx/coroutines/internal/B;I)V

    goto/16 :goto_6

    :cond_6
    const/4 v12, 0x0

    if-ne v1, v15, :cond_10

    invoke-virtual {v7}, Lkotlinx/coroutines/channels/c;->n()J

    move-result-wide v1

    cmp-long v1, v10, v1

    if-gez v1, :cond_7

    invoke-virtual {v13}, Lkotlinx/coroutines/internal/c;->a()V

    :cond_7
    iget-object v1, v7, Lkotlinx/coroutines/channels/c;->k:Lt3/f;

    iget-object v1, v1, Lt3/f;->b:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/k;

    :goto_2
    iget-object v2, v7, Lkotlinx/coroutines/channels/c;->f:Lt3/e;

    iget-wide v2, v2, Lt3/e;->b:J

    invoke-virtual {v7, v2, v3, v9}, Lkotlinx/coroutines/channels/c;->r(JZ)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v1, v0, Lkotlinx/coroutines/channels/a;->e:Lkotlinx/coroutines/h;

    invoke-static {v1}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    iput-object v12, v0, Lkotlinx/coroutines/channels/a;->e:Lkotlinx/coroutines/h;

    sget-object v2, Lkotlinx/coroutines/channels/d;->l:Lkotlinx/coroutines/internal/E;

    iput-object v2, v0, Lkotlinx/coroutines/channels/a;->d:Ljava/lang/Object;

    iget-object v0, v0, Lkotlinx/coroutines/channels/a;->f:Lkotlinx/coroutines/channels/c;

    invoke-virtual {v0}, Lkotlinx/coroutines/channels/c;->k()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_8

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Lkotlinx/coroutines/h;->resumeWith(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_8
    invoke-static {v0}, Le3/d;->a(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkotlinx/coroutines/h;->resumeWith(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_9
    iget-object v2, v7, Lkotlinx/coroutines/channels/c;->g:Lt3/e;

    invoke-virtual {v2}, Lt3/e;->c()J

    move-result-wide v10

    sget v2, Lkotlinx/coroutines/channels/d;->b:I

    int-to-long v2, v2

    div-long v4, v10, v2

    rem-long v2, v10, v2

    long-to-int v13, v2

    iget-wide v2, v1, Lkotlinx/coroutines/internal/B;->f:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_b

    invoke-virtual {v7, v4, v5, v1}, Lkotlinx/coroutines/channels/c;->j(JLkotlinx/coroutines/channels/k;)Lkotlinx/coroutines/channels/k;

    move-result-object v2

    if-nez v2, :cond_a

    goto :goto_2

    :cond_a
    move-object v14, v2

    goto :goto_3

    :cond_b
    move-object v14, v1

    :goto_3
    move-object v1, v7

    move-object v2, v14

    move v3, v13

    move-wide v4, v10

    move-object/from16 v6, p0

    invoke-virtual/range {v1 .. v6}, Lkotlinx/coroutines/channels/c;->A(Lkotlinx/coroutines/channels/k;IJLkotlinx/coroutines/channels/g;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/channels/d;->m:Lkotlinx/coroutines/internal/E;

    if-ne v1, v2, :cond_c

    iget-object v0, v0, Lkotlinx/coroutines/channels/a;->e:Lkotlinx/coroutines/h;

    if-eqz v0, :cond_12

    invoke-virtual {v0, v14, v13}, Lkotlinx/coroutines/h;->b(Lkotlinx/coroutines/internal/B;I)V

    goto :goto_6

    :cond_c
    sget-object v2, Lkotlinx/coroutines/channels/d;->o:Lkotlinx/coroutines/internal/E;

    if-ne v1, v2, :cond_e

    invoke-virtual {v7}, Lkotlinx/coroutines/channels/c;->n()J

    move-result-wide v1

    cmp-long v1, v10, v1

    if-gez v1, :cond_d

    invoke-virtual {v14}, Lkotlinx/coroutines/internal/c;->a()V

    :cond_d
    move-object v1, v14

    goto :goto_2

    :cond_e
    sget-object v2, Lkotlinx/coroutines/channels/d;->n:Lkotlinx/coroutines/internal/E;

    if-eq v1, v2, :cond_f

    invoke-virtual {v14}, Lkotlinx/coroutines/internal/c;->a()V

    iput-object v1, v0, Lkotlinx/coroutines/channels/a;->d:Ljava/lang/Object;

    iput-object v12, v0, Lkotlinx/coroutines/channels/a;->e:Lkotlinx/coroutines/h;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, v7, Lkotlinx/coroutines/channels/c;->e:Lm3/l;

    if-eqz v2, :cond_11

    :goto_4
    iget-object v3, v8, Lkotlinx/coroutines/h;->h:Lkotlin/coroutines/i;

    goto :goto_5

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    invoke-virtual {v13}, Lkotlinx/coroutines/internal/c;->a()V

    iput-object v1, v0, Lkotlinx/coroutines/channels/a;->d:Ljava/lang/Object;

    iput-object v12, v0, Lkotlinx/coroutines/channels/a;->e:Lkotlinx/coroutines/h;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, v7, Lkotlinx/coroutines/channels/c;->e:Lm3/l;

    if-eqz v2, :cond_11

    goto :goto_4

    :goto_5
    invoke-static {v2, v1, v3}, Lkotlinx/coroutines/internal/w;->a(Lm3/l;Ljava/lang/Object;Lkotlin/coroutines/i;)Lm3/l;

    move-result-object v12

    :cond_11
    iget v1, v8, Lkotlinx/coroutines/H;->f:I

    invoke-virtual {v8, v0, v1, v12}, Lkotlinx/coroutines/h;->v(Ljava/lang/Object;ILm3/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_12
    :goto_6
    invoke-virtual {v8}, Lkotlinx/coroutines/h;->o()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v8}, Lkotlinx/coroutines/h;->u()V

    throw v0

    :cond_13
    invoke-virtual {v13}, Lkotlinx/coroutines/internal/c;->a()V

    iput-object v1, v0, Lkotlinx/coroutines/channels/a;->d:Ljava/lang/Object;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_7
    return-object v0

    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unreachable"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Lkotlinx/coroutines/internal/B;I)V
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/channels/a;->e:Lkotlinx/coroutines/h;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/h;->b(Lkotlinx/coroutines/internal/B;I)V

    :cond_0
    return-void
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lkotlinx/coroutines/channels/a;->d:Ljava/lang/Object;

    sget-object v1, Lkotlinx/coroutines/channels/d;->p:Lkotlinx/coroutines/internal/E;

    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    iput-object v1, p0, Lkotlinx/coroutines/channels/a;->d:Ljava/lang/Object;

    sget-object v1, Lkotlinx/coroutines/channels/d;->l:Lkotlinx/coroutines/internal/E;

    if-eq v0, v1, :cond_1

    return-object v0

    :cond_1
    iget-object p0, p0, Lkotlinx/coroutines/channels/a;->f:Lkotlinx/coroutines/channels/c;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->k()Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_2

    new-instance p0, Lkotlinx/coroutines/channels/ClosedReceiveChannelException;

    const-string v0, "Channel was closed"

    invoke-direct {p0, v0}, Lkotlinx/coroutines/channels/ClosedReceiveChannelException;-><init>(Ljava/lang/String;)V

    :cond_2
    sget v0, Lkotlinx/coroutines/internal/D;->a:I

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "`hasNext()` has not been invoked"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
