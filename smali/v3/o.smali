.class public final Lv3/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field public final b:Lt3/f;

.field public final c:Lt3/d;

.field public final d:Lt3/d;

.field public final e:Lt3/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lv3/o;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v0, 0x0

    invoke-static {v0}, Lt3/c;->d(Ljava/lang/Object;)Lt3/f;

    move-result-object v0

    iput-object v0, p0, Lv3/o;->b:Lt3/f;

    const/4 v0, 0x0

    invoke-static {v0}, Lt3/c;->b(I)Lt3/d;

    move-result-object v1

    iput-object v1, p0, Lv3/o;->c:Lt3/d;

    invoke-static {v0}, Lt3/c;->b(I)Lt3/d;

    move-result-object v1

    iput-object v1, p0, Lv3/o;->d:Lt3/d;

    invoke-static {v0}, Lt3/c;->b(I)Lt3/d;

    move-result-object v0

    iput-object v0, p0, Lv3/o;->e:Lt3/d;

    return-void
.end method


# virtual methods
.method public final a(Lv3/i;)Lv3/i;
    .locals 3

    iget-object v0, p0, Lv3/o;->c:Lt3/d;

    iget v0, v0, Lt3/d;->b:I

    iget-object v1, p0, Lv3/o;->d:Lt3/d;

    iget v1, v1, Lt3/d;->b:I

    sub-int/2addr v0, v1

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p1, Lv3/i;->e:Lv3/j;

    invoke-interface {v0}, Lv3/j;->b()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    iget-object v0, p0, Lv3/o;->e:Lt3/d;

    invoke-virtual {v0}, Lt3/d;->c()I

    :cond_2
    iget-object v0, p0, Lv3/o;->c:Lt3/d;

    iget v0, v0, Lt3/d;->b:I

    and-int/2addr v0, v1

    :goto_1
    iget-object v1, p0, Lv3/o;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lv3/o;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    iget-object p0, p0, Lv3/o;->c:Lt3/d;

    invoke-virtual {p0}, Lt3/d;->c()I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final b()Lv3/i;
    .locals 5

    :cond_0
    :goto_0
    iget-object v0, p0, Lv3/o;->d:Lt3/d;

    iget v0, v0, Lt3/d;->b:I

    iget-object v1, p0, Lv3/o;->c:Lt3/d;

    iget v1, v1, Lt3/d;->b:I

    sub-int v1, v0, v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    and-int/lit8 v1, v0, 0x7f

    iget-object v3, p0, Lv3/o;->d:Lt3/d;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v0, v4}, Lt3/d;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv3/o;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv3/i;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lv3/i;->e:Lv3/j;

    invoke-interface {v1}, Lv3/j;->b()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    iget-object p0, p0, Lv3/o;->e:Lt3/d;

    invoke-virtual {p0}, Lt3/d;->b()V

    :cond_4
    return-object v0
.end method

.method public final c(IZ)Lv3/i;
    .locals 5

    and-int/lit8 p1, p1, 0x7f

    iget-object v0, p0, Lv3/o;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv3/i;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v3, v1, Lv3/i;->e:Lv3/j;

    invoke-interface {v3}, Lv3/j;->b()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-ne v4, p2, :cond_2

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lv3/o;->e:Lt3/d;

    invoke-virtual {p0}, Lt3/d;->b()V

    :cond_1
    return-object v1

    :cond_2
    return-object v2
.end method
