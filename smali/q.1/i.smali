.class public abstract Lq/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public d:I

.field public e:I

.field public f:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lq/i;->d:I

    return-void
.end method


# virtual methods
.method public abstract a(I)Ljava/lang/Object;
.end method

.method public abstract b(I)V
.end method

.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lq/i;->e:I

    iget p0, p0, Lq/i;->d:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lq/i;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lq/i;->e:I

    invoke-virtual {p0, v0}, Lq/i;->a(I)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lq/i;->e:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lq/i;->e:I

    iput-boolean v2, p0, Lq/i;->f:Z

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final remove()V
    .locals 1

    iget-boolean v0, p0, Lq/i;->f:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lq/i;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lq/i;->e:I

    invoke-virtual {p0, v0}, Lq/i;->b(I)V

    iget v0, p0, Lq/i;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lq/i;->d:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lq/i;->f:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Call next() before removing an element."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
