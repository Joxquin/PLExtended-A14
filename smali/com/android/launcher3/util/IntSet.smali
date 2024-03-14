.class public final Lcom/android/launcher3/util/IntSet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field final mArray:Lcom/android/launcher3/util/IntArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    return-void
.end method

.method public static wrap(Lcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/util/IntSet;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSet;-><init>()V

    .line 2
    iget-object v1, v0, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/IntArray;->addAll(Lcom/android/launcher3/util/IntArray;)V

    .line 3
    iget-object p0, v0, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    iget-object v1, p0, Lcom/android/launcher3/util/IntArray;->mValues:[I

    const/4 v2, 0x0

    iget p0, p0, Lcom/android/launcher3/util/IntArray;->mSize:I

    invoke-static {v1, v2, p0}, Ljava/util/Arrays;->sort([III)V

    return-object v0
.end method

.method public static varargs wrap([I)Lcom/android/launcher3/util/IntSet;
    .locals 0

    .line 4
    invoke-static {p0}, Lcom/android/launcher3/util/IntArray;->wrap([I)Lcom/android/launcher3/util/IntArray;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/util/IntSet;->wrap(Lcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/util/IntSet;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final add(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    iget-object v1, v0, Lcom/android/launcher3/util/IntArray;->mValues:[I

    const/4 v2, 0x0

    iget v0, v0, Lcom/android/launcher3/util/IntArray;->mSize:I

    invoke-static {v1, v2, v0, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    if-gez v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/util/IntArray;->add(II)V

    :cond_0
    return-void
.end method

.method public final clear()V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/util/IntArray;->mSize:I

    return-void
.end method

.method public final contains(I)Z
    .locals 2

    iget-object p0, p0, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    iget-object v0, p0, Lcom/android/launcher3/util/IntArray;->mValues:[I

    iget p0, p0, Lcom/android/launcher3/util/IntArray;->mSize:I

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/launcher3/util/IntSet;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/android/launcher3/util/IntSet;

    iget-object p1, p1, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    iget-object p0, p0, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/IntArray;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getArray()Lcom/android/launcher3/util/IntArray;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    return-object p0
.end method

.method public final isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {p0}, Lcom/android/launcher3/util/IntArray;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/launcher3/util/IntArray$ValueIterator;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/IntArray$ValueIterator;-><init>(Lcom/android/launcher3/util/IntArray;)V

    return-object v0
.end method

.method public final remove(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    iget-object v1, v0, Lcom/android/launcher3/util/IntArray;->mValues:[I

    const/4 v2, 0x0

    iget v0, v0, Lcom/android/launcher3/util/IntArray;->mSize:I

    invoke-static {v1, v2, v0, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/IntArray;->removeIndex(I)V

    :cond_0
    return-void
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    iget p0, p0, Lcom/android/launcher3/util/IntArray;->mSize:I

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IntSet{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {p0}, Lcom/android/launcher3/util/IntArray;->toConcatString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
