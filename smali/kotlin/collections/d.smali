.class public final Lkotlin/collections/d;
.super Lkotlin/collections/c;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field public final synthetic f:Lkotlin/collections/f;


# direct methods
.method public constructor <init>(Lkotlin/collections/f;I)V
    .locals 2

    iput-object p1, p0, Lkotlin/collections/d;->f:Lkotlin/collections/f;

    invoke-direct {p0, p1}, Lkotlin/collections/c;-><init>(Lkotlin/collections/f;)V

    invoke-virtual {p1}, Lkotlin/collections/a;->h()I

    move-result p1

    if-ltz p2, :cond_0

    if-gt p2, p1, :cond_0

    iput p2, p0, Lkotlin/collections/c;->d:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "index: "

    const-string v1, ", size: "

    invoke-static {v0, p2, v1, p1}, Lcom/android/launcher3/util/l;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final hasPrevious()Z
    .locals 0

    iget p0, p0, Lkotlin/collections/c;->d:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final nextIndex()I
    .locals 0

    iget p0, p0, Lkotlin/collections/c;->d:I

    return p0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lkotlin/collections/d;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlin/collections/d;->f:Lkotlin/collections/f;

    iget v1, p0, Lkotlin/collections/c;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lkotlin/collections/c;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final previousIndex()I
    .locals 0

    iget p0, p0, Lkotlin/collections/c;->d:I

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
