.class public final Lx3/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx3/n;


# instance fields
.field public final d:Lx3/c;

.field public final e:Lx3/b;

.field public f:Lx3/l;

.field public g:I

.field public h:Z

.field public i:J


# direct methods
.method public constructor <init>(Lx3/c;)V
    .locals 1

    const-string v0, "upstream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx3/i;->d:Lx3/c;

    invoke-interface {p1}, Lx3/c;->m()Lx3/b;

    move-result-object p1

    iput-object p1, p0, Lx3/i;->e:Lx3/b;

    iget-object p1, p1, Lx3/b;->d:Lx3/l;

    iput-object p1, p0, Lx3/i;->f:Lx3/l;

    if-eqz p1, :cond_0

    iget p1, p1, Lx3/l;->b:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lx3/i;->g:I

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lx3/i;->h:Z

    return-void
.end method

.method public final g(Lx3/b;J)J
    .locals 10

    const-string p2, "sink"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p2, p0, Lx3/i;->h:Z

    const/4 p3, 0x1

    xor-int/2addr p2, p3

    if-eqz p2, :cond_9

    iget-object p2, p0, Lx3/i;->f:Lx3/l;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lx3/i;->e:Lx3/b;

    iget-object v0, v0, Lx3/b;->d:Lx3/l;

    if-ne p2, v0, :cond_0

    iget p2, p0, Lx3/i;->g:I

    invoke-static {v0}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    iget v0, v0, Lx3/l;->b:I

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :cond_1
    :goto_0
    if-eqz p3, :cond_8

    iget-object p2, p0, Lx3/i;->d:Lx3/c;

    iget-wide v0, p0, Lx3/i;->i:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-interface {p2, v0, v1}, Lx3/c;->f(J)Z

    move-result p2

    if-nez p2, :cond_2

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_2
    iget-object p2, p0, Lx3/i;->f:Lx3/l;

    if-nez p2, :cond_3

    iget-object p2, p0, Lx3/i;->e:Lx3/b;

    iget-object p2, p2, Lx3/b;->d:Lx3/l;

    if-eqz p2, :cond_3

    iput-object p2, p0, Lx3/i;->f:Lx3/l;

    iget p2, p2, Lx3/l;->b:I

    iput p2, p0, Lx3/i;->g:I

    :cond_3
    iget-object p2, p0, Lx3/i;->e:Lx3/b;

    iget-wide p2, p2, Lx3/b;->e:J

    iget-wide v0, p0, Lx3/i;->i:J

    sub-long/2addr p2, v0

    const-wide/16 v0, 0x2000

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    iget-object v0, p0, Lx3/i;->e:Lx3/b;

    iget-wide v8, p0, Lx3/i;->i:J

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v2, v0, Lx3/b;->e:J

    move-wide v4, v8

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lx3/a;->b(JJJ)V

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    iget-wide v3, p1, Lx3/b;->e:J

    add-long/2addr v3, p2

    iput-wide v3, p1, Lx3/b;->e:J

    iget-object v0, v0, Lx3/b;->d:Lx3/l;

    :goto_1
    invoke-static {v0}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    iget v3, v0, Lx3/l;->c:I

    iget v4, v0, Lx3/l;->b:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    cmp-long v5, v8, v3

    if-ltz v5, :cond_5

    sub-long/2addr v8, v3

    iget-object v0, v0, Lx3/l;->f:Lx3/l;

    goto :goto_1

    :cond_5
    move-wide v3, p2

    :goto_2
    cmp-long v5, v3, v1

    if-lez v5, :cond_7

    invoke-static {v0}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lx3/l;->c()Lx3/l;

    move-result-object v5

    iget v6, v5, Lx3/l;->b:I

    long-to-int v7, v8

    add-int/2addr v6, v7

    iput v6, v5, Lx3/l;->b:I

    long-to-int v7, v3

    add-int/2addr v6, v7

    iget v7, v5, Lx3/l;->c:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v5, Lx3/l;->c:I

    iget-object v6, p1, Lx3/b;->d:Lx3/l;

    if-nez v6, :cond_6

    iput-object v5, v5, Lx3/l;->g:Lx3/l;

    iput-object v5, v5, Lx3/l;->f:Lx3/l;

    iput-object v5, p1, Lx3/b;->d:Lx3/l;

    goto :goto_3

    :cond_6
    iget-object v6, v6, Lx3/l;->g:Lx3/l;

    invoke-static {v6}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    invoke-virtual {v6, v5}, Lx3/l;->b(Lx3/l;)V

    :goto_3
    iget v6, v5, Lx3/l;->c:I

    iget v5, v5, Lx3/l;->b:I

    sub-int/2addr v6, v5

    int-to-long v5, v6

    sub-long/2addr v3, v5

    iget-object v0, v0, Lx3/l;->f:Lx3/l;

    move-wide v8, v1

    goto :goto_2

    :cond_7
    :goto_4
    iget-wide v0, p0, Lx3/i;->i:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lx3/i;->i:J

    return-wide p2

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Peek source is invalid because upstream source was used"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
