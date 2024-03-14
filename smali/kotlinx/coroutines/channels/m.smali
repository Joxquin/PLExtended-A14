.class public final Lkotlinx/coroutines/channels/m;
.super Lkotlinx/coroutines/channels/c;
.source "SourceFile"


# instance fields
.field public final o:Lkotlinx/coroutines/channels/BufferOverflow;


# direct methods
.method public constructor <init>(ILkotlinx/coroutines/channels/BufferOverflow;Lm3/l;)V
    .locals 1

    invoke-direct {p0, p1, p3}, Lkotlinx/coroutines/channels/c;-><init>(ILm3/l;)V

    iput-object p2, p0, Lkotlinx/coroutines/channels/m;->o:Lkotlinx/coroutines/channels/BufferOverflow;

    sget-object p0, Lkotlinx/coroutines/channels/BufferOverflow;->d:Lkotlinx/coroutines/channels/BufferOverflow;

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eq p2, p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, p3

    :goto_0
    if-eqz p0, :cond_3

    if-lt p1, v0, :cond_1

    move p3, v0

    :cond_1
    if-eqz p3, :cond_2

    return-void

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Buffered channel capacity must be at least 1, but "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " was specified"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const-class p0, Lkotlinx/coroutines/channels/c;

    invoke-static {p0}, Lkotlin/jvm/internal/j;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/d;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/jvm/internal/d;->b()Ljava/lang/String;

    move-result-object p0

    const-string p1, "This implementation does not support suspension for senders, use "

    const-string p2, " instead"

    invoke-static {p1, p0, p2}, LE/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final C(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 19

    move-object/from16 v8, p0

    iget-object v0, v8, Lkotlinx/coroutines/channels/m;->o:Lkotlinx/coroutines/channels/BufferOverflow;

    sget-object v1, Lkotlinx/coroutines/channels/BufferOverflow;->f:Lkotlinx/coroutines/channels/BufferOverflow;

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v0, v1, :cond_3

    invoke-super/range {p0 .. p1}, Lkotlinx/coroutines/channels/c;->p(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/channels/i;

    xor-int/2addr v1, v10

    if-nez v1, :cond_11

    instance-of v1, v0, Lkotlinx/coroutines/channels/h;

    if-eqz v1, :cond_0

    goto/16 :goto_6

    :cond_0
    if-eqz p2, :cond_2

    iget-object v0, v8, Lkotlinx/coroutines/channels/c;->e:Lm3/l;

    if-eqz v0, :cond_2

    move-object/from16 v11, p1

    invoke-static {v0, v11, v9}, Lkotlinx/coroutines/internal/w;->c(Lm3/l;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    throw v0

    :cond_2
    :goto_0
    sget-object v0, Le3/f;->a:Le3/f;

    goto/16 :goto_6

    :cond_3
    move-object/from16 v11, p1

    sget-object v12, Lkotlinx/coroutines/channels/d;->d:Lkotlinx/coroutines/internal/E;

    iget-object v0, v8, Lkotlinx/coroutines/channels/c;->j:Lt3/f;

    iget-object v0, v0, Lt3/f;->b:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/channels/k;

    :goto_1
    iget-object v1, v8, Lkotlinx/coroutines/channels/c;->f:Lt3/e;

    invoke-virtual {v1}, Lt3/e;->c()J

    move-result-wide v1

    const-wide v3, 0xfffffffffffffffL

    and-long v13, v1, v3

    const/4 v3, 0x0

    invoke-virtual {v8, v1, v2, v3}, Lkotlinx/coroutines/channels/c;->r(JZ)Z

    move-result v15

    sget v7, Lkotlinx/coroutines/channels/d;->b:I

    int-to-long v4, v7

    div-long v1, v13, v4

    rem-long v9, v13, v4

    long-to-int v9, v9

    move-wide/from16 v16, v4

    iget-wide v3, v0, Lkotlinx/coroutines/internal/B;->f:J

    cmp-long v3, v3, v1

    if-eqz v3, :cond_6

    invoke-static {v8, v1, v2, v0}, Lkotlinx/coroutines/channels/c;->a(Lkotlinx/coroutines/channels/c;JLkotlinx/coroutines/channels/k;)Lkotlinx/coroutines/channels/k;

    move-result-object v1

    if-nez v1, :cond_5

    if-eqz v15, :cond_4

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/c;->l()Ljava/lang/Throwable;

    move-result-object v0

    new-instance v1, Lkotlinx/coroutines/channels/h;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/channels/h;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    move-object v0, v1

    goto/16 :goto_6

    :cond_4
    const/4 v9, 0x0

    const/4 v10, 0x1

    goto :goto_1

    :cond_5
    move-object v10, v1

    goto :goto_3

    :cond_6
    move-object v10, v0

    :goto_3
    move-object/from16 v0, p0

    move-object v1, v10

    move v2, v9

    move-object/from16 v3, p1

    move-wide v4, v13

    move-object v6, v12

    move/from16 v18, v7

    move v7, v15

    invoke-static/range {v0 .. v7}, Lkotlinx/coroutines/channels/c;->c(Lkotlinx/coroutines/channels/c;Lkotlinx/coroutines/channels/k;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v0

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    const/4 v2, 0x2

    if-eq v0, v2, :cond_b

    const/4 v2, 0x3

    if-eq v0, v2, :cond_a

    const/4 v2, 0x4

    if-eq v0, v2, :cond_8

    const/4 v2, 0x5

    if-eq v0, v2, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v10}, Lkotlinx/coroutines/internal/c;->a()V

    :goto_4
    move-object v0, v10

    const/4 v9, 0x0

    move v10, v1

    goto :goto_1

    :cond_8
    iget-object v0, v8, Lkotlinx/coroutines/channels/c;->g:Lt3/e;

    iget-wide v0, v0, Lt3/e;->b:J

    cmp-long v0, v13, v0

    if-gez v0, :cond_9

    invoke-virtual {v10}, Lkotlinx/coroutines/internal/c;->a()V

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/c;->l()Ljava/lang/Throwable;

    move-result-object v0

    new-instance v1, Lkotlinx/coroutines/channels/h;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/channels/h;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    if-eqz v15, :cond_c

    invoke-virtual {v10}, Lkotlinx/coroutines/internal/B;->h()V

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/c;->l()Ljava/lang/Throwable;

    move-result-object v0

    new-instance v1, Lkotlinx/coroutines/channels/h;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/channels/h;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_c
    instance-of v0, v12, Lkotlinx/coroutines/w0;

    if-eqz v0, :cond_d

    move-object v0, v12

    check-cast v0, Lkotlinx/coroutines/w0;

    goto :goto_5

    :cond_d
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_e

    add-int v7, v9, v18

    invoke-interface {v0, v10, v7}, Lkotlinx/coroutines/w0;->b(Lkotlinx/coroutines/internal/B;I)V

    :cond_e
    iget-wide v0, v10, Lkotlinx/coroutines/internal/B;->f:J

    mul-long v0, v0, v16

    int-to-long v2, v9

    add-long/2addr v0, v2

    invoke-virtual {v8, v0, v1}, Lkotlinx/coroutines/channels/c;->h(J)V

    sget-object v0, Le3/f;->a:Le3/f;

    goto :goto_6

    :cond_f
    invoke-virtual {v10}, Lkotlinx/coroutines/internal/c;->a()V

    :cond_10
    sget-object v0, Le3/f;->a:Le3/f;

    :cond_11
    :goto_6
    return-object v0
.end method

.method public final p(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/channels/m;->C(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final q(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/m;->C(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p2

    instance-of v0, p2, Lkotlinx/coroutines/channels/h;

    if-eqz v0, :cond_2

    if-eqz v0, :cond_0

    check-cast p2, Lkotlinx/coroutines/channels/h;

    :cond_0
    iget-object p2, p0, Lkotlinx/coroutines/channels/c;->e:Lm3/l;

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lkotlinx/coroutines/internal/w;->c(Lm3/l;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->l()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p1, p0}, Le3/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->l()Ljava/lang/Throwable;

    move-result-object p0

    throw p0

    :cond_2
    sget-object p0, Le3/f;->a:Le3/f;

    return-object p0
.end method

.method public final t()Z
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferOverflow;->e:Lkotlinx/coroutines/channels/BufferOverflow;

    iget-object p0, p0, Lkotlinx/coroutines/channels/m;->o:Lkotlinx/coroutines/channels/BufferOverflow;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
