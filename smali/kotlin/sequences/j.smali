.class public final Lkotlin/sequences/j;
.super Lkotlin/sequences/n;
.source "SourceFile"


# direct methods
.method public static final b(Lkotlin/sequences/g;Lm3/l;)Lkotlin/sequences/d;
    .locals 2

    const-string v0, "transform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/sequences/p;

    invoke-direct {v0, p0, p1}, Lkotlin/sequences/p;-><init>(Lkotlin/sequences/g;Lm3/l;)V

    sget-object p0, Lkotlin/sequences/SequencesKt___SequencesKt$filterNotNull$1;->d:Lkotlin/sequences/SequencesKt___SequencesKt$filterNotNull$1;

    const-string p1, "predicate"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lkotlin/sequences/d;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Lkotlin/sequences/d;-><init>(Lkotlin/sequences/g;ZLm3/l;)V

    return-object p1
.end method

.method public static final c(Lkotlin/sequences/g;)Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Lkotlin/sequences/g;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/n;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_2
    sget-object v0, Lkotlin/collections/EmptyList;->d:Lkotlin/collections/EmptyList;

    :goto_1
    return-object v0
.end method
