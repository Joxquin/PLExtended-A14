.class public Lkotlin/collections/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public d:I

.field public final synthetic e:Lkotlin/collections/f;


# direct methods
.method public constructor <init>(Lkotlin/collections/f;)V
    .locals 0

    iput-object p1, p0, Lkotlin/collections/c;->e:Lkotlin/collections/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lkotlin/collections/c;->d:I

    iget-object p0, p0, Lkotlin/collections/c;->e:Lkotlin/collections/f;

    invoke-virtual {p0}, Lkotlin/collections/a;->h()I

    move-result p0

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

    invoke-virtual {p0}, Lkotlin/collections/c;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlin/collections/c;->e:Lkotlin/collections/f;

    iget v1, p0, Lkotlin/collections/c;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlin/collections/c;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
