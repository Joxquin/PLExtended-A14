.class public final Lx3/j;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lx3/k;


# direct methods
.method public constructor <init>(Lx3/k;)V
    .locals 0

    iput-object p1, p0, Lx3/j;->d:Lx3/k;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 4

    iget-object p0, p0, Lx3/j;->d:Lx3/k;

    iget-boolean v0, p0, Lx3/k;->f:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lx3/k;->e:Lx3/b;

    iget-wide v0, p0, Lx3/b;->e:J

    const p0, 0x7fffffff

    int-to-long v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final close()V
    .locals 0

    iget-object p0, p0, Lx3/j;->d:Lx3/k;

    invoke-virtual {p0}, Lx3/k;->close()V

    return-void
.end method

.method public final read()I
    .locals 6

    .line 1
    iget-object v0, p0, Lx3/j;->d:Lx3/k;

    iget-boolean v1, v0, Lx3/k;->f:Z

    if-nez v1, :cond_1

    .line 2
    iget-object v1, v0, Lx3/k;->e:Lx3/b;

    .line 3
    iget-wide v2, v1, Lx3/b;->e:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 4
    iget-object v0, v0, Lx3/k;->d:Lx3/n;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lx3/n;->g(Lx3/b;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 5
    :cond_0
    iget-object p0, p0, Lx3/j;->d:Lx3/k;

    .line 6
    iget-object p0, p0, Lx3/k;->e:Lx3/b;

    .line 7
    invoke-virtual {p0}, Lx3/b;->c()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0

    .line 8
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final read([BII)I
    .locals 7

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lx3/j;->d:Lx3/k;

    iget-boolean v0, v0, Lx3/k;->f:Z

    if-nez v0, :cond_1

    .line 10
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lx3/a;->b(JJJ)V

    .line 11
    iget-object v0, p0, Lx3/j;->d:Lx3/k;

    .line 12
    iget-object v1, v0, Lx3/k;->e:Lx3/b;

    .line 13
    iget-wide v2, v1, Lx3/b;->e:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 14
    iget-object v0, v0, Lx3/k;->d:Lx3/n;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lx3/n;->g(Lx3/b;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 15
    :cond_0
    iget-object p0, p0, Lx3/j;->d:Lx3/k;

    .line 16
    iget-object p0, p0, Lx3/k;->e:Lx3/b;

    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lx3/b;->read([BII)I

    move-result p0

    return p0

    .line 18
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lx3/j;->d:Lx3/k;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ".inputStream()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
