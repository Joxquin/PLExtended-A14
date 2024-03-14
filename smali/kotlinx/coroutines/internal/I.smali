.class public Lkotlinx/coroutines/internal/I;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[Lkotlinx/coroutines/internal/J;

.field public final b:Lt3/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Lt3/c;->b(I)Lt3/d;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/internal/I;->b:Lt3/d;

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/internal/J;)V
    .locals 4

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/P;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/internal/J;->e(Lkotlinx/coroutines/P;)V

    iget-object v0, p0, Lkotlinx/coroutines/internal/I;->a:[Lkotlinx/coroutines/internal/J;

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlinx/coroutines/internal/J;

    iput-object v0, p0, Lkotlinx/coroutines/internal/I;->a:[Lkotlinx/coroutines/internal/J;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lkotlinx/coroutines/internal/I;->b:Lt3/d;

    iget v1, v1, Lt3/d;->b:I

    array-length v2, v0

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lkotlinx/coroutines/internal/I;->b:Lt3/d;

    iget v1, v1, Lt3/d;->b:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "copyOf(this, newSize)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Lkotlinx/coroutines/internal/J;

    iput-object v0, p0, Lkotlinx/coroutines/internal/I;->a:[Lkotlinx/coroutines/internal/J;

    :cond_1
    :goto_0
    iget-object v1, p0, Lkotlinx/coroutines/internal/I;->b:Lt3/d;

    iget v1, v1, Lt3/d;->b:I

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lkotlinx/coroutines/internal/I;->b:Lt3/d;

    invoke-virtual {v3, v2}, Lt3/d;->d(I)V

    aput-object p1, v0, v1

    invoke-interface {p1, v1}, Lkotlinx/coroutines/internal/J;->a(I)V

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/internal/I;->c(I)V

    return-void
.end method

.method public final b(I)Lkotlinx/coroutines/internal/J;
    .locals 7

    iget-object v0, p0, Lkotlinx/coroutines/internal/I;->a:[Lkotlinx/coroutines/internal/J;

    invoke-static {v0}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    iget-object v1, p0, Lkotlinx/coroutines/internal/I;->b:Lt3/d;

    iget v1, v1, Lt3/d;->b:I

    const/4 v2, -0x1

    add-int/2addr v1, v2

    iget-object v3, p0, Lkotlinx/coroutines/internal/I;->b:Lt3/d;

    invoke-virtual {v3, v1}, Lt3/d;->d(I)V

    iget-object v1, p0, Lkotlinx/coroutines/internal/I;->b:Lt3/d;

    iget v1, v1, Lt3/d;->b:I

    if-ge p1, v1, :cond_4

    iget-object v1, p0, Lkotlinx/coroutines/internal/I;->b:Lt3/d;

    iget v1, v1, Lt3/d;->b:I

    invoke-virtual {p0, p1, v1}, Lkotlinx/coroutines/internal/I;->d(II)V

    add-int/lit8 v1, p1, -0x1

    div-int/lit8 v1, v1, 0x2

    if-lez p1, :cond_0

    aget-object v3, v0, p1

    invoke-static {v3}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    check-cast v3, Ljava/lang/Comparable;

    aget-object v4, v0, v1

    invoke-static {v4}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_0

    invoke-virtual {p0, p1, v1}, Lkotlinx/coroutines/internal/I;->d(II)V

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/internal/I;->c(I)V

    goto :goto_1

    :cond_0
    :goto_0
    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lkotlinx/coroutines/internal/I;->b:Lt3/d;

    iget v3, v3, Lt3/d;->b:I

    if-lt v1, v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lkotlinx/coroutines/internal/I;->a:[Lkotlinx/coroutines/internal/J;

    invoke-static {v3}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lkotlinx/coroutines/internal/I;->b:Lt3/d;

    iget v5, v5, Lt3/d;->b:I

    if-ge v4, v5, :cond_2

    aget-object v5, v3, v4

    invoke-static {v5}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    check-cast v5, Ljava/lang/Comparable;

    aget-object v6, v3, v1

    invoke-static {v6}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_2

    move v1, v4

    :cond_2
    aget-object v4, v3, p1

    invoke-static {v4}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    check-cast v4, Ljava/lang/Comparable;

    aget-object v3, v3, v1

    invoke-static {v3}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    invoke-interface {v4, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1, v1}, Lkotlinx/coroutines/internal/I;->d(II)V

    move p1, v1

    goto :goto_0

    :cond_4
    :goto_1
    iget-object p1, p0, Lkotlinx/coroutines/internal/I;->b:Lt3/d;

    iget p1, p1, Lt3/d;->b:I

    aget-object p1, v0, p1

    invoke-static {p1}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lkotlinx/coroutines/internal/J;->e(Lkotlinx/coroutines/P;)V

    invoke-interface {p1, v2}, Lkotlinx/coroutines/internal/J;->a(I)V

    iget-object p0, p0, Lkotlinx/coroutines/internal/I;->b:Lt3/d;

    iget p0, p0, Lt3/d;->b:I

    aput-object v1, v0, p0

    return-object p1
.end method

.method public final c(I)V
    .locals 3

    :goto_0
    if-gtz p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/I;->a:[Lkotlinx/coroutines/internal/J;

    invoke-static {v0}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    add-int/lit8 v1, p1, -0x1

    div-int/lit8 v1, v1, 0x2

    aget-object v2, v0, v1

    invoke-static {v2}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Comparable;

    aget-object v0, v0, p1

    invoke-static {v0}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    invoke-interface {v2, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1, v1}, Lkotlinx/coroutines/internal/I;->d(II)V

    move p1, v1

    goto :goto_0
.end method

.method public final d(II)V
    .locals 2

    iget-object p0, p0, Lkotlinx/coroutines/internal/I;->a:[Lkotlinx/coroutines/internal/J;

    invoke-static {p0}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    aget-object v0, p0, p2

    invoke-static {v0}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    aget-object v1, p0, p1

    invoke-static {v1}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    aput-object v0, p0, p1

    aput-object v1, p0, p2

    invoke-interface {v0, p1}, Lkotlinx/coroutines/internal/J;->a(I)V

    invoke-interface {v1, p2}, Lkotlinx/coroutines/internal/J;->a(I)V

    return-void
.end method
