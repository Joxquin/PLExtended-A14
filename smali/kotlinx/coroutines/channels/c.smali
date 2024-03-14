.class public Lkotlinx/coroutines/channels/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/channels/f;


# instance fields
.field public final d:I

.field public final e:Lm3/l;

.field public final f:Lt3/e;

.field public final g:Lt3/e;

.field public final h:Lt3/e;

.field public final i:Lt3/e;

.field public final j:Lt3/f;

.field public final k:Lt3/f;

.field public final l:Lt3/f;

.field public final m:Lt3/f;

.field public final n:Lt3/f;


# direct methods
.method public constructor <init>(ILm3/l;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkotlinx/coroutines/channels/c;->d:I

    iput-object p2, p0, Lkotlinx/coroutines/channels/c;->e:Lm3/l;

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lt3/c;->c(J)Lt3/e;

    move-result-object v2

    iput-object v2, p0, Lkotlinx/coroutines/channels/c;->f:Lt3/e;

    invoke-static {v0, v1}, Lt3/c;->c(J)Lt3/e;

    move-result-object v2

    iput-object v2, p0, Lkotlinx/coroutines/channels/c;->g:Lt3/e;

    sget-object v2, Lkotlinx/coroutines/channels/d;->a:Lkotlinx/coroutines/channels/k;

    if-eqz p1, :cond_2

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_1

    int-to-long v0, p1

    goto :goto_1

    :cond_1
    const-wide v0, 0x7fffffffffffffffL

    :cond_2
    :goto_1
    invoke-static {v0, v1}, Lt3/c;->c(J)Lt3/e;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/channels/c;->h:Lt3/e;

    iget-wide v0, p1, Lt3/e;->b:J

    invoke-static {v0, v1}, Lt3/c;->c(J)Lt3/e;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/channels/c;->i:Lt3/e;

    new-instance p1, Lkotlinx/coroutines/channels/k;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    move-object v0, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/channels/k;-><init>(JLkotlinx/coroutines/channels/k;Lkotlinx/coroutines/channels/c;I)V

    invoke-static {p1}, Lt3/c;->d(Ljava/lang/Object;)Lt3/f;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/channels/c;->j:Lt3/f;

    invoke-static {p1}, Lt3/c;->d(Ljava/lang/Object;)Lt3/f;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/channels/c;->k:Lt3/f;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->u()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p1, Lkotlinx/coroutines/channels/d;->a:Lkotlinx/coroutines/channels/k;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.channels.ChannelSegment<E of kotlinx.coroutines.channels.BufferedChannel>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    invoke-static {p1}, Lt3/c;->d(Ljava/lang/Object;)Lt3/f;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/channels/c;->l:Lt3/f;

    if-eqz p2, :cond_4

    new-instance p1, Lkotlinx/coroutines/channels/BufferedChannel$onUndeliveredElementReceiveCancellationConstructor$1$1;

    invoke-direct {p1, p0}, Lkotlinx/coroutines/channels/BufferedChannel$onUndeliveredElementReceiveCancellationConstructor$1$1;-><init>(Lkotlinx/coroutines/channels/c;)V

    :cond_4
    sget-object p1, Lkotlinx/coroutines/channels/d;->s:Lkotlinx/coroutines/internal/E;

    invoke-static {p1}, Lt3/c;->d(Ljava/lang/Object;)Lt3/f;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/channels/c;->m:Lt3/f;

    const/4 p1, 0x0

    invoke-static {p1}, Lt3/c;->d(Ljava/lang/Object;)Lt3/f;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/channels/c;->n:Lt3/f;

    return-void

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Invalid channel capacity: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", should be >=0"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final a(Lkotlinx/coroutines/channels/c;JLkotlinx/coroutines/channels/k;)Lkotlinx/coroutines/channels/k;
    .locals 9

    iget-object v0, p0, Lkotlinx/coroutines/channels/c;->j:Lt3/f;

    sget-object v1, Lkotlinx/coroutines/channels/d;->a:Lkotlinx/coroutines/channels/k;

    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannelKt$createSegmentFunction$1;->d:Lkotlinx/coroutines/channels/BufferedChannelKt$createSegmentFunction$1;

    :cond_0
    invoke-static {p3, p1, p2, v1}, Lkotlinx/coroutines/internal/b;->a(Lkotlinx/coroutines/internal/B;JLm3/p;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/internal/C;->b(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v2}, Lkotlinx/coroutines/internal/C;->a(Ljava/lang/Object;)Lkotlinx/coroutines/internal/B;

    move-result-object v3

    :cond_1
    :goto_0
    iget-object v4, v0, Lt3/f;->b:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/internal/B;

    iget-wide v5, v4, Lkotlinx/coroutines/internal/B;->f:J

    iget-wide v7, v3, Lkotlinx/coroutines/internal/B;->f:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/B;->i()Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v4, v3}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Lkotlinx/coroutines/internal/B;->e()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v4}, Lkotlinx/coroutines/internal/c;->d()V

    :cond_4
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_0

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/B;->e()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lkotlinx/coroutines/internal/c;->d()V

    goto :goto_0

    :cond_6
    :goto_3
    invoke-static {v2}, Lkotlinx/coroutines/internal/C;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->s()Z

    iget-wide p1, p3, Lkotlinx/coroutines/internal/B;->f:J

    sget v0, Lkotlinx/coroutines/channels/d;->b:I

    int-to-long v0, v0

    mul-long/2addr p1, v0

    iget-object p0, p0, Lkotlinx/coroutines/channels/c;->g:Lt3/e;

    iget-wide v0, p0, Lt3/e;->b:J

    cmp-long p0, p1, v0

    if-gez p0, :cond_a

    invoke-virtual {p3}, Lkotlinx/coroutines/internal/c;->a()V

    goto :goto_5

    :cond_7
    invoke-static {v2}, Lkotlinx/coroutines/internal/C;->a(Ljava/lang/Object;)Lkotlinx/coroutines/internal/B;

    move-result-object p3

    check-cast p3, Lkotlinx/coroutines/channels/k;

    iget-wide v0, p3, Lkotlinx/coroutines/internal/B;->f:J

    cmp-long p1, v0, p1

    if-lez p1, :cond_b

    sget p1, Lkotlinx/coroutines/channels/d;->b:I

    int-to-long p1, p1

    mul-long/2addr v0, p1

    iget-object p1, p0, Lkotlinx/coroutines/channels/c;->f:Lt3/e;

    :cond_8
    iget-wide v2, p1, Lt3/e;->b:J

    const-wide v4, 0xfffffffffffffffL

    and-long/2addr v4, v2

    cmp-long p2, v4, v0

    if-ltz p2, :cond_9

    goto :goto_4

    :cond_9
    const/16 p2, 0x3c

    shr-long v6, v2, p2

    long-to-int v6, v6

    sget-object v7, Lkotlinx/coroutines/channels/d;->a:Lkotlinx/coroutines/channels/k;

    int-to-long v6, v6

    shl-long/2addr v6, p2

    add-long/2addr v6, v4

    iget-object p2, p0, Lkotlinx/coroutines/channels/c;->f:Lt3/e;

    invoke-virtual {p2, v2, v3, v6, v7}, Lt3/e;->b(JJ)Z

    move-result p2

    if-eqz p2, :cond_8

    :goto_4
    iget-wide p1, p3, Lkotlinx/coroutines/internal/B;->f:J

    sget v0, Lkotlinx/coroutines/channels/d;->b:I

    int-to-long v0, v0

    mul-long/2addr p1, v0

    iget-object p0, p0, Lkotlinx/coroutines/channels/c;->g:Lt3/e;

    iget-wide v0, p0, Lt3/e;->b:J

    cmp-long p0, p1, v0

    if-gez p0, :cond_a

    invoke-virtual {p3}, Lkotlinx/coroutines/internal/c;->a()V

    :cond_a
    :goto_5
    const/4 p3, 0x0

    :cond_b
    return-object p3
.end method

