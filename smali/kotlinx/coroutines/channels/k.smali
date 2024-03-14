.class public final Lkotlinx/coroutines/channels/k;
.super Lkotlinx/coroutines/internal/B;
.source "SourceFile"


# instance fields
.field public final h:Lkotlinx/coroutines/channels/c;

.field public final i:Lt3/a;


# direct methods
.method public constructor <init>(JLkotlinx/coroutines/channels/k;Lkotlinx/coroutines/channels/c;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p5}, Lkotlinx/coroutines/internal/B;-><init>(JLkotlinx/coroutines/internal/B;I)V

    iput-object p4, p0, Lkotlinx/coroutines/channels/k;->h:Lkotlinx/coroutines/channels/c;

    sget p1, Lkotlinx/coroutines/channels/d;->b:I

    mul-int/lit8 p1, p1, 0x2

    new-instance p2, Lt3/a;

    invoke-direct {p2, p1}, Lt3/a;-><init>(I)V

    iput-object p2, p0, Lkotlinx/coroutines/channels/k;->i:Lt3/a;

    return-void
.end method


# virtual methods
.method public final f()I
    .locals 0

    sget p0, Lkotlinx/coroutines/channels/d;->b:I

    return p0
.end method

.method public final g(ILkotlin/coroutines/i;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lkotlinx/coroutines/channels/d;->b:I

    if-lt p1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    sub-int/2addr p1, v0

    :cond_1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/k;->k(I)Ljava/lang/Object;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/k;->l(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lkotlinx/coroutines/w0;

    iget-object v4, p0, Lkotlinx/coroutines/channels/k;->h:Lkotlinx/coroutines/channels/c;

    const/4 v5, 0x0

    if-nez v3, :cond_b

    instance-of v3, v2, Lkotlinx/coroutines/channels/t;

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_3
    sget-object v3, Lkotlinx/coroutines/channels/d;->j:Lkotlinx/coroutines/internal/E;

    if-eq v2, v3, :cond_9

    sget-object v3, Lkotlinx/coroutines/channels/d;->k:Lkotlinx/coroutines/internal/E;

    if-ne v2, v3, :cond_4

    goto :goto_3

    :cond_4
    sget-object v3, Lkotlinx/coroutines/channels/d;->g:Lkotlinx/coroutines/internal/E;

    if-eq v2, v3, :cond_2

    sget-object v3, Lkotlinx/coroutines/channels/d;->f:Lkotlinx/coroutines/internal/E;

    if-ne v2, v3, :cond_5

    goto :goto_1

    :cond_5
    sget-object p0, Lkotlinx/coroutines/channels/d;->i:Lkotlinx/coroutines/internal/E;

    if-eq v2, p0, :cond_8

    sget-object p0, Lkotlinx/coroutines/channels/d;->d:Lkotlinx/coroutines/internal/E;

    if-ne v2, p0, :cond_6

    goto :goto_2

    :cond_6
    sget-object p0, Lkotlinx/coroutines/channels/d;->l:Lkotlinx/coroutines/internal/E;

    if-ne v2, p0, :cond_7

    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "unexpected state: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_2
    return-void

    :cond_9
    :goto_3
    invoke-virtual {p0, p1, v5}, Lkotlinx/coroutines/channels/k;->n(ILjava/lang/Object;)V

    if-eqz v1, :cond_a

    invoke-static {v4}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    iget-object p0, v4, Lkotlinx/coroutines/channels/c;->e:Lm3/l;

    if-eqz p0, :cond_a

    invoke-static {p0, v0, p2}, Lkotlinx/coroutines/internal/w;->b(Lm3/l;Ljava/lang/Object;Lkotlin/coroutines/i;)V

    :cond_a
    return-void

    :cond_b
    :goto_4
    if-eqz v1, :cond_c

    sget-object v3, Lkotlinx/coroutines/channels/d;->j:Lkotlinx/coroutines/internal/E;

    goto :goto_5

    :cond_c
    sget-object v3, Lkotlinx/coroutines/channels/d;->k:Lkotlinx/coroutines/internal/E;

    :goto_5
    invoke-virtual {p0, p1, v2, v3}, Lkotlinx/coroutines/channels/k;->j(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1, v5}, Lkotlinx/coroutines/channels/k;->n(ILjava/lang/Object;)V

    xor-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, p1, v2}, Lkotlinx/coroutines/channels/k;->m(IZ)V

    if-eqz v1, :cond_d

    invoke-static {v4}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    iget-object p0, v4, Lkotlinx/coroutines/channels/c;->e:Lm3/l;

    if-eqz p0, :cond_d

    invoke-static {p0, v0, p2}, Lkotlinx/coroutines/internal/w;->b(Lm3/l;Ljava/lang/Object;Lkotlin/coroutines/i;)V

    :cond_d
    return-void
.end method

.method public final j(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lkotlinx/coroutines/channels/k;->i:Lt3/a;

    iget-object p0, p0, Lt3/a;->a:[Lt3/f;

    aget-object p0, p0, p1

    invoke-virtual {p0, p2, p3}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final k(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/channels/k;->i:Lt3/a;

    mul-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Lt3/a;->a:[Lt3/f;

    aget-object p0, p0, p1

    iget-object p0, p0, Lt3/f;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final l(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/channels/k;->i:Lt3/a;

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lt3/a;->a:[Lt3/f;

    aget-object p0, p0, p1

    iget-object p0, p0, Lt3/f;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final m(IZ)V
    .locals 18

    move-object/from16 v0, p0

    if-eqz p2, :cond_8

    iget-object v1, v0, Lkotlinx/coroutines/channels/k;->h:Lkotlinx/coroutines/channels/c;

    invoke-static {v1}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    iget-wide v2, v0, Lkotlinx/coroutines/internal/B;->f:J

    sget v4, Lkotlinx/coroutines/channels/d;->b:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    move/from16 v4, p1

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1}, Lkotlinx/coroutines/channels/c;->u()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v4, v1, Lkotlinx/coroutines/channels/c;->h:Lt3/e;

    iget-wide v4, v4, Lt3/e;->b:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_0

    sget v2, Lkotlinx/coroutines/channels/d;->c:I

    const/4 v4, 0x0

    move v3, v4

    :goto_0
    const-wide v5, 0x3fffffffffffffffL    # 1.9999999999999998

    if-ge v3, v2, :cond_2

    iget-object v7, v1, Lkotlinx/coroutines/channels/c;->h:Lt3/e;

    iget-wide v7, v7, Lt3/e;->b:J

    iget-object v9, v1, Lkotlinx/coroutines/channels/c;->i:Lt3/e;

    iget-wide v9, v9, Lt3/e;->b:J

    and-long/2addr v5, v9

    cmp-long v5, v7, v5

    if-nez v5, :cond_1

    iget-object v5, v1, Lkotlinx/coroutines/channels/c;->h:Lt3/e;

    iget-wide v5, v5, Lt3/e;->b:J

    cmp-long v5, v7, v5

    if-nez v5, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v7, v1, Lkotlinx/coroutines/channels/c;->i:Lt3/e;

    :cond_3
    iget-wide v2, v7, Lt3/e;->b:J

    and-long v8, v2, v5

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    add-long/2addr v8, v10

    invoke-virtual {v7, v2, v3, v8, v9}, Lt3/e;->b(JJ)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_4
    :goto_1
    iget-object v2, v1, Lkotlinx/coroutines/channels/c;->h:Lt3/e;

    iget-wide v2, v2, Lt3/e;->b:J

    iget-object v7, v1, Lkotlinx/coroutines/channels/c;->i:Lt3/e;

    iget-wide v7, v7, Lt3/e;->b:J

    and-long v12, v7, v5

    and-long v14, v7, v10

    const-wide/16 v16, 0x0

    cmp-long v9, v14, v16

    if-eqz v9, :cond_5

    const/4 v9, 0x1

    goto :goto_2

    :cond_5
    move v9, v4

    :goto_2
    cmp-long v14, v2, v12

    if-nez v14, :cond_7

    iget-object v14, v1, Lkotlinx/coroutines/channels/c;->h:Lt3/e;

    iget-wide v14, v14, Lt3/e;->b:J

    cmp-long v2, v2, v14

    if-nez v2, :cond_7

    iget-object v2, v1, Lkotlinx/coroutines/channels/c;->i:Lt3/e;

    :cond_6
    iget-wide v3, v2, Lt3/e;->b:J

    and-long v7, v3, v5

    add-long v7, v16, v7

    invoke-virtual {v2, v3, v4, v7, v8}, Lt3/e;->b(JJ)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_7
    if-nez v9, :cond_4

    iget-object v2, v1, Lkotlinx/coroutines/channels/c;->i:Lt3/e;

    add-long/2addr v12, v10

    invoke-virtual {v2, v7, v8, v12, v13}, Lt3/e;->b(JJ)Z

    goto :goto_1

    :cond_8
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/internal/B;->h()V

    return-void
.end method

.method public final n(ILjava/lang/Object;)V
    .locals 0

    mul-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Lkotlinx/coroutines/channels/k;->i:Lt3/a;

    iget-object p0, p0, Lt3/a;->a:[Lt3/f;

    aget-object p0, p0, p1

    invoke-virtual {p0, p2}, Lt3/f;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public final o(ILkotlinx/coroutines/internal/E;)V
    .locals 0

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lkotlinx/coroutines/channels/k;->i:Lt3/a;

    iget-object p0, p0, Lt3/a;->a:[Lt3/f;

    aget-object p0, p0, p1

    invoke-virtual {p0, p2}, Lt3/f;->d(Ljava/lang/Object;)V

    return-void
.end method
