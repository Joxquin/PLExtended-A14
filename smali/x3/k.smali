.class public final Lx3/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx3/c;


# instance fields
.field public final d:Lx3/n;

.field public final e:Lx3/b;

.field public f:Z


# direct methods
.method public constructor <init>(Lx3/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx3/k;->d:Lx3/n;

    new-instance p1, Lx3/b;

    invoke-direct {p1}, Lx3/b;-><init>()V

    iput-object p1, p0, Lx3/k;->e:Lx3/b;

    return-void
.end method


# virtual methods
.method public final a()Lx3/k;
    .locals 1

    new-instance v0, Lx3/i;

    invoke-direct {v0, p0}, Lx3/i;-><init>(Lx3/c;)V

    new-instance p0, Lx3/k;

    invoke-direct {p0, v0}, Lx3/k;-><init>(Lx3/n;)V

    return-object p0
.end method

.method public final b()B
    .locals 2

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lx3/k;->f(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lx3/k;->e:Lx3/b;

    invoke-virtual {p0}, Lx3/b;->c()B

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public final close()V
    .locals 2

    iget-boolean v0, p0, Lx3/k;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lx3/k;->f:Z

    iget-object v0, p0, Lx3/k;->d:Lx3/n;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    iget-object p0, p0, Lx3/k;->e:Lx3/b;

    iget-wide v0, p0, Lx3/b;->e:J

    invoke-virtual {p0, v0, v1}, Lx3/b;->j(J)V

    :cond_0
    return-void
.end method

.method public final f(J)Z
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lx3/k;->f:Z

    xor-int/2addr v0, v2

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lx3/k;->e:Lx3/b;

    iget-wide v3, v0, Lx3/b;->e:J

    cmp-long v3, v3, p1

    if-gez v3, :cond_2

    iget-object v3, p0, Lx3/k;->d:Lx3/n;

    const-wide/16 v4, 0x2000

    invoke-interface {v3, v0, v4, v5}, Lx3/n;->g(Lx3/b;J)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "byteCount < 0: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(Lx3/b;J)J
    .locals 4

    const-string p2, "sink"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p2, p0, Lx3/k;->f:Z

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1

    iget-object p2, p0, Lx3/k;->e:Lx3/b;

    iget-wide v0, p2, Lx3/b;->e:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    const-wide/16 v0, 0x2000

    if-nez p3, :cond_0

    iget-object p3, p0, Lx3/k;->d:Lx3/n;

    invoke-interface {p3, p2, v0, v1}, Lx3/n;->g(Lx3/b;J)J

    move-result-wide p2

    const-wide/16 v2, -0x1

    cmp-long p2, p2, v2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lx3/k;->e:Lx3/b;

    iget-wide p2, p2, Lx3/b;->e:J

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    iget-object p0, p0, Lx3/k;->e:Lx3/b;

    invoke-virtual {p0, p1, p2, p3}, Lx3/b;->g(Lx3/b;J)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isOpen()Z
    .locals 0

    iget-boolean p0, p0, Lx3/k;->f:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final m()Lx3/b;
    .locals 0

    iget-object p0, p0, Lx3/k;->e:Lx3/b;

    return-object p0
.end method

.method public final p(Lokio/ByteString;)J
    .locals 10

    const-string v0, "targetBytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lx3/k;->f:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x0

    :goto_0
    iget-object v2, p0, Lx3/k;->e:Lx3/b;

    invoke-virtual {v2, p1, v0, v1}, Lx3/b;->b(Lokio/ByteString;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lx3/k;->e:Lx3/b;

    iget-wide v6, v2, Lx3/b;->e:J

    iget-object v3, p0, Lx3/k;->d:Lx3/n;

    const-wide/16 v8, 0x2000

    invoke-interface {v3, v2, v8, v9}, Lx3/n;->g(Lx3/b;J)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    move-wide v2, v4

    :goto_1
    return-wide v2

    :cond_1
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final q(Lx3/h;)I
    .locals 8

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lx3/k;->f:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lx3/k;->e:Lx3/b;

    invoke-static {v0, p1, v1}, Ly3/a;->a(Lx3/b;Lx3/h;Z)I

    move-result v0

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-eq v0, v2, :cond_2

    if-eq v0, v3, :cond_1

    iget-object p1, p1, Lx3/h;->d:[Lokio/ByteString;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lokio/ByteString;->d()I

    move-result p1

    iget-object p0, p0, Lx3/k;->e:Lx3/b;

    int-to-long v1, p1

    invoke-virtual {p0, v1, v2}, Lx3/b;->j(J)V

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lx3/k;->d:Lx3/n;

    iget-object v2, p0, Lx3/k;->e:Lx3/b;

    const-wide/16 v4, 0x2000

    invoke-interface {v0, v2, v4, v5}, Lx3/n;->g(Lx3/b;J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    goto :goto_0

    :goto_1
    return v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final read(Ljava/nio/ByteBuffer;)I
    .locals 5

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lx3/k;->e:Lx3/b;

    iget-wide v1, v0, Lx3/b;->e:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p0, Lx3/k;->d:Lx3/n;

    const-wide/16 v2, 0x2000

    invoke-interface {v1, v0, v2, v3}, Lx3/n;->g(Lx3/b;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, p0, Lx3/k;->e:Lx3/b;

    invoke-virtual {p0, p1}, Lx3/b;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lx3/k;->d:Lx3/n;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buffer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