.method public static final c(Lkotlinx/coroutines/channels/c;Lkotlinx/coroutines/channels/k;ILjava/lang/Object;JLjava/lang/Object;Z)I
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p2, p3}, Lkotlinx/coroutines/channels/k;->n(ILjava/lang/Object;)V

    if-eqz p7, :cond_0

    invoke-virtual/range {p0 .. p7}, Lkotlinx/coroutines/channels/c;->B(Lkotlinx/coroutines/channels/k;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/k;->l(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0, p4, p5}, Lkotlinx/coroutines/channels/c;->d(J)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lkotlinx/coroutines/channels/d;->d:Lkotlinx/coroutines/internal/E;

    invoke-virtual {p1, p2, v2, v0}, Lkotlinx/coroutines/channels/k;->j(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move p0, v1

    goto :goto_0

    :cond_1
    if-nez p6, :cond_2

    const/4 p0, 0x3

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p2, v2, p6}, Lkotlinx/coroutines/channels/k;->j(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p0, 0x2

    goto :goto_0

    :cond_3
    instance-of v3, v0, Lkotlinx/coroutines/w0;

    if-eqz v3, :cond_6

    invoke-virtual {p1, p2, v2}, Lkotlinx/coroutines/channels/k;->n(ILjava/lang/Object;)V

    invoke-virtual {p0, v0, p3}, Lkotlinx/coroutines/channels/c;->y(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lkotlinx/coroutines/channels/d;->i:Lkotlinx/coroutines/internal/E;

    invoke-virtual {p1, p2, p0}, Lkotlinx/coroutines/channels/k;->o(ILkotlinx/coroutines/internal/E;)V

    const/4 p0, 0x0

    goto :goto_0

    :cond_4
    sget-object p0, Lkotlinx/coroutines/channels/d;->k:Lkotlinx/coroutines/internal/E;

    mul-int/lit8 p3, p2, 0x2

    add-int/2addr p3, v1

    iget-object p4, p1, Lkotlinx/coroutines/channels/k;->i:Lt3/a;

    iget-object p4, p4, Lt3/a;->a:[Lt3/f;

    aget-object p3, p4, p3

    invoke-virtual {p3, p0}, Lt3/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eq p3, p0, :cond_5

    invoke-virtual {p1, p2, v1}, Lkotlinx/coroutines/channels/k;->m(IZ)V

    :cond_5
    const/4 p0, 0x5

    goto :goto_0

    :cond_6
    invoke-virtual/range {p0 .. p7}, Lkotlinx/coroutines/channels/c;->B(Lkotlinx/coroutines/channels/k;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static z(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p0, Lkotlinx/coroutines/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlinx/coroutines/g;

    sget-object v0, Le3/f;->a:Le3/f;

    invoke-static {p0, v0, v1}, Lkotlinx/coroutines/channels/d;->a(Lkotlinx/coroutines/g;Ljava/lang/Object;Lm3/l;)Z

    move-result p0

    return p0

    :cond_0
    instance-of v0, p0, Lw3/b;

    if-nez v0, :cond_2

    instance-of v0, p0, Lkotlinx/coroutines/channels/b;

    if-eqz v0, :cond_1

    check-cast p0, Lkotlinx/coroutines/channels/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, p0, v1}, Lkotlinx/coroutines/channels/d;->a(Lkotlinx/coroutines/g;Ljava/lang/Object;Lm3/l;)Z

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected waiter: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation<*>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lw3/a;

    sget-object p0, Le3/f;->a:Le3/f;

    throw v1
.end method


# virtual methods
.method public final A(Lkotlinx/coroutines/channels/k;IJLkotlinx/coroutines/channels/g;)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/k;->l(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const-wide v2, 0xfffffffffffffffL

    if-nez v0, :cond_1

    iget-object v4, p0, Lkotlinx/coroutines/channels/c;->f:Lt3/e;

    iget-wide v4, v4, Lt3/e;->b:J

    and-long/2addr v4, v2

    cmp-long v4, p3, v4

    if-ltz v4, :cond_2

    if-nez p5, :cond_0

    sget-object p0, Lkotlinx/coroutines/channels/d;->n:Lkotlinx/coroutines/internal/E;

    return-object p0

    :cond_0
    invoke-virtual {p1, p2, v0, p5}, Lkotlinx/coroutines/channels/k;->j(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->i()V

    sget-object p0, Lkotlinx/coroutines/channels/d;->m:Lkotlinx/coroutines/internal/E;

    return-object p0

    :cond_1
    sget-object v4, Lkotlinx/coroutines/channels/d;->d:Lkotlinx/coroutines/internal/E;

    if-ne v0, v4, :cond_2

    sget-object v4, Lkotlinx/coroutines/channels/d;->i:Lkotlinx/coroutines/internal/E;

    invoke-virtual {p1, p2, v0, v4}, Lkotlinx/coroutines/channels/k;->j(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->i()V

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/k;->k(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p2, v1}, Lkotlinx/coroutines/channels/k;->n(ILjava/lang/Object;)V

    return-object p0

    :cond_2
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/k;->l(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    sget-object v4, Lkotlinx/coroutines/channels/d;->e:Lkotlinx/coroutines/internal/E;

    if-ne v0, v4, :cond_3

    goto/16 :goto_0

    :cond_3
    sget-object v4, Lkotlinx/coroutines/channels/d;->d:Lkotlinx/coroutines/internal/E;

    if-ne v0, v4, :cond_4

    sget-object v4, Lkotlinx/coroutines/channels/d;->i:Lkotlinx/coroutines/internal/E;

    invoke-virtual {p1, p2, v0, v4}, Lkotlinx/coroutines/channels/k;->j(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->i()V

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/k;->k(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p2, v1}, Lkotlinx/coroutines/channels/k;->n(ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_4
    sget-object v4, Lkotlinx/coroutines/channels/d;->j:Lkotlinx/coroutines/internal/E;

    if-ne v0, v4, :cond_5

    sget-object p0, Lkotlinx/coroutines/channels/d;->o:Lkotlinx/coroutines/internal/E;

    goto/16 :goto_1

    :cond_5
    sget-object v5, Lkotlinx/coroutines/channels/d;->h:Lkotlinx/coroutines/internal/E;

    if-ne v0, v5, :cond_6

    sget-object p0, Lkotlinx/coroutines/channels/d;->o:Lkotlinx/coroutines/internal/E;

    goto/16 :goto_1

    :cond_6
    sget-object v5, Lkotlinx/coroutines/channels/d;->l:Lkotlinx/coroutines/internal/E;

    if-ne v0, v5, :cond_7

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->i()V

    sget-object p0, Lkotlinx/coroutines/channels/d;->o:Lkotlinx/coroutines/internal/E;

    goto :goto_1

    :cond_7
    sget-object v5, Lkotlinx/coroutines/channels/d;->g:Lkotlinx/coroutines/internal/E;

    if-eq v0, v5, :cond_2

    sget-object v5, Lkotlinx/coroutines/channels/d;->f:Lkotlinx/coroutines/internal/E;

    invoke-virtual {p1, p2, v0, v5}, Lkotlinx/coroutines/channels/k;->j(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    instance-of p3, v0, Lkotlinx/coroutines/channels/t;

    if-eqz p3, :cond_8

    check-cast v0, Lkotlinx/coroutines/channels/t;

    iget-object v0, v0, Lkotlinx/coroutines/channels/t;->a:Lkotlinx/coroutines/w0;

    :cond_8
    invoke-static {v0}, Lkotlinx/coroutines/channels/c;->z(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_9

    sget-object p3, Lkotlinx/coroutines/channels/d;->i:Lkotlinx/coroutines/internal/E;

    invoke-virtual {p1, p2, p3}, Lkotlinx/coroutines/channels/k;->o(ILkotlinx/coroutines/internal/E;)V

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->i()V

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/k;->k(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p2, v1}, Lkotlinx/coroutines/channels/k;->n(ILjava/lang/Object;)V

    goto :goto_1

    :cond_9
    invoke-virtual {p1, p2, v4}, Lkotlinx/coroutines/channels/k;->o(ILkotlinx/coroutines/internal/E;)V

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p4}, Lkotlinx/coroutines/channels/k;->m(IZ)V

    if-eqz p3, :cond_a

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->i()V

    :cond_a
    sget-object p0, Lkotlinx/coroutines/channels/d;->o:Lkotlinx/coroutines/internal/E;

    goto :goto_1

    :cond_b
    :goto_0
    iget-object v4, p0, Lkotlinx/coroutines/channels/c;->f:Lt3/e;

    iget-wide v4, v4, Lt3/e;->b:J

    and-long/2addr v4, v2

    cmp-long v4, p3, v4

    if-gez v4, :cond_c

    sget-object v4, Lkotlinx/coroutines/channels/d;->h:Lkotlinx/coroutines/internal/E;

    invoke-virtual {p1, p2, v0, v4}, Lkotlinx/coroutines/channels/k;->j(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->i()V

    sget-object p0, Lkotlinx/coroutines/channels/d;->o:Lkotlinx/coroutines/internal/E;

    goto :goto_1

    :cond_c
    if-nez p5, :cond_d

    sget-object p0, Lkotlinx/coroutines/channels/d;->n:Lkotlinx/coroutines/internal/E;

    goto :goto_1

    :cond_d
    invoke-virtual {p1, p2, v0, p5}, Lkotlinx/coroutines/channels/k;->j(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->i()V

    sget-object p0, Lkotlinx/coroutines/channels/d;->m:Lkotlinx/coroutines/internal/E;

    :goto_1
    return-object p0
.end method

.method public final B(Lkotlinx/coroutines/channels/k;ILjava/lang/Object;JLjava/lang/Object;Z)I
    .locals 6

    :cond_0
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/k;->l(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p0, p4, p5}, Lkotlinx/coroutines/channels/c;->d(J)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p7, :cond_1

    sget-object v0, Lkotlinx/coroutines/channels/d;->d:Lkotlinx/coroutines/internal/E;

    invoke-virtual {p1, p2, v4, v0}, Lkotlinx/coroutines/channels/k;->j(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_1
    if-eqz p7, :cond_2

    sget-object v0, Lkotlinx/coroutines/channels/d;->j:Lkotlinx/coroutines/internal/E;

    invoke-virtual {p1, p2, v4, v0}, Lkotlinx/coroutines/channels/k;->j(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, v3}, Lkotlinx/coroutines/channels/k;->m(IZ)V

    return v2

    :cond_2
    if-nez p6, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    invoke-virtual {p1, p2, v4, p6}, Lkotlinx/coroutines/channels/k;->j(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_4
    sget-object v5, Lkotlinx/coroutines/channels/d;->e:Lkotlinx/coroutines/internal/E;

    if-ne v0, v5, :cond_5

    sget-object v2, Lkotlinx/coroutines/channels/d;->d:Lkotlinx/coroutines/internal/E;

    invoke-virtual {p1, p2, v0, v2}, Lkotlinx/coroutines/channels/k;->j(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_5
    sget-object p4, Lkotlinx/coroutines/channels/d;->k:Lkotlinx/coroutines/internal/E;

    const/4 p5, 0x5

    if-ne v0, p4, :cond_6

    invoke-virtual {p1, p2, v4}, Lkotlinx/coroutines/channels/k;->n(ILjava/lang/Object;)V

    return p5

    :cond_6
    sget-object p6, Lkotlinx/coroutines/channels/d;->h:Lkotlinx/coroutines/internal/E;

    if-ne v0, p6, :cond_7

    invoke-virtual {p1, p2, v4}, Lkotlinx/coroutines/channels/k;->n(ILjava/lang/Object;)V

    return p5

    :cond_7
    sget-object p6, Lkotlinx/coroutines/channels/d;->l:Lkotlinx/coroutines/internal/E;

    if-ne v0, p6, :cond_8

    invoke-virtual {p1, p2, v4}, Lkotlinx/coroutines/channels/k;->n(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->s()Z

    return v2

    :cond_8
    invoke-virtual {p1, p2, v4}, Lkotlinx/coroutines/channels/k;->n(ILjava/lang/Object;)V

    instance-of p6, v0, Lkotlinx/coroutines/channels/t;

    if-eqz p6, :cond_9

    check-cast v0, Lkotlinx/coroutines/channels/t;

    iget-object v0, v0, Lkotlinx/coroutines/channels/t;->a:Lkotlinx/coroutines/w0;

    :cond_9
    invoke-virtual {p0, v0, p3}, Lkotlinx/coroutines/channels/c;->y(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    sget-object p0, Lkotlinx/coroutines/channels/d;->i:Lkotlinx/coroutines/internal/E;

    invoke-virtual {p1, p2, p0}, Lkotlinx/coroutines/channels/k;->o(ILkotlinx/coroutines/internal/E;)V

    goto :goto_0

    :cond_a
    mul-int/lit8 p0, p2, 0x2

    add-int/2addr p0, v1

    iget-object p3, p1, Lkotlinx/coroutines/channels/k;->i:Lt3/a;

    iget-object p3, p3, Lt3/a;->a:[Lt3/f;

    aget-object p0, p3, p0

    invoke-virtual {p0, p4}, Lt3/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eq p0, p4, :cond_b

    invoke-virtual {p1, p2, v1}, Lkotlinx/coroutines/channels/k;->m(IZ)V

    :cond_b
    move v3, p5

    :goto_0
    return v3
.end method

.method public final b(Ljava/util/concurrent/CancellationException;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/concurrent/CancellationException;

    const-string v0, "Channel was cancelled"

    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/channels/c;->e(Ljava/lang/Throwable;Z)Z

    return-void
.end method

.method public final d(J)Z
    .locals 4

    iget-object v0, p0, Lkotlinx/coroutines/channels/c;->h:Lt3/e;

    iget-wide v0, v0, Lt3/e;->b:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lkotlinx/coroutines/channels/c;->g:Lt3/e;

    iget-wide v0, v0, Lt3/e;->b:J

    iget p0, p0, Lkotlinx/coroutines/channels/c;->d:I

    int-to-long v2, p0

    add-long/2addr v0, v2

    cmp-long p0, p1, v0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final e(Ljava/lang/Throwable;Z)Z
    .locals 11

    const/4 v0, 0x1

    const-wide v1, 0xfffffffffffffffL

    const/16 v3, 0x3c

    if-eqz p2, :cond_1

    iget-object v4, p0, Lkotlinx/coroutines/channels/c;->f:Lt3/e;

    :cond_0
    iget-wide v5, v4, Lt3/e;->b:J

    shr-long v7, v5, v3

    long-to-int v7, v7

    if-nez v7, :cond_1

    and-long v7, v5, v1

    sget-object v9, Lkotlinx/coroutines/channels/d;->a:Lkotlinx/coroutines/channels/k;

    int-to-long v9, v0

    shl-long/2addr v9, v3

    add-long/2addr v9, v7

    invoke-virtual {v4, v5, v6, v9, v10}, Lt3/e;->b(JJ)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_1
    iget-object v4, p0, Lkotlinx/coroutines/channels/c;->m:Lt3/f;

    sget-object v5, Lkotlinx/coroutines/channels/d;->s:Lkotlinx/coroutines/internal/E;

    invoke-virtual {v4, v5, p1}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v4, 0x3

    if-eqz p2, :cond_3

    iget-object p2, p0, Lkotlinx/coroutines/channels/c;->f:Lt3/e;

    :cond_2
    iget-wide v5, p2, Lt3/e;->b:J

    and-long v7, v5, v1

    sget-object v9, Lkotlinx/coroutines/channels/d;->a:Lkotlinx/coroutines/channels/k;

    int-to-long v9, v4

    shl-long/2addr v9, v3

    add-long/2addr v9, v7

    invoke-virtual {p2, v5, v6, v9, v10}, Lt3/e;->b(JJ)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lkotlinx/coroutines/channels/c;->f:Lt3/e;

    :cond_4
    iget-wide v5, p2, Lt3/e;->b:J

    shr-long v7, v5, v3

    long-to-int v7, v7

    if-eqz v7, :cond_6

    if-eq v7, v0, :cond_5

    goto :goto_1

    :cond_5
    and-long v7, v5, v1

    sget-object v9, Lkotlinx/coroutines/channels/d;->a:Lkotlinx/coroutines/channels/k;

    move v9, v4

    goto :goto_0

    :cond_6
    and-long v7, v5, v1

    sget-object v9, Lkotlinx/coroutines/channels/d;->a:Lkotlinx/coroutines/channels/k;

    const/4 v9, 0x2

    :goto_0
    int-to-long v9, v9

    shl-long/2addr v9, v3

    add-long/2addr v9, v7

    invoke-virtual {p2, v5, v6, v9, v10}, Lt3/e;->b(JJ)Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->s()Z

    if-eqz p1, :cond_a

    iget-object p2, p0, Lkotlinx/coroutines/channels/c;->n:Lt3/f;

    :cond_7
    iget-object v1, p2, Lt3/f;->b:Ljava/lang/Object;

    if-nez v1, :cond_8

    sget-object v2, Lkotlinx/coroutines/channels/d;->q:Lkotlinx/coroutines/internal/E;

    goto :goto_2

    :cond_8
    sget-object v2, Lkotlinx/coroutines/channels/d;->r:Lkotlinx/coroutines/internal/E;

    :goto_2
    invoke-virtual {p2, v1, v2}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez v1, :cond_9

    goto :goto_3

    :cond_9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/l;->a(ILjava/lang/Object;)V

    check-cast v1, Lm3/l;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->k()Ljava/lang/Throwable;

    move-result-object p0

    invoke-interface {v1, p0}, Lm3/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_3
    return p1
.end method

.method public final f(J)Lkotlinx/coroutines/channels/k;
    .locals 11

    iget-object v0, p0, Lkotlinx/coroutines/channels/c;->l:Lt3/f;

    iget-object v0, v0, Lt3/f;->b:Ljava/lang/Object;

    iget-object v1, p0, Lkotlinx/coroutines/channels/c;->j:Lt3/f;

    iget-object v1, v1, Lt3/f;->b:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/k;

    iget-wide v2, v1, Lkotlinx/coroutines/internal/B;->f:J

    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/channels/k;

    iget-wide v4, v4, Lkotlinx/coroutines/internal/B;->f:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move-object v0, v1

    :cond_0
    iget-object v1, p0, Lkotlinx/coroutines/channels/c;->k:Lt3/f;

    iget-object v1, v1, Lt3/f;->b:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/k;

    iget-wide v2, v1, Lkotlinx/coroutines/internal/B;->f:J

    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/channels/k;

    iget-wide v4, v4, Lkotlinx/coroutines/internal/B;->f:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    move-object v0, v1

    :cond_1
    check-cast v0, Lkotlinx/coroutines/internal/c;

    sget-object v1, Lkotlinx/coroutines/internal/b;->a:Lkotlinx/coroutines/internal/E;

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget-object v1, v0, Lkotlinx/coroutines/internal/c;->d:Lt3/f;

    iget-object v1, v1, Lt3/f;->b:Ljava/lang/Object;

    sget-object v2, Lkotlinx/coroutines/internal/b;->a:Lkotlinx/coroutines/internal/E;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    goto :goto_1

    :cond_3
    check-cast v1, Lkotlinx/coroutines/internal/c;

    if-nez v1, :cond_14

    iget-object v1, v0, Lkotlinx/coroutines/internal/c;->d:Lt3/f;

    invoke-virtual {v1, v3, v2}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    check-cast v0, Lkotlinx/coroutines/channels/k;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->t()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_a

    move-object v1, v0

    :cond_4
    sget v4, Lkotlinx/coroutines/channels/d;->b:I

    add-int/2addr v4, v2

    :goto_2
    const-wide/16 v5, -0x1

    if-ge v2, v4, :cond_9

    iget-wide v7, v1, Lkotlinx/coroutines/internal/B;->f:J

    sget v9, Lkotlinx/coroutines/channels/d;->b:I

    int-to-long v9, v9

    mul-long/2addr v7, v9

    int-to-long v9, v4

    add-long/2addr v7, v9

    iget-object v9, p0, Lkotlinx/coroutines/channels/c;->g:Lt3/e;

    iget-wide v9, v9, Lt3/e;->b:J

    cmp-long v9, v7, v9

    if-gez v9, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v1, v4}, Lkotlinx/coroutines/channels/k;->l(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_7

    sget-object v10, Lkotlinx/coroutines/channels/d;->e:Lkotlinx/coroutines/internal/E;

    if-ne v9, v10, :cond_6

    goto :goto_3

    :cond_6
    sget-object v10, Lkotlinx/coroutines/channels/d;->d:Lkotlinx/coroutines/internal/E;

    if-ne v9, v10, :cond_8

    goto :goto_5

    :cond_7
    :goto_3
    sget-object v10, Lkotlinx/coroutines/channels/d;->l:Lkotlinx/coroutines/internal/E;

    invoke-virtual {v1, v4, v9, v10}, Lkotlinx/coroutines/channels/k;->j(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/B;->h()V

    :cond_8
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_9
    iget-object v1, v1, Lkotlinx/coroutines/internal/c;->e:Lt3/f;

    iget-object v1, v1, Lt3/f;->b:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/internal/c;

    check-cast v1, Lkotlinx/coroutines/channels/k;

    if-nez v1, :cond_4

    :goto_4
    move-wide v7, v5

    :goto_5
    cmp-long v1, v7, v5

    if-eqz v1, :cond_a

    invoke-virtual {p0, v7, v8}, Lkotlinx/coroutines/channels/c;->h(J)V

    :cond_a
    move-object v1, v0

    :goto_6
    const/4 v4, 0x1

    if-eqz v1, :cond_11

    sget v5, Lkotlinx/coroutines/channels/d;->b:I

    sub-int/2addr v5, v4

    :goto_7
    if-ge v2, v5, :cond_10

    sget v6, Lkotlinx/coroutines/channels/d;->b:I

    int-to-long v6, v6

    iget-wide v8, v1, Lkotlinx/coroutines/internal/B;->f:J

    mul-long/2addr v8, v6

    int-to-long v6, v5

    add-long/2addr v8, v6

    cmp-long v6, v8, p1

    if-ltz v6, :cond_11

    :cond_b
    invoke-virtual {v1, v5}, Lkotlinx/coroutines/channels/k;->l(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_e

    sget-object v7, Lkotlinx/coroutines/channels/d;->e:Lkotlinx/coroutines/internal/E;

    if-ne v6, v7, :cond_c

    goto :goto_8

    :cond_c
    instance-of v7, v6, Lkotlinx/coroutines/channels/t;

    if-eqz v7, :cond_d

    sget-object v7, Lkotlinx/coroutines/channels/d;->l:Lkotlinx/coroutines/internal/E;

    invoke-virtual {v1, v5, v6, v7}, Lkotlinx/coroutines/channels/k;->j(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    check-cast v6, Lkotlinx/coroutines/channels/t;

    iget-object v6, v6, Lkotlinx/coroutines/channels/t;->a:Lkotlinx/coroutines/w0;

    invoke-static {v3, v6}, Lkotlinx/coroutines/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v5, v4}, Lkotlinx/coroutines/channels/k;->m(IZ)V

    goto :goto_9

    :cond_d
    instance-of v7, v6, Lkotlinx/coroutines/w0;

    if-eqz v7, :cond_f

    sget-object v7, Lkotlinx/coroutines/channels/d;->l:Lkotlinx/coroutines/internal/E;

    invoke-virtual {v1, v5, v6, v7}, Lkotlinx/coroutines/channels/k;->j(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-static {v3, v6}, Lkotlinx/coroutines/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v5, v4}, Lkotlinx/coroutines/channels/k;->m(IZ)V

    goto :goto_9

    :cond_e
    :goto_8
    sget-object v7, Lkotlinx/coroutines/channels/d;->l:Lkotlinx/coroutines/internal/E;

    invoke-virtual {v1, v5, v6, v7}, Lkotlinx/coroutines/channels/k;->j(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/B;->h()V

    :cond_f
    :goto_9
    add-int/lit8 v5, v5, -0x1

    goto :goto_7

    :cond_10
    iget-object v1, v1, Lkotlinx/coroutines/internal/c;->e:Lt3/f;

    iget-object v1, v1, Lt3/f;->b:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/internal/c;

    check-cast v1, Lkotlinx/coroutines/channels/k;

    goto :goto_6

    :cond_11
    if-eqz v3, :cond_13

    instance-of p1, v3, Ljava/util/ArrayList;

    if-nez p1, :cond_12

    check-cast v3, Lkotlinx/coroutines/w0;

    invoke-virtual {p0, v3, v4}, Lkotlinx/coroutines/channels/c;->x(Lkotlinx/coroutines/w0;Z)V

    goto :goto_b

    :cond_12
    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v4

    :goto_a
    if-ge v2, p1, :cond_13

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlinx/coroutines/w0;

    invoke-virtual {p0, p2, v4}, Lkotlinx/coroutines/channels/c;->x(Lkotlinx/coroutines/w0;Z)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_a

    :cond_13
    :goto_b
    return-object v0

    :cond_14
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public final g(Ljava/lang/Throwable;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/channels/c;->e(Ljava/lang/Throwable;Z)Z

    move-result p0

    return p0
.end method

.method public final h(J)V
    .locals 10

    iget-object v0, p0, Lkotlinx/coroutines/channels/c;->k:Lt3/f;

    iget-object v0, v0, Lt3/f;->b:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/channels/k;

    :cond_0
    :goto_0
    iget-object v1, p0, Lkotlinx/coroutines/channels/c;->g:Lt3/e;

    iget-wide v8, v1, Lt3/e;->b:J

    iget v1, p0, Lkotlinx/coroutines/channels/c;->d:I

    int-to-long v1, v1

    add-long/2addr v1, v8

    iget-object v3, p0, Lkotlinx/coroutines/channels/c;->h:Lt3/e;

    iget-wide v3, v3, Lt3/e;->b:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    cmp-long v1, p1, v1

    if-gez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lkotlinx/coroutines/channels/c;->g:Lt3/e;

    const-wide/16 v2, 0x1

    add-long/2addr v2, v8

    invoke-virtual {v1, v8, v9, v2, v3}, Lt3/e;->b(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lkotlinx/coroutines/channels/d;->b:I

    int-to-long v1, v1

    div-long v3, v8, v1

    rem-long v1, v8, v1

    long-to-int v1, v1

    iget-wide v5, v0, Lkotlinx/coroutines/internal/B;->f:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_3

    invoke-virtual {p0, v3, v4, v0}, Lkotlinx/coroutines/channels/c;->j(JLkotlinx/coroutines/channels/k;)Lkotlinx/coroutines/channels/k;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v2

    :cond_3
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v0

    move v4, v1

    move-wide v5, v8

    invoke-virtual/range {v2 .. v7}, Lkotlinx/coroutines/channels/c;->A(Lkotlinx/coroutines/channels/k;IJLkotlinx/coroutines/channels/g;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/channels/d;->o:Lkotlinx/coroutines/internal/E;

    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->n()J

    move-result-wide v1

    cmp-long v1, v8, v1

    if-gez v1, :cond_0

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/c;->a()V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/c;->a()V

    iget-object v2, p0, Lkotlinx/coroutines/channels/c;->e:Lm3/l;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lkotlinx/coroutines/internal/w;->c(Lm3/l;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    throw v1
.end method

.method public final i()V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/c;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lkotlinx/coroutines/channels/c;->l:Lt3/f;

    iget-object v1, v1, Lt3/f;->b:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/k;

    :goto_0
    iget-object v2, v0, Lkotlinx/coroutines/channels/c;->h:Lt3/e;

    invoke-virtual {v2}, Lt3/e;->c()J

    move-result-wide v2

    sget v4, Lkotlinx/coroutines/channels/d;->b:I

    int-to-long v4, v4

    div-long v4, v2, v4

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/c;->n()J

    move-result-wide v6

    cmp-long v6, v6, v2

    const-wide/16 v7, 0x1

    if-gtz v6, :cond_2

    iget-wide v2, v1, Lkotlinx/coroutines/internal/B;->f:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/c;->b()Lkotlinx/coroutines/internal/c;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v4, v5, v1}, Lkotlinx/coroutines/channels/c;->v(JLkotlinx/coroutines/channels/k;)V

    :cond_1
    invoke-virtual {v0, v7, v8}, Lkotlinx/coroutines/channels/c;->o(J)V

    return-void

    :cond_2
    iget-wide v9, v1, Lkotlinx/coroutines/internal/B;->f:J

    cmp-long v6, v9, v4

    const/4 v9, 0x0

    if-eqz v6, :cond_e

    iget-object v6, v0, Lkotlinx/coroutines/channels/c;->l:Lt3/f;

    sget-object v11, Lkotlinx/coroutines/channels/BufferedChannelKt$createSegmentFunction$1;->d:Lkotlinx/coroutines/channels/BufferedChannelKt$createSegmentFunction$1;

    :goto_1
    invoke-static {v1, v4, v5, v11}, Lkotlinx/coroutines/internal/b;->a(Lkotlinx/coroutines/internal/B;JLm3/p;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Lkotlinx/coroutines/internal/C;->b(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    invoke-static {v12}, Lkotlinx/coroutines/internal/C;->a(Ljava/lang/Object;)Lkotlinx/coroutines/internal/B;

    move-result-object v13

    :goto_2
    iget-object v14, v6, Lt3/f;->b:Ljava/lang/Object;

    check-cast v14, Lkotlinx/coroutines/internal/B;

    move-object v15, v11

    iget-wide v10, v14, Lkotlinx/coroutines/internal/B;->f:J

    iget-wide v7, v13, Lkotlinx/coroutines/internal/B;->f:J

    cmp-long v7, v10, v7

    if-ltz v7, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v13}, Lkotlinx/coroutines/internal/B;->i()Z

    move-result v7

    if-nez v7, :cond_4

    move v7, v9

    goto :goto_4

    :cond_4
    invoke-virtual {v6, v14, v13}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v14}, Lkotlinx/coroutines/internal/B;->e()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v14}, Lkotlinx/coroutines/internal/c;->d()V

    :cond_5
    :goto_3
    const/4 v7, 0x1

    :goto_4
    if-eqz v7, :cond_6

    goto :goto_5

    :cond_6
    move-object v11, v15

    const-wide/16 v7, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {v13}, Lkotlinx/coroutines/internal/B;->e()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v13}, Lkotlinx/coroutines/internal/c;->d()V

    :cond_8
    move-object v11, v15

    const-wide/16 v7, 0x1

    goto :goto_2

    :cond_9
    :goto_5
    invoke-static {v12}, Lkotlinx/coroutines/internal/C;->b(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/c;->s()Z

    invoke-virtual {v0, v4, v5, v1}, Lkotlinx/coroutines/channels/c;->v(JLkotlinx/coroutines/channels/k;)V

    const-wide/16 v6, 0x1

    invoke-virtual {v0, v6, v7}, Lkotlinx/coroutines/channels/c;->o(J)V

    goto :goto_6

    :cond_a
    const-wide/16 v6, 0x1

    invoke-static {v12}, Lkotlinx/coroutines/internal/C;->a(Ljava/lang/Object;)Lkotlinx/coroutines/internal/B;

    move-result-object v8

    check-cast v8, Lkotlinx/coroutines/channels/k;

    iget-wide v10, v8, Lkotlinx/coroutines/internal/B;->f:J

    cmp-long v4, v10, v4

    if-lez v4, :cond_c

    iget-object v4, v0, Lkotlinx/coroutines/channels/c;->h:Lt3/e;

    add-long v12, v2, v6

    sget v5, Lkotlinx/coroutines/channels/d;->b:I

    int-to-long v5, v5

    mul-long/2addr v10, v5

    invoke-virtual {v4, v12, v13, v10, v11}, Lt3/e;->b(JJ)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-wide v7, v8, Lkotlinx/coroutines/internal/B;->f:J

    mul-long/2addr v7, v5

    sub-long/2addr v7, v2

    invoke-virtual {v0, v7, v8}, Lkotlinx/coroutines/channels/c;->o(J)V

    goto :goto_6

    :cond_b
    const-wide/16 v4, 0x1

    invoke-virtual {v0, v4, v5}, Lkotlinx/coroutines/channels/c;->o(J)V

    :goto_6
    const/4 v8, 0x0

    :cond_c
    if-nez v8, :cond_d

    goto/16 :goto_0

    :cond_d
    move-object v1, v8

    :cond_e
    sget v4, Lkotlinx/coroutines/channels/d;->b:I

    int-to-long v4, v4

    rem-long v4, v2, v4

    long-to-int v4, v4

    invoke-virtual {v1, v4}, Lkotlinx/coroutines/channels/k;->l(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lkotlinx/coroutines/w0;

    if-eqz v6, :cond_10

    iget-object v6, v0, Lkotlinx/coroutines/channels/c;->g:Lt3/e;

    iget-wide v6, v6, Lt3/e;->b:J

    cmp-long v6, v2, v6

    if-ltz v6, :cond_10

    sget-object v6, Lkotlinx/coroutines/channels/d;->g:Lkotlinx/coroutines/internal/E;

    invoke-virtual {v1, v4, v5, v6}, Lkotlinx/coroutines/channels/k;->j(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-static {v5}, Lkotlinx/coroutines/channels/c;->z(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    sget-object v2, Lkotlinx/coroutines/channels/d;->d:Lkotlinx/coroutines/internal/E;

    invoke-virtual {v1, v4, v2}, Lkotlinx/coroutines/channels/k;->o(ILkotlinx/coroutines/internal/E;)V

    goto/16 :goto_8

    :cond_f
    sget-object v2, Lkotlinx/coroutines/channels/d;->j:Lkotlinx/coroutines/internal/E;

    invoke-virtual {v1, v4, v2}, Lkotlinx/coroutines/channels/k;->o(ILkotlinx/coroutines/internal/E;)V

    invoke-virtual {v1, v4, v9}, Lkotlinx/coroutines/channels/k;->m(IZ)V

    goto/16 :goto_9

    :cond_10
    :goto_7
    invoke-virtual {v1, v4}, Lkotlinx/coroutines/channels/k;->l(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lkotlinx/coroutines/w0;

    if-eqz v6, :cond_13

    iget-object v6, v0, Lkotlinx/coroutines/channels/c;->g:Lt3/e;

    iget-wide v6, v6, Lt3/e;->b:J

    cmp-long v6, v2, v6

    if-gez v6, :cond_11

    new-instance v6, Lkotlinx/coroutines/channels/t;

    move-object v7, v5

    check-cast v7, Lkotlinx/coroutines/w0;

    invoke-direct {v6, v7}, Lkotlinx/coroutines/channels/t;-><init>(Lkotlinx/coroutines/w0;)V

    invoke-virtual {v1, v4, v5, v6}, Lkotlinx/coroutines/channels/k;->j(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    goto :goto_8

    :cond_11
    sget-object v6, Lkotlinx/coroutines/channels/d;->g:Lkotlinx/coroutines/internal/E;

    invoke-virtual {v1, v4, v5, v6}, Lkotlinx/coroutines/channels/k;->j(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-static {v5}, Lkotlinx/coroutines/channels/c;->z(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    sget-object v2, Lkotlinx/coroutines/channels/d;->d:Lkotlinx/coroutines/internal/E;

    invoke-virtual {v1, v4, v2}, Lkotlinx/coroutines/channels/k;->o(ILkotlinx/coroutines/internal/E;)V

    goto :goto_8

    :cond_12
    sget-object v2, Lkotlinx/coroutines/channels/d;->j:Lkotlinx/coroutines/internal/E;

    invoke-virtual {v1, v4, v2}, Lkotlinx/coroutines/channels/k;->o(ILkotlinx/coroutines/internal/E;)V

    invoke-virtual {v1, v4, v9}, Lkotlinx/coroutines/channels/k;->m(IZ)V

    goto :goto_9

    :cond_13
    sget-object v6, Lkotlinx/coroutines/channels/d;->j:Lkotlinx/coroutines/internal/E;

    if-ne v5, v6, :cond_14

    goto :goto_9

    :cond_14
    if-nez v5, :cond_15

    sget-object v6, Lkotlinx/coroutines/channels/d;->e:Lkotlinx/coroutines/internal/E;

    invoke-virtual {v1, v4, v5, v6}, Lkotlinx/coroutines/channels/k;->j(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    goto :goto_8

    :cond_15
    sget-object v6, Lkotlinx/coroutines/channels/d;->d:Lkotlinx/coroutines/internal/E;

    if-ne v5, v6, :cond_16

    goto :goto_8

    :cond_16
    sget-object v6, Lkotlinx/coroutines/channels/d;->h:Lkotlinx/coroutines/internal/E;

    if-eq v5, v6, :cond_1a

    sget-object v6, Lkotlinx/coroutines/channels/d;->i:Lkotlinx/coroutines/internal/E;

    if-eq v5, v6, :cond_1a

    sget-object v6, Lkotlinx/coroutines/channels/d;->k:Lkotlinx/coroutines/internal/E;

    if-ne v5, v6, :cond_17

    goto :goto_8

    :cond_17
    sget-object v6, Lkotlinx/coroutines/channels/d;->l:Lkotlinx/coroutines/internal/E;

    if-ne v5, v6, :cond_18

    goto :goto_8

    :cond_18
    sget-object v6, Lkotlinx/coroutines/channels/d;->f:Lkotlinx/coroutines/internal/E;

    if-ne v5, v6, :cond_19

    goto :goto_7

    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected cell state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    :goto_8
    const/4 v9, 0x1

    :goto_9
    if-eqz v9, :cond_1b

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lkotlinx/coroutines/channels/c;->o(J)V

    return-void

    :cond_1b
    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lkotlinx/coroutines/channels/c;->o(J)V

    goto/16 :goto_0
.end method

.method public final iterator()Lkotlinx/coroutines/channels/g;
    .locals 1

    new-instance v0, Lkotlinx/coroutines/channels/a;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/a;-><init>(Lkotlinx/coroutines/channels/c;)V

    return-object v0
.end method

.method public final j(JLkotlinx/coroutines/channels/k;)Lkotlinx/coroutines/channels/k;
    .locals 9

    iget-object v0, p0, Lkotlinx/coroutines/channels/c;->k:Lt3/f;

    sget-object v1, Lkotlinx/coroutines/channels/d;->a:Lkotlinx/coroutines/channels/k;

    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannelKt$createSegmentFunction$1;->d:Lkotlinx/coroutines/channels/BufferedChannelKt$createSegmentFunction$1;

    :cond_0
    invoke-static {p3, p1, p2, v1}, Lkotlinx/coroutines/internal/b;->a(Lkotlinx/coroutines/internal/B;JLm3/p;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/internal/C;->b(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v2}, Lkotlinx/coroutines/internal/C;->a(Ljava/lang/Object;)Lkotlinx/coroutines/internal/B;

    move-result-object v3

    :cond_1
    :goto_0
    iget-object v4, v0, Lt3/f;->b:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/internal/B;

    iget-wide v5, v4, Lkotlinx/coroutines/internal/B;->f:J

    iget-wide v7, v3, Lkotlinx/coroutines/internal/B;->f:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/B;->i()Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v4, v3}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Lkotlinx/coroutines/internal/B;->e()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v4}, Lkotlinx/coroutines/internal/c;->d()V

    :cond_4
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_0

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/B;->e()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lkotlinx/coroutines/internal/c;->d()V

    goto :goto_0

    :cond_6
    :goto_3
    invoke-static {v2}, Lkotlinx/coroutines/internal/C;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->s()Z

    iget-wide p1, p3, Lkotlinx/coroutines/internal/B;->f:J

    sget v0, Lkotlinx/coroutines/channels/d;->b:I

    int-to-long v0, v0

    mul-long/2addr p1, v0

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->n()J

    move-result-wide v0

    cmp-long p0, p1, v0

    if-gez p0, :cond_d

    invoke-virtual {p3}, Lkotlinx/coroutines/internal/c;->a()V

    goto/16 :goto_7

    :cond_7
    invoke-static {v2}, Lkotlinx/coroutines/internal/C;->a(Ljava/lang/Object;)Lkotlinx/coroutines/internal/B;

    move-result-object p3

    check-cast p3, Lkotlinx/coroutines/channels/k;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->u()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lkotlinx/coroutines/channels/c;->h:Lt3/e;

    iget-wide v0, v0, Lt3/e;->b:J

    sget v2, Lkotlinx/coroutines/channels/d;->b:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-gtz v0, :cond_a

    iget-object v0, p0, Lkotlinx/coroutines/channels/c;->l:Lt3/f;

    :cond_8
    :goto_4
    iget-object v1, v0, Lt3/f;->b:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/internal/B;

    iget-wide v2, v1, Lkotlinx/coroutines/internal/B;->f:J

    iget-wide v4, p3, Lkotlinx/coroutines/internal/B;->f:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_a

    invoke-virtual {p3}, Lkotlinx/coroutines/internal/B;->i()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v0, v1, p3}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/B;->e()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/c;->d()V

    goto :goto_5

    :cond_9
    invoke-virtual {p3}, Lkotlinx/coroutines/internal/B;->e()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p3}, Lkotlinx/coroutines/internal/c;->d()V

    goto :goto_4

    :cond_a
    :goto_5
    iget-wide v0, p3, Lkotlinx/coroutines/internal/B;->f:J

    cmp-long p1, v0, p1

    if-lez p1, :cond_e

    sget p1, Lkotlinx/coroutines/channels/d;->b:I

    int-to-long p1, p1

    mul-long/2addr v0, p1

    iget-object p1, p0, Lkotlinx/coroutines/channels/c;->g:Lt3/e;

    :cond_b
    iget-wide v2, p1, Lt3/e;->b:J

    cmp-long p2, v2, v0

    if-ltz p2, :cond_c

    goto :goto_6

    :cond_c
    iget-object p2, p0, Lkotlinx/coroutines/channels/c;->g:Lt3/e;

    invoke-virtual {p2, v2, v3, v0, v1}, Lt3/e;->b(JJ)Z

    move-result p2

    if-eqz p2, :cond_b

    :goto_6
    iget-wide p1, p3, Lkotlinx/coroutines/internal/B;->f:J

    sget v0, Lkotlinx/coroutines/channels/d;->b:I

    int-to-long v0, v0

    mul-long/2addr p1, v0

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->n()J

    move-result-wide v0

    cmp-long p0, p1, v0

    if-gez p0, :cond_d

    invoke-virtual {p3}, Lkotlinx/coroutines/internal/c;->a()V

    :cond_d
    :goto_7
    const/4 p3, 0x0

    :cond_e
    return-object p3
.end method

.method public final k()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/channels/c;->m:Lt3/f;

    iget-object p0, p0, Lt3/f;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Throwable;

    return-object p0
.end method

.method public final l()Ljava/lang/Throwable;
    .locals 1

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->k()Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lkotlinx/coroutines/channels/ClosedSendChannelException;

    const-string v0, "Channel was closed"

    invoke-direct {p0, v0}, Lkotlinx/coroutines/channels/ClosedSendChannelException;-><init>(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public final m(Lm3/l;)V
    .locals 4

    iget-object v0, p0, Lkotlinx/coroutines/channels/c;->n:Lt3/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/channels/c;->n:Lt3/f;

    :cond_1
    iget-object v1, v0, Lt3/f;->b:Ljava/lang/Object;

    sget-object v2, Lkotlinx/coroutines/channels/d;->q:Lkotlinx/coroutines/internal/E;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lkotlinx/coroutines/channels/c;->n:Lt3/f;

    sget-object v3, Lkotlinx/coroutines/channels/d;->r:Lkotlinx/coroutines/internal/E;

    invoke-virtual {v1, v2, v3}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->k()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p1, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    sget-object p0, Lkotlinx/coroutines/channels/d;->r:Lkotlinx/coroutines/internal/E;

    if-ne v1, p0, :cond_3

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Another handler was already registered and successfully invoked"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Another handler is already registered: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final n()J
    .locals 4

    iget-object p0, p0, Lkotlinx/coroutines/channels/c;->f:Lt3/e;

    iget-wide v0, p0, Lt3/e;->b:J

    const-wide v2, 0xfffffffffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public final o(J)V
    .locals 7

    iget-object v0, p0, Lkotlinx/coroutines/channels/c;->i:Lt3/e;

    invoke-virtual {v0, p1, p2}, Lt3/e;->a(J)J

    move-result-wide p1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    and-long/2addr p1, v0

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    const/4 p2, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, v4

    :goto_0
    if-eqz p1, :cond_3

    :cond_1
    iget-object p1, p0, Lkotlinx/coroutines/channels/c;->i:Lt3/e;

    iget-wide v5, p1, Lt3/e;->b:J

    and-long/2addr v5, v0

    cmp-long p1, v5, v2

    if-eqz p1, :cond_2

    move p1, p2

    goto :goto_1

    :cond_2
    move p1, v4

    :goto_1
    if-nez p1, :cond_1

    :cond_3
    return-void
.end method

.method public p(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v8, p0

    iget-object v0, v8, Lkotlinx/coroutines/channels/c;->f:Lt3/e;

    iget-wide v0, v0, Lt3/e;->b:J

    const/4 v9, 0x0

    invoke-virtual {v8, v0, v1, v9}, Lkotlinx/coroutines/channels/c;->r(JZ)Z

    move-result v2

    const-wide v10, 0xfffffffffffffffL

    const/4 v12, 0x1

    if-eqz v2, :cond_0

    move v0, v9

    goto :goto_0

    :cond_0
    and-long/2addr v0, v10

    invoke-virtual {v8, v0, v1}, Lkotlinx/coroutines/channels/c;->d(J)Z

    move-result v0

    xor-int/2addr v0, v12

    :goto_0
    sget-object v13, Lkotlinx/coroutines/channels/j;->b:Lkotlinx/coroutines/channels/i;

    if-eqz v0, :cond_1

    return-object v13

    :cond_1
    sget-object v14, Lkotlinx/coroutines/channels/d;->j:Lkotlinx/coroutines/internal/E;

    iget-object v0, v8, Lkotlinx/coroutines/channels/c;->j:Lt3/f;

    iget-object v0, v0, Lt3/f;->b:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/channels/k;

    :cond_2
    :goto_1
    iget-object v1, v8, Lkotlinx/coroutines/channels/c;->f:Lt3/e;

    invoke-virtual {v1}, Lt3/e;->c()J

    move-result-wide v1

    and-long v15, v1, v10

    invoke-virtual {v8, v1, v2, v9}, Lkotlinx/coroutines/channels/c;->r(JZ)Z

    move-result v17

    sget v7, Lkotlinx/coroutines/channels/d;->b:I

    int-to-long v1, v7

    div-long v3, v15, v1

    rem-long v1, v15, v1

    long-to-int v6, v1

    iget-wide v1, v0, Lkotlinx/coroutines/internal/B;->f:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    invoke-static {v8, v3, v4, v0}, Lkotlinx/coroutines/channels/c;->a(Lkotlinx/coroutines/channels/c;JLkotlinx/coroutines/channels/k;)Lkotlinx/coroutines/channels/k;

    move-result-object v1

    if-nez v1, :cond_3

    if-eqz v17, :cond_2

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/c;->l()Ljava/lang/Throwable;

    move-result-object v0

    new-instance v13, Lkotlinx/coroutines/channels/h;

    invoke-direct {v13, v0}, Lkotlinx/coroutines/channels/h;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :cond_3
    move-object v4, v1

    goto :goto_2

    :cond_4
    move-object v4, v0

    :goto_2
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v6

    move-object/from16 v3, p1

    move-object/from16 v18, v4

    move-wide v4, v15

    move/from16 v19, v6

    move-object v6, v14

    move/from16 v20, v7

    move/from16 v7, v17

    invoke-static/range {v0 .. v7}, Lkotlinx/coroutines/channels/c;->c(Lkotlinx/coroutines/channels/c;Lkotlinx/coroutines/channels/k;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v0

    if-eqz v0, :cond_d

    if-eq v0, v12, :cond_e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual/range {v18 .. v18}, Lkotlinx/coroutines/internal/c;->a()V

    :goto_3
    move-object/from16 v0, v18

    goto :goto_1

    :cond_6
    iget-object v0, v8, Lkotlinx/coroutines/channels/c;->g:Lt3/e;

    iget-wide v0, v0, Lt3/e;->b:J

    cmp-long v0, v15, v0

    if-gez v0, :cond_7

    invoke-virtual/range {v18 .. v18}, Lkotlinx/coroutines/internal/c;->a()V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/c;->l()Ljava/lang/Throwable;

    move-result-object v0

    new-instance v13, Lkotlinx/coroutines/channels/h;

    invoke-direct {v13, v0}, Lkotlinx/coroutines/channels/h;-><init>(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    if-eqz v17, :cond_a

    invoke-virtual/range {v18 .. v18}, Lkotlinx/coroutines/internal/B;->h()V

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/c;->l()Ljava/lang/Throwable;

    move-result-object v0

    new-instance v13, Lkotlinx/coroutines/channels/h;

    invoke-direct {v13, v0}, Lkotlinx/coroutines/channels/h;-><init>(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_a
    instance-of v0, v14, Lkotlinx/coroutines/w0;

    if-eqz v0, :cond_b

    check-cast v14, Lkotlinx/coroutines/w0;

    goto :goto_4

    :cond_b
    const/4 v14, 0x0

    :goto_4
    if-eqz v14, :cond_c

    add-int v6, v19, v20

    move-object/from16 v0, v18

    invoke-interface {v14, v0, v6}, Lkotlinx/coroutines/w0;->b(Lkotlinx/coroutines/internal/B;I)V

    goto :goto_5

    :cond_c
    move-object/from16 v0, v18

    :goto_5
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/B;->h()V

    goto :goto_6

    :cond_d
    move-object/from16 v0, v18

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/c;->a()V

    :cond_e
    sget-object v13, Le3/f;->a:Le3/f;

    :goto_6
    return-object v13
.end method

.method public q(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Lkotlinx/coroutines/channels/c;->j:Lt3/f;

    iget-object v1, v1, Lt3/f;->b:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/k;

    :cond_0
    :goto_0
    const/4 v7, 0x0

    iget-object v2, v0, Lkotlinx/coroutines/channels/c;->f:Lt3/e;

    invoke-virtual {v2}, Lt3/e;->c()J

    move-result-wide v2

    const-wide v9, 0xfffffffffffffffL

    and-long v11, v2, v9

    const/4 v13, 0x0

    invoke-virtual {v0, v2, v3, v13}, Lkotlinx/coroutines/channels/c;->r(JZ)Z

    move-result v14

    sget v15, Lkotlinx/coroutines/channels/d;->b:I

    int-to-long v2, v15

    div-long v4, v11, v2

    rem-long v2, v11, v2

    long-to-int v8, v2

    iget-wide v2, v1, Lkotlinx/coroutines/internal/B;->f:J

    cmp-long v2, v2, v4

    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->d:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-eqz v2, :cond_2

    invoke-static {v0, v4, v5, v1}, Lkotlinx/coroutines/channels/c;->a(Lkotlinx/coroutines/channels/c;JLkotlinx/coroutines/channels/k;)Lkotlinx/coroutines/channels/k;

    move-result-object v2

    if-nez v2, :cond_1

    if-eqz v14, :cond_0

    invoke-virtual/range {p0 .. p2}, Lkotlinx/coroutines/channels/c;->w(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_1b

    goto/16 :goto_c

    :cond_1
    move-object v5, v2

    goto :goto_1

    :cond_2
    move-object v5, v1

    :goto_1
    move-object/from16 v1, p0

    move-object v2, v5

    move v3, v8

    move-object/from16 v4, p1

    move-object/from16 v17, v5

    move-object v13, v6

    move-wide v5, v11

    move/from16 v18, v8

    move v8, v14

    invoke-static/range {v1 .. v8}, Lkotlinx/coroutines/channels/c;->c(Lkotlinx/coroutines/channels/c;Lkotlinx/coroutines/channels/k;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v8, 0x1

    if-eq v1, v8, :cond_1b

    const/4 v7, 0x2

    if-eq v1, v7, :cond_19

    const/4 v14, 0x3

    const/4 v5, 0x5

    const/4 v6, 0x4

    if-eq v1, v14, :cond_6

    if-eq v1, v6, :cond_4

    if-eq v1, v5, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual/range {v17 .. v17}, Lkotlinx/coroutines/internal/c;->a()V

    :goto_2
    move-object/from16 v1, v17

    goto :goto_0

    :cond_4
    iget-object v1, v0, Lkotlinx/coroutines/channels/c;->g:Lt3/e;

    iget-wide v1, v1, Lt3/e;->b:J

    cmp-long v1, v11, v1

    if-gez v1, :cond_5

    invoke-virtual/range {v17 .. v17}, Lkotlinx/coroutines/internal/c;->a()V

    :cond_5
    invoke-virtual/range {p0 .. p2}, Lkotlinx/coroutines/channels/c;->w(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v13, :cond_1b

    goto/16 :goto_c

    :cond_6
    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/intrinsics/a;->b(Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/j;->a(Lkotlin/coroutines/c;)Lkotlinx/coroutines/h;

    move-result-object v4

    const/16 v19, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 p2, v4

    move-object/from16 v4, p1

    move v14, v5

    move v9, v6

    move-wide v5, v11

    move v10, v7

    move-object/from16 v7, p2

    move v14, v8

    move/from16 v8, v19

    :try_start_0
    invoke-static/range {v1 .. v8}, Lkotlinx/coroutines/channels/c;->c(Lkotlinx/coroutines/channels/c;Lkotlinx/coroutines/channels/k;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_17

    if-eq v1, v14, :cond_16

    if-eq v1, v10, :cond_15

    if-eq v1, v9, :cond_12

    const-string v11, "unexpected"

    const/4 v2, 0x5

    if-ne v1, v2, :cond_11

    :try_start_1
    invoke-virtual/range {v17 .. v17}, Lkotlinx/coroutines/internal/c;->a()V

    iget-object v1, v0, Lkotlinx/coroutines/channels/c;->j:Lt3/f;

    iget-object v1, v1, Lt3/f;->b:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/k;

    :cond_7
    :goto_3
    iget-object v2, v0, Lkotlinx/coroutines/channels/c;->f:Lt3/e;

    invoke-virtual {v2}, Lt3/e;->c()J

    move-result-wide v2

    const-wide v17, 0xfffffffffffffffL

    and-long v20, v2, v17

    const/4 v12, 0x0

    invoke-virtual {v0, v2, v3, v12}, Lkotlinx/coroutines/channels/c;->r(JZ)Z

    move-result v15

    sget v8, Lkotlinx/coroutines/channels/d;->b:I

    int-to-long v2, v8

    div-long v4, v20, v2

    rem-long v2, v20, v2

    long-to-int v7, v2

    iget-wide v2, v1, Lkotlinx/coroutines/internal/B;->f:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    invoke-static {v0, v4, v5, v1}, Lkotlinx/coroutines/channels/c;->a(Lkotlinx/coroutines/channels/c;JLkotlinx/coroutines/channels/k;)Lkotlinx/coroutines/channels/k;

    move-result-object v2

    if-nez v2, :cond_8

    if-eqz v15, :cond_7

    goto :goto_6

    :cond_8
    move-object v5, v2

    goto :goto_4

    :cond_9
    move-object v5, v1

    :goto_4
    move-object/from16 v1, p0

    move-object v2, v5

    move v3, v7

    move-object/from16 v4, p1

    move-object/from16 v16, v5

    move-wide/from16 v5, v20

    move/from16 v19, v7

    move-object/from16 v7, p2

    move/from16 v22, v8

    move v8, v15

    invoke-static/range {v1 .. v8}, Lkotlinx/coroutines/channels/c;->c(Lkotlinx/coroutines/channels/c;Lkotlinx/coroutines/channels/k;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v1

    if-eqz v1, :cond_10

    if-eq v1, v14, :cond_16

    if-eq v1, v10, :cond_d

    const/4 v2, 0x3

    if-eq v1, v2, :cond_c

    if-eq v1, v9, :cond_b

    const/4 v3, 0x5

    if-eq v1, v3, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual/range {v16 .. v16}, Lkotlinx/coroutines/internal/c;->a()V

    :goto_5
    move-object/from16 v1, v16

    goto :goto_3

    :cond_b
    iget-object v1, v0, Lkotlinx/coroutines/channels/c;->g:Lt3/e;

    iget-wide v1, v1, Lt3/e;->b:J

    cmp-long v1, v20, v1

    if-gez v1, :cond_e

    invoke-virtual/range {v16 .. v16}, Lkotlinx/coroutines/internal/c;->a()V

    goto :goto_6

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-eqz v15, :cond_f

    invoke-virtual/range {v16 .. v16}, Lkotlinx/coroutines/internal/B;->h()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_e
    :goto_6
    move-object/from16 v1, p2

    goto :goto_7

    :cond_f
    add-int v7, v19, v22

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    :try_start_2
    invoke-virtual {v1, v2, v7}, Lkotlinx/coroutines/h;->b(Lkotlinx/coroutines/internal/B;I)V

    goto :goto_9

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :cond_10
    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/c;->a()V

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 v1, p2

    goto :goto_b

    :cond_11
    move-object/from16 v1, p2

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    move-object/from16 v1, p2

    iget-object v2, v0, Lkotlinx/coroutines/channels/c;->g:Lt3/e;

    iget-wide v2, v2, Lt3/e;->b:J

    cmp-long v2, v11, v2

    if-gez v2, :cond_13

    invoke-virtual/range {v17 .. v17}, Lkotlinx/coroutines/internal/c;->a()V

    :cond_13
    :goto_7
    iget-object v2, v0, Lkotlinx/coroutines/channels/c;->e:Lm3/l;

    if-eqz v2, :cond_14

    iget-object v3, v1, Lkotlinx/coroutines/h;->h:Lkotlin/coroutines/i;

    move-object/from16 v4, p1

    invoke-static {v2, v4, v3}, Lkotlinx/coroutines/internal/w;->b(Lm3/l;Ljava/lang/Object;Lkotlin/coroutines/i;)V

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/c;->l()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Le3/d;->a(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkotlinx/coroutines/h;->resumeWith(Ljava/lang/Object;)V

    goto :goto_9

    :cond_15
    move-object/from16 v1, p2

    add-int v8, v18, v15

    move-object/from16 v2, v17

    invoke-virtual {v1, v2, v8}, Lkotlinx/coroutines/h;->b(Lkotlinx/coroutines/internal/B;I)V

    goto :goto_9

    :cond_16
    move-object/from16 v1, p2

    goto :goto_8

    :cond_17
    move-object/from16 v1, p2

    move-object/from16 v2, v17

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/c;->a()V

    :goto_8
    sget-object v0, Le3/f;->a:Le3/f;

    invoke-virtual {v1, v0}, Lkotlinx/coroutines/h;->resumeWith(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_9
    invoke-virtual {v1}, Lkotlinx/coroutines/h;->o()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v13, :cond_18

    goto :goto_a

    :cond_18
    sget-object v0, Le3/f;->a:Le3/f;

    :goto_a
    if-ne v0, v13, :cond_1b

    goto :goto_c

    :goto_b
    invoke-virtual {v1}, Lkotlinx/coroutines/h;->u()V

    throw v0

    :cond_19
    move-object/from16 v4, p1

    move-object/from16 v2, v17

    if-eqz v14, :cond_1b

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/B;->h()V

    invoke-virtual/range {p0 .. p2}, Lkotlinx/coroutines/channels/c;->w(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v13, :cond_1b

    goto :goto_c

    :cond_1a
    move-object/from16 v2, v17

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/c;->a()V

    :cond_1b
    sget-object v0, Le3/f;->a:Le3/f;

    :goto_c
    return-object v0
.end method

.method public final r(JZ)Z
    .locals 11

    const/16 v0, 0x3c

    shr-long v0, p1, v0

    long-to-int v0, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    const/4 v2, 0x1

    if-eq v0, v2, :cond_22

    const/4 v3, 0x2

    const-wide v4, 0xfffffffffffffffL

    if-eq v0, v3, :cond_11

    const/4 p3, 0x3

    if-ne v0, p3, :cond_10

    and-long/2addr p1, v4

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/c;->f(J)Lkotlinx/coroutines/channels/k;

    move-result-object p1

    iget-object p2, p0, Lkotlinx/coroutines/channels/c;->e:Lm3/l;

    const/4 p3, 0x0

    move-object v0, p3

    move-object v3, v0

    :cond_0
    sget v4, Lkotlinx/coroutines/channels/d;->b:I

    const/4 v5, -0x1

    add-int/2addr v4, v5

    :goto_0
    if-ge v5, v4, :cond_b

    iget-wide v6, p1, Lkotlinx/coroutines/internal/B;->f:J

    sget v8, Lkotlinx/coroutines/channels/d;->b:I

    int-to-long v8, v8

    mul-long/2addr v6, v8

    int-to-long v8, v4

    add-long/2addr v6, v8

    :cond_1
    invoke-virtual {p1, v4}, Lkotlinx/coroutines/channels/k;->l(I)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lkotlinx/coroutines/channels/d;->i:Lkotlinx/coroutines/internal/E;

    if-eq v8, v9, :cond_c

    sget-object v9, Lkotlinx/coroutines/channels/d;->d:Lkotlinx/coroutines/internal/E;

    if-ne v8, v9, :cond_3

    iget-object v9, p0, Lkotlinx/coroutines/channels/c;->g:Lt3/e;

    iget-wide v9, v9, Lt3/e;->b:J

    cmp-long v9, v6, v9

    if-ltz v9, :cond_c

    sget-object v9, Lkotlinx/coroutines/channels/d;->l:Lkotlinx/coroutines/internal/E;

    invoke-virtual {p1, v4, v8, v9}, Lkotlinx/coroutines/channels/k;->j(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-eqz p2, :cond_2

    invoke-virtual {p1, v4}, Lkotlinx/coroutines/channels/k;->k(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {p2, v6, v0}, Lkotlinx/coroutines/internal/w;->c(Lm3/l;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object v0

    :cond_2
    invoke-virtual {p1, v4, p3}, Lkotlinx/coroutines/channels/k;->n(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/B;->h()V

    goto :goto_4

    :cond_3
    sget-object v9, Lkotlinx/coroutines/channels/d;->e:Lkotlinx/coroutines/internal/E;

    if-eq v8, v9, :cond_a

    if-nez v8, :cond_4

    goto :goto_3

    :cond_4
    instance-of v9, v8, Lkotlinx/coroutines/w0;

    if-nez v9, :cond_7

    instance-of v9, v8, Lkotlinx/coroutines/channels/t;

    if-eqz v9, :cond_5

    goto :goto_1

    :cond_5
    sget-object v9, Lkotlinx/coroutines/channels/d;->g:Lkotlinx/coroutines/internal/E;

    if-eq v8, v9, :cond_c

    sget-object v10, Lkotlinx/coroutines/channels/d;->f:Lkotlinx/coroutines/internal/E;

    if-ne v8, v10, :cond_6

    goto :goto_5

    :cond_6
    if-eq v8, v9, :cond_1

    goto :goto_4

    :cond_7
    :goto_1
    iget-object v9, p0, Lkotlinx/coroutines/channels/c;->g:Lt3/e;

    iget-wide v9, v9, Lt3/e;->b:J

    cmp-long v9, v6, v9

    if-ltz v9, :cond_c

    instance-of v9, v8, Lkotlinx/coroutines/channels/t;

    if-eqz v9, :cond_8

    move-object v9, v8

    check-cast v9, Lkotlinx/coroutines/channels/t;

    iget-object v9, v9, Lkotlinx/coroutines/channels/t;->a:Lkotlinx/coroutines/w0;

    goto :goto_2

    :cond_8
    move-object v9, v8

    check-cast v9, Lkotlinx/coroutines/w0;

    :goto_2
    sget-object v10, Lkotlinx/coroutines/channels/d;->l:Lkotlinx/coroutines/internal/E;

    invoke-virtual {p1, v4, v8, v10}, Lkotlinx/coroutines/channels/k;->j(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-eqz p2, :cond_9

    invoke-virtual {p1, v4}, Lkotlinx/coroutines/channels/k;->k(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {p2, v6, v0}, Lkotlinx/coroutines/internal/w;->c(Lm3/l;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object v0

    :cond_9
    invoke-static {v3, v9}, Lkotlinx/coroutines/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v4, p3}, Lkotlinx/coroutines/channels/k;->n(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/B;->h()V

    goto :goto_4

    :cond_a
    :goto_3
    sget-object v9, Lkotlinx/coroutines/channels/d;->l:Lkotlinx/coroutines/internal/E;

    invoke-virtual {p1, v4, v8, v9}, Lkotlinx/coroutines/channels/k;->j(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/B;->h()V

    :goto_4
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_0

    :cond_b
    iget-object p1, p1, Lkotlinx/coroutines/internal/c;->e:Lt3/f;

    iget-object p1, p1, Lt3/f;->b:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/internal/c;

    check-cast p1, Lkotlinx/coroutines/channels/k;

    if-nez p1, :cond_0

    :cond_c
    :goto_5
    if-eqz v3, :cond_e

    instance-of p1, v3, Ljava/util/ArrayList;

    if-nez p1, :cond_d

    check-cast v3, Lkotlinx/coroutines/w0;

    invoke-virtual {p0, v3, v1}, Lkotlinx/coroutines/channels/c;->x(Lkotlinx/coroutines/w0;Z)V

    goto :goto_7

    :cond_d
    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/2addr p1, v5

    :goto_6
    if-ge v5, p1, :cond_e

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlinx/coroutines/w0;

    invoke-virtual {p0, p2, v1}, Lkotlinx/coroutines/channels/c;->x(Lkotlinx/coroutines/w0;Z)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_6

    :cond_e
    :goto_7
    if-nez v0, :cond_f

    goto/16 :goto_f

    :cond_f
    throw v0

    :cond_10
    const-string p0, "unexpected close status: "

    invoke-static {p0, v0}, Lj/K;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    and-long/2addr p1, v4

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/c;->f(J)Lkotlinx/coroutines/channels/k;

    if-eqz p3, :cond_21

    :cond_12
    :goto_8
    iget-object p1, p0, Lkotlinx/coroutines/channels/c;->k:Lt3/f;

    iget-object p1, p1, Lt3/f;->b:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/k;

    iget-object p2, p0, Lkotlinx/coroutines/channels/c;->g:Lt3/e;

    iget-wide p2, p2, Lt3/e;->b:J

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->n()J

    move-result-wide v3

    cmp-long v0, v3, p2

    if-gtz v0, :cond_13

    goto :goto_9

    :cond_13
    sget v0, Lkotlinx/coroutines/channels/d;->b:I

    int-to-long v3, v0

    div-long v5, p2, v3

    iget-wide v7, p1, Lkotlinx/coroutines/internal/B;->f:J

    cmp-long v0, v7, v5

    if-eqz v0, :cond_14

    invoke-virtual {p0, v5, v6, p1}, Lkotlinx/coroutines/channels/c;->j(JLkotlinx/coroutines/channels/k;)Lkotlinx/coroutines/channels/k;

    move-result-object p1

    if-nez p1, :cond_14

    iget-object p1, p0, Lkotlinx/coroutines/channels/c;->k:Lt3/f;

    iget-object p1, p1, Lt3/f;->b:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/k;

    iget-wide p1, p1, Lkotlinx/coroutines/internal/B;->f:J

    cmp-long p1, p1, v5

    if-gez p1, :cond_12

    :goto_9
    move p0, v1

    goto :goto_e

    :cond_14
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/c;->a()V

    rem-long v3, p2, v3

    long-to-int v0, v3

    :cond_15
    invoke-virtual {p1, v0}, Lkotlinx/coroutines/channels/k;->l(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1e

    sget-object v4, Lkotlinx/coroutines/channels/d;->e:Lkotlinx/coroutines/internal/E;

    if-ne v3, v4, :cond_16

    goto :goto_b

    :cond_16
    sget-object p1, Lkotlinx/coroutines/channels/d;->d:Lkotlinx/coroutines/internal/E;

    if-ne v3, p1, :cond_17

    goto :goto_a

    :cond_17
    sget-object p1, Lkotlinx/coroutines/channels/d;->j:Lkotlinx/coroutines/internal/E;

    if-ne v3, p1, :cond_18

    goto :goto_c

    :cond_18
    sget-object p1, Lkotlinx/coroutines/channels/d;->l:Lkotlinx/coroutines/internal/E;

    if-ne v3, p1, :cond_19

    goto :goto_c

    :cond_19
    sget-object p1, Lkotlinx/coroutines/channels/d;->i:Lkotlinx/coroutines/internal/E;

    if-ne v3, p1, :cond_1a

    goto :goto_c

    :cond_1a
    sget-object p1, Lkotlinx/coroutines/channels/d;->h:Lkotlinx/coroutines/internal/E;

    if-ne v3, p1, :cond_1b

    goto :goto_c

    :cond_1b
    sget-object p1, Lkotlinx/coroutines/channels/d;->g:Lkotlinx/coroutines/internal/E;

    if-ne v3, p1, :cond_1c

    goto :goto_a

    :cond_1c
    sget-object p1, Lkotlinx/coroutines/channels/d;->f:Lkotlinx/coroutines/internal/E;

    if-ne v3, p1, :cond_1d

    goto :goto_c

    :cond_1d
    iget-object p1, p0, Lkotlinx/coroutines/channels/c;->g:Lt3/e;

    iget-wide v3, p1, Lt3/e;->b:J

    cmp-long p1, p2, v3

    if-nez p1, :cond_1f

    :goto_a
    move p1, v2

    goto :goto_d

    :cond_1e
    :goto_b
    sget-object v4, Lkotlinx/coroutines/channels/d;->h:Lkotlinx/coroutines/internal/E;

    invoke-virtual {p1, v0, v3, v4}, Lkotlinx/coroutines/channels/k;->j(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->i()V

    :cond_1f
    :goto_c
    move p1, v1

    :goto_d
    if-eqz p1, :cond_20

    move p0, v2

    :goto_e
    if-nez p0, :cond_22

    goto :goto_f

    :cond_20
    iget-object p1, p0, Lkotlinx/coroutines/channels/c;->g:Lt3/e;

    const-wide/16 v3, 0x1

    add-long/2addr v3, p2

    invoke-virtual {p1, p2, p3, v3, v4}, Lt3/e;->b(JJ)Z

    goto/16 :goto_8

    :cond_21
    :goto_f
    move v1, v2

    :cond_22
    return v1
.end method

.method public final s()Z
    .locals 3

    iget-object v0, p0, Lkotlinx/coroutines/channels/c;->f:Lt3/e;

    iget-wide v0, v0, Lt3/e;->b:J

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lkotlinx/coroutines/channels/c;->r(JZ)Z

    move-result p0

    return p0
.end method

.method public t()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lkotlinx/coroutines/channels/c;->f:Lt3/e;

    iget-wide v2, v2, Lt3/e;->b:J

    const/16 v4, 0x3c

    shr-long/2addr v2, v4

    long-to-int v2, v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "cancelled,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v2, "closed,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget v2, v0, Lkotlinx/coroutines/channels/c;->d:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "capacity="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "data=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lkotlinx/coroutines/channels/c;->k:Lt3/f;

    iget-object v3, v3, Lt3/f;->b:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/k;

    iget-object v4, v0, Lkotlinx/coroutines/channels/c;->j:Lt3/f;

    iget-object v4, v4, Lt3/f;->b:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/k;

    iget-object v5, v0, Lkotlinx/coroutines/channels/c;->l:Lt3/f;

    iget-object v5, v5, Lt3/f;->b:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/k;

    filled-new-array {v3, v4, v5}, [Lkotlinx/coroutines/channels/k;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/n;->c([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lkotlinx/coroutines/channels/k;

    sget-object v9, Lkotlinx/coroutines/channels/d;->a:Lkotlinx/coroutines/channels/k;

    if-eq v8, v9, :cond_3

    move v6, v7

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_2

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_3

    :cond_5
    move-object v5, v4

    check-cast v5, Lkotlinx/coroutines/channels/k;

    iget-wide v8, v5, Lkotlinx/coroutines/internal/B;->f:J

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Lkotlinx/coroutines/channels/k;

    iget-wide v10, v10, Lkotlinx/coroutines/internal/B;->f:J

    cmp-long v12, v8, v10

    if-lez v12, :cond_7

    move-object v4, v5

    move-wide v8, v10

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_6

    :goto_3
    check-cast v4, Lkotlinx/coroutines/channels/k;

    iget-object v3, v0, Lkotlinx/coroutines/channels/c;->g:Lt3/e;

    iget-wide v10, v3, Lt3/e;->b:J

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/c;->n()J

    move-result-wide v12

    :cond_8
    sget v0, Lkotlinx/coroutines/channels/d;->b:I

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v0, :cond_1d

    iget-wide v8, v4, Lkotlinx/coroutines/internal/B;->f:J

    sget v5, Lkotlinx/coroutines/channels/d;->b:I

    int-to-long v14, v5

    mul-long/2addr v8, v14

    int-to-long v14, v3

    add-long/2addr v8, v14

    cmp-long v5, v8, v12

    if-ltz v5, :cond_9

    cmp-long v14, v8, v10

    if-gez v14, :cond_1e

    :cond_9
    invoke-virtual {v4, v3}, Lkotlinx/coroutines/channels/k;->l(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v4, v3}, Lkotlinx/coroutines/channels/k;->k(I)Ljava/lang/Object;

    move-result-object v15

    instance-of v6, v14, Lkotlinx/coroutines/g;

    if-eqz v6, :cond_c

    cmp-long v6, v8, v10

    if-gez v6, :cond_a

    if-ltz v5, :cond_a

    const-string v5, "receive"

    goto/16 :goto_c

    :cond_a
    if-gez v5, :cond_b

    if-ltz v6, :cond_b

    const-string v5, "send"

    goto/16 :goto_c

    :cond_b
    const-string v5, "cont"

    goto/16 :goto_c

    :cond_c
    instance-of v6, v14, Lw3/b;

    if-eqz v6, :cond_f

    cmp-long v6, v8, v10

    if-gez v6, :cond_d

    if-ltz v5, :cond_d

    const-string v5, "onReceive"

    goto/16 :goto_c

    :cond_d
    if-gez v5, :cond_e

    if-ltz v6, :cond_e

    const-string v5, "onSend"

    goto/16 :goto_c

    :cond_e
    const-string v5, "select"

    goto/16 :goto_c

    :cond_f
    instance-of v5, v14, Lkotlinx/coroutines/channels/q;

    if-eqz v5, :cond_10

    const-string v5, "receiveCatching"

    goto/16 :goto_c

    :cond_10
    instance-of v5, v14, Lkotlinx/coroutines/channels/b;

    if-eqz v5, :cond_11

    const-string v5, "sendBroadcast"

    goto/16 :goto_c

    :cond_11
    instance-of v5, v14, Lkotlinx/coroutines/channels/t;

    if-eqz v5, :cond_12

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "EB("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_c

    :cond_12
    sget-object v5, Lkotlinx/coroutines/channels/d;->f:Lkotlinx/coroutines/internal/E;

    invoke-static {v14, v5}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    move v5, v7

    goto :goto_5

    :cond_13
    sget-object v5, Lkotlinx/coroutines/channels/d;->g:Lkotlinx/coroutines/internal/E;

    invoke-static {v14, v5}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    :goto_5
    if-eqz v5, :cond_14

    const-string v5, "resuming_sender"

    goto :goto_c

    :cond_14
    if-nez v14, :cond_15

    move v5, v7

    goto :goto_6

    :cond_15
    sget-object v5, Lkotlinx/coroutines/channels/d;->e:Lkotlinx/coroutines/internal/E;

    invoke-static {v14, v5}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    :goto_6
    if-eqz v5, :cond_16

    move v5, v7

    goto :goto_7

    :cond_16
    sget-object v5, Lkotlinx/coroutines/channels/d;->i:Lkotlinx/coroutines/internal/E;

    invoke-static {v14, v5}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    :goto_7
    if-eqz v5, :cond_17

    move v5, v7

    goto :goto_8

    :cond_17
    sget-object v5, Lkotlinx/coroutines/channels/d;->h:Lkotlinx/coroutines/internal/E;

    invoke-static {v14, v5}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    :goto_8
    if-eqz v5, :cond_18

    move v5, v7

    goto :goto_9

    :cond_18
    sget-object v5, Lkotlinx/coroutines/channels/d;->k:Lkotlinx/coroutines/internal/E;

    invoke-static {v14, v5}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    :goto_9
    if-eqz v5, :cond_19

    move v5, v7

    goto :goto_a

    :cond_19
    sget-object v5, Lkotlinx/coroutines/channels/d;->j:Lkotlinx/coroutines/internal/E;

    invoke-static {v14, v5}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    :goto_a
    if-eqz v5, :cond_1a

    move v5, v7

    goto :goto_b

    :cond_1a
    sget-object v5, Lkotlinx/coroutines/channels/d;->l:Lkotlinx/coroutines/internal/E;

    invoke-static {v14, v5}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    :goto_b
    if-nez v5, :cond_1c

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_c
    if-eqz v15, :cond_1b

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "),"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_1b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    :goto_d
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    :cond_1d
    invoke-virtual {v4}, Lkotlinx/coroutines/internal/c;->b()Lkotlinx/coroutines/internal/c;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/channels/k;

    if-nez v4, :cond_8

    :cond_1e
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1f

    move v6, v7

    goto :goto_e

    :cond_1f
    const/4 v6, 0x0

    :goto_e
    if-nez v6, :cond_21

    invoke-static {v1}, Ls3/g;->a(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0x2c

    if-ne v0, v2, :cond_20

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v7

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "this.deleteCharAt(index)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_20
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sb.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_21
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Char sequence is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final u()Z
    .locals 4

    iget-object p0, p0, Lkotlinx/coroutines/channels/c;->h:Lt3/e;

    iget-wide v0, p0, Lt3/e;->b:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_1

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final v(JLkotlinx/coroutines/channels/k;)V
    .locals 4

    :goto_0
    iget-wide v0, p3, Lkotlinx/coroutines/internal/B;->f:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_1

    invoke-virtual {p3}, Lkotlinx/coroutines/internal/c;->b()Lkotlinx/coroutines/internal/c;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/k;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    move-object p3, v0

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p3}, Lkotlinx/coroutines/internal/B;->c()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p3}, Lkotlinx/coroutines/internal/c;->b()Lkotlinx/coroutines/internal/c;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/channels/k;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    move-object p3, p1

    goto :goto_1

    :cond_3
    :goto_2
    iget-object p1, p0, Lkotlinx/coroutines/channels/c;->l:Lt3/f;

    :cond_4
    :goto_3
    iget-object p2, p1, Lt3/f;->b:Ljava/lang/Object;

    check-cast p2, Lkotlinx/coroutines/internal/B;

    iget-wide v0, p2, Lkotlinx/coroutines/internal/B;->f:J

    iget-wide v2, p3, Lkotlinx/coroutines/internal/B;->f:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p3}, Lkotlinx/coroutines/internal/B;->i()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_5

    :cond_6
    invoke-virtual {p1, p2, p3}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Lkotlinx/coroutines/internal/B;->e()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p2}, Lkotlinx/coroutines/internal/c;->d()V

    :cond_7
    :goto_4
    const/4 p1, 0x1

    :goto_5
    if-eqz p1, :cond_1

    return-void

    :cond_8
    invoke-virtual {p3}, Lkotlinx/coroutines/internal/B;->e()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p3}, Lkotlinx/coroutines/internal/c;->d()V

    goto :goto_3
.end method

.method public final w(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lkotlinx/coroutines/h;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/a;->b(Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p2

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2}, Lkotlinx/coroutines/h;-><init>(ILkotlin/coroutines/c;)V

    invoke-virtual {v0}, Lkotlinx/coroutines/h;->p()V

    iget-object p2, p0, Lkotlinx/coroutines/channels/c;->e:Lm3/l;

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    invoke-static {p2, p1, v1}, Lkotlinx/coroutines/internal/w;->c(Lm3/l;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->l()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p1, p0}, Le3/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    invoke-static {p1}, Le3/d;->a(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/h;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->l()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Le3/d;->a(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/h;->resumeWith(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/h;->o()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->d:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Le3/f;->a:Le3/f;

    return-object p0
.end method

.method public final x(Lkotlinx/coroutines/w0;Z)V
    .locals 2

    instance-of v0, p1, Lkotlinx/coroutines/channels/b;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    instance-of v0, p1, Lkotlinx/coroutines/g;

    if-eqz v0, :cond_2

    check-cast p1, Lkotlin/coroutines/c;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->k()Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_1

    new-instance p0, Lkotlinx/coroutines/channels/ClosedReceiveChannelException;

    const-string p2, "Channel was closed"

    invoke-direct {p0, p2}, Lkotlinx/coroutines/channels/ClosedReceiveChannelException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->l()Ljava/lang/Throwable;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-static {p0}, Le3/d;->a(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    instance-of p2, p1, Lkotlinx/coroutines/channels/q;

    if-nez p2, :cond_6

    instance-of p2, p1, Lkotlinx/coroutines/channels/a;

    if-eqz p2, :cond_4

    check-cast p1, Lkotlinx/coroutines/channels/a;

    iget-object p0, p1, Lkotlinx/coroutines/channels/a;->e:Lkotlinx/coroutines/h;

    invoke-static {p0}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    iput-object v1, p1, Lkotlinx/coroutines/channels/a;->e:Lkotlinx/coroutines/h;

    sget-object p2, Lkotlinx/coroutines/channels/d;->l:Lkotlinx/coroutines/internal/E;

    iput-object p2, p1, Lkotlinx/coroutines/channels/a;->d:Ljava/lang/Object;

    iget-object p1, p1, Lkotlinx/coroutines/channels/a;->f:Lkotlinx/coroutines/channels/c;

    invoke-virtual {p1}, Lkotlinx/coroutines/channels/c;->k()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/h;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le3/d;->a(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/h;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    instance-of p2, p1, Lw3/b;

    if-eqz p2, :cond_5

    check-cast p1, Lw3/b;

    sget-object p2, Lkotlinx/coroutines/channels/d;->a:Lkotlinx/coroutines/channels/k;

    invoke-interface {p1, p0}, Lw3/b;->a(Ljava/lang/Object;)Z

    :goto_1
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected waiter: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    check-cast p1, Lkotlinx/coroutines/channels/q;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->k()Ljava/lang/Throwable;

    throw v1

    :cond_7
    check-cast p1, Lkotlinx/coroutines/channels/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v1
.end method

.method public final y(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lw3/b;

    if-eqz v0, :cond_0

    check-cast p1, Lw3/b;

    invoke-interface {p1, p0}, Lw3/b;->a(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lkotlinx/coroutines/channels/q;

    const/4 v1, 0x0

    iget-object p0, p0, Lkotlinx/coroutines/channels/c;->e:Lm3/l;

    if-eqz v0, :cond_2

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.channels.ReceiveCatching<E of kotlinx.coroutines.channels.BufferedChannel>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkotlinx/coroutines/channels/q;

    new-instance p1, Lkotlinx/coroutines/channels/j;

    invoke-direct {p1, p2}, Lkotlinx/coroutines/channels/j;-><init>(Ljava/lang/Object;)V

    if-eqz p0, :cond_1

    throw v1

    :cond_1
    invoke-static {v1, p1, v1}, Lkotlinx/coroutines/channels/d;->a(Lkotlinx/coroutines/g;Ljava/lang/Object;Lm3/l;)Z

    throw v1

    :cond_2
    instance-of v0, p1, Lkotlinx/coroutines/channels/a;

    if-eqz v0, :cond_4

    const-string p0, "null cannot be cast to non-null type kotlinx.coroutines.channels.BufferedChannel.BufferedChannelIterator<E of kotlinx.coroutines.channels.BufferedChannel>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkotlinx/coroutines/channels/a;

    iget-object p0, p1, Lkotlinx/coroutines/channels/a;->e:Lkotlinx/coroutines/h;

    invoke-static {p0}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    iput-object v1, p1, Lkotlinx/coroutines/channels/a;->e:Lkotlinx/coroutines/h;

    iput-object p2, p1, Lkotlinx/coroutines/channels/a;->d:Ljava/lang/Object;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p1, p1, Lkotlinx/coroutines/channels/a;->f:Lkotlinx/coroutines/channels/c;

    iget-object p1, p1, Lkotlinx/coroutines/channels/c;->e:Lm3/l;

    if-eqz p1, :cond_3

    iget-object v1, p0, Lkotlinx/coroutines/h;->h:Lkotlin/coroutines/i;

    invoke-static {p1, p2, v1}, Lkotlinx/coroutines/internal/w;->a(Lm3/l;Ljava/lang/Object;Lkotlin/coroutines/i;)Lm3/l;

    move-result-object v1

    :cond_3
    invoke-static {p0, v0, v1}, Lkotlinx/coroutines/channels/d;->a(Lkotlinx/coroutines/g;Ljava/lang/Object;Lm3/l;)Z

    move-result p0

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lkotlinx/coroutines/g;

    if-eqz v0, :cond_6

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<E of kotlinx.coroutines.channels.BufferedChannel>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkotlinx/coroutines/g;

    if-eqz p0, :cond_5

    invoke-interface {p1}, Lkotlin/coroutines/c;->getContext()Lkotlin/coroutines/i;

    move-result-object v0

    invoke-static {p0, p2, v0}, Lkotlinx/coroutines/internal/w;->a(Lm3/l;Ljava/lang/Object;Lkotlin/coroutines/i;)Lm3/l;

    move-result-object v1

    :cond_5
    invoke-static {p1, p2, v1}, Lkotlinx/coroutines/channels/d;->a(Lkotlinx/coroutines/g;Ljava/lang/Object;Lm3/l;)Z

    move-result p0

    :goto_0
    return p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected receiver type: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
