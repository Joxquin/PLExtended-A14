.class public final Lq/f;
.super Lq/m;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;


# instance fields
.field public g:Lq/a;

.field public h:Lq/c;

.field public i:Lq/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lq/m;-><init>()V

    return-void
.end method

.method public constructor <init>(Lq/f;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lq/m;-><init>(I)V

    if-eqz p1, :cond_1

    .line 2
    iget v1, p1, Lq/m;->f:I

    .line 3
    iget v2, p0, Lq/m;->f:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lq/m;->c(I)V

    .line 4
    iget v2, p0, Lq/m;->f:I

    if-nez v2, :cond_0

    if-lez v1, :cond_1

    .line 5
    iget-object v2, p1, Lq/m;->d:[I

    .line 6
    iget-object v3, p0, Lq/m;->d:[I

    .line 7
    invoke-static {v0, v0, v2, v3, v1}, Lkotlin/collections/m;->d(II[I[II)V

    .line 8
    iget-object p1, p1, Lq/m;->e:[Ljava/lang/Object;

    .line 9
    iget-object v2, p0, Lq/m;->e:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    .line 10
    invoke-static {v0, v0, v3, p1, v2}, Lkotlin/collections/m;->c(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 11
    iput v1, p0, Lq/m;->f:I

    goto :goto_1

    :cond_0
    :goto_0
    if-ge v0, v1, :cond_1

    .line 12
    invoke-virtual {p1, v0}, Lq/m;->g(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v0}, Lq/m;->j(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lq/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public final containsKey(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lq/m;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lq/m;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lq/f;->g:Lq/a;

    if-nez v0, :cond_0

    new-instance v0, Lq/a;

    invoke-direct {v0, p0}, Lq/a;-><init>(Lq/f;)V

    iput-object v0, p0, Lq/f;->g:Lq/a;

    :cond_0
    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1}, Lq/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final k(Ljava/util/Collection;)Z
    .locals 1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, v0}, Lq/m;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lq/f;->h:Lq/c;

    if-nez v0, :cond_0

    new-instance v0, Lq/c;

    invoke-direct {v0, p0}, Lq/c;-><init>(Lq/f;)V

    iput-object v0, p0, Lq/f;->h:Lq/c;

    :cond_0
    return-object v0
.end method

.method public final l(Ljava/util/Collection;)Z
    .locals 2

    iget v0, p0, Lq/m;->f:I

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-super {p0, v1}, Lq/m;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget p0, p0, Lq/m;->f:I

    if-eq v0, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final m(Ljava/util/Collection;)Z
    .locals 3

    iget v0, p0, Lq/m;->f:I

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {p0, v1}, Lq/m;->g(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lq/m;->h(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget p0, p0, Lq/m;->f:I

    if-eq v0, p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 2

    iget v0, p0, Lq/m;->f:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lq/m;->c(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lq/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1}, Lq/m;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lq/f;->i:Lq/e;

    if-nez v0, :cond_0

    new-instance v0, Lq/e;

    invoke-direct {v0, p0}, Lq/e;-><init>(Lq/f;)V

    iput-object v0, p0, Lq/f;->i:Lq/e;

    :cond_0
    return-object v0
.end method
