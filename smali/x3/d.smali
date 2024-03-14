.class public final Lx3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx3/n;


# instance fields
.field public final d:Ljava/io/InputStream;

.field public final e:Lx3/p;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lx3/p;)V
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx3/d;->d:Ljava/io/InputStream;

    iput-object p2, p0, Lx3/d;->e:Lx3/p;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    iget-object p0, p0, Lx3/d;->d:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public final g(Lx3/b;J)J
    .locals 4

    const-string p2, "sink"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    :try_start_0
    iget-object p3, p0, Lx3/d;->e:Lx3/p;

    invoke-virtual {p3}, Lx3/p;->a()V

    invoke-virtual {p1, p2}, Lx3/b;->l(I)Lx3/l;

    move-result-object p3

    iget v0, p3, Lx3/l;->c:I

    rsub-int v0, v0, 0x2000

    int-to-long v0, v0

    const-wide/16 v2, 0x2000

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iget-object p0, p0, Lx3/d;->d:Ljava/io/InputStream;

    iget-object v1, p3, Lx3/l;->a:[B

    iget v2, p3, Lx3/l;->c:I

    invoke-virtual {p0, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    iget p0, p3, Lx3/l;->b:I

    iget v0, p3, Lx3/l;->c:I

    if-ne p0, v0, :cond_0

    invoke-virtual {p3}, Lx3/l;->a()Lx3/l;

    move-result-object p0

    iput-object p0, p1, Lx3/b;->d:Lx3/l;

    invoke-static {p3}, Lx3/m;->a(Lx3/l;)V

    :cond_0
    const-wide/16 p0, -0x1

    return-wide p0

    :cond_1
    iget v0, p3, Lx3/l;->c:I

    add-int/2addr v0, p0

    iput v0, p3, Lx3/l;->c:I

    iget-wide v0, p1, Lx3/b;->e:J

    int-to-long v2, p0

    add-long/2addr v0, v2

    iput-wide v0, p1, Lx3/b;->e:J
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    :catch_0
    move-exception p0

    sget p1, Lx3/f;->a:I

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    const/4 p3, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "getsockname failed"

    invoke-static {p1, v0, p3, p3}, Ls3/g;->b(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result p1

    if-ltz p1, :cond_2

    move p1, p2

    goto :goto_0

    :cond_2
    move p1, p3

    :goto_0
    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move p2, p3

    :goto_1
    if-eqz p2, :cond_4

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_4
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lx3/d;->d:Ljava/io/InputStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "source("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
