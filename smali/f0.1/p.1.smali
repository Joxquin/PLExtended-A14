.class public final Lf0/p;
.super Lf0/G;
.source "SourceFile"


# instance fields
.field public f:Landroidx/slice/SliceItem;

.field public g:Landroidx/slice/SliceItem;

.field public h:Landroidx/slice/SliceItem;

.field public i:Landroidx/slice/SliceItem;

.field public j:Landroidx/slice/SliceItem;

.field public final k:Ljava/util/ArrayList;

.field public final l:Ljava/util/ArrayList;

.field public m:Landroidx/slice/SliceItem;

.field public n:Landroidx/slice/SliceItem;

.field public o:Z

.field public p:I

.field public q:Z

.field public r:Z

.field public s:Z


# direct methods
.method public constructor <init>(Landroidx/slice/SliceItem;I)V
    .locals 10

    invoke-direct {p0, p1, p2}, Lf0/G;-><init>(Landroidx/slice/SliceItem;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf0/p;->k:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf0/p;->l:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lf0/p;->p:I

    const/4 v1, 0x1

    if-nez p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    const-string v2, "end_of_section"

    invoke-virtual {p1, v2}, Landroidx/slice/SliceItem;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v1, p0, Lf0/p;->r:Z

    :cond_1
    iput-boolean p2, p0, Lf0/p;->o:Z

    invoke-static {p1}, Lf0/p;->h(Landroidx/slice/SliceItem;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p0, "RowContent"

    const-string p1, "Provided SliceItem is invalid for RowContent"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_2
    const-string p2, "title"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v2, v4}, Ld0/e;->f(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-string v5, "slice"

    const-string v6, "long"

    const-string v7, "action"

    if-lez v4, :cond_5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/slice/SliceItem;

    iget-object v4, v4, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "image"

    if-eqz v8, :cond_3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/slice/SliceItem;

    invoke-static {v8, v9, v3, v3}, Ld0/e;->e(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v8

    if-nez v8, :cond_4

    :cond_3
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceItem;

    iput-object v2, p0, Lf0/p;->g:Landroidx/slice/SliceItem;

    :cond_5
    const-string v2, "shortcut"

    filled-new-array {v2, p2}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v5, v4, v3}, Ld0/e;->f(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-static {p1, v7, v4, v3}, Ld0/e;->f(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p1, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->g()Landroidx/slice/Slice;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/slice/Slice;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v1, :cond_6

    iput-object p1, p0, Lf0/p;->f:Landroidx/slice/SliceItem;

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lf0/p;->g:Landroidx/slice/SliceItem;

    if-eqz v4, :cond_7

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v1, :cond_7

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v9, p0, Lf0/p;->g:Landroidx/slice/SliceItem;

    if-ne v4, v9, :cond_7

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/slice/SliceItem;

    iput-object v4, p0, Lf0/p;->f:Landroidx/slice/SliceItem;

    goto :goto_1

    :cond_7
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_8

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/slice/SliceItem;

    iput-object v4, p0, Lf0/p;->f:Landroidx/slice/SliceItem;

    :cond_8
    :goto_1
    invoke-static {p1}, Lf0/p;->d(Landroidx/slice/SliceItem;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v8, v1, :cond_a

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/slice/SliceItem;

    iget-object v8, v8, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/slice/SliceItem;

    iget-object v8, v8, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_9
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/slice/SliceItem;

    filled-new-array {v2, p2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroidx/slice/SliceItem;->h([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceItem;

    invoke-static {v2}, Lf0/p;->h(Landroidx/slice/SliceItem;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/slice/SliceItem;

    invoke-static {p1}, Lf0/p;->d(Landroidx/slice/SliceItem;)Ljava/util/ArrayList;

    move-result-object v4

    move v2, v1

    goto :goto_2

    :cond_a
    move v2, v0

    :goto_2
    iget-object v5, p1, Landroidx/slice/SliceItem;->c:Ljava/lang/String;

    const-string v8, "range"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-static {p1, v7, v8}, Ld0/e;->i(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v5

    if-eqz v5, :cond_d

    if-eqz v2, :cond_b

    goto :goto_3

    :cond_b
    iget-object v2, p0, Lf0/p;->g:Landroidx/slice/SliceItem;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v1, :cond_c

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceItem;

    invoke-static {v2}, Lf0/p;->h(Landroidx/slice/SliceItem;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/slice/SliceItem;

    invoke-static {p1}, Lf0/p;->d(Landroidx/slice/SliceItem;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object p1, p0, Lf0/p;->m:Landroidx/slice/SliceItem;

    invoke-virtual {p0}, Lf0/p;->e()Landroidx/slice/SliceItem;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_c
    invoke-static {p1, v7, v8}, Ld0/e;->i(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v2

    iput-object v2, p0, Lf0/p;->m:Landroidx/slice/SliceItem;

    invoke-static {v2}, Lf0/p;->d(Landroidx/slice/SliceItem;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0}, Lf0/p;->e()Landroidx/slice/SliceItem;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v5, p0, Lf0/p;->m:Landroidx/slice/SliceItem;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    :cond_d
    :goto_3
    iput-object p1, p0, Lf0/p;->m:Landroidx/slice/SliceItem;

    :cond_e
    :goto_4
    iget-object v2, p1, Landroidx/slice/SliceItem;->c:Ljava/lang/String;

    const-string v5, "selection"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    iput-object p1, p0, Lf0/p;->n:Landroidx/slice/SliceItem;

    :cond_f
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_23

    iget-object p1, p0, Lf0/p;->g:Landroidx/slice/SliceItem;

    if-eqz p1, :cond_10

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_10
    iget-object p1, p0, Lf0/p;->f:Landroidx/slice/SliceItem;

    if-eqz p1, :cond_11

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    move v2, v0

    :goto_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_17

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/slice/SliceItem;

    iget-object v8, v5, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    const-string v9, "text"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    iget-object v8, p0, Lf0/p;->h:Landroidx/slice/SliceItem;

    const-string v9, "summary"

    if-eqz v8, :cond_12

    invoke-virtual {v8, p2}, Landroidx/slice/SliceItem;->i(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_13

    :cond_12
    invoke-virtual {v5, p2}, Landroidx/slice/SliceItem;->i(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-virtual {v5, v9}, Landroidx/slice/SliceItem;->i(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_13

    iput-object v5, p0, Lf0/p;->h:Landroidx/slice/SliceItem;

    goto :goto_6

    :cond_13
    iget-object v8, p0, Lf0/p;->i:Landroidx/slice/SliceItem;

    if-nez v8, :cond_14

    invoke-virtual {v5, v9}, Landroidx/slice/SliceItem;->i(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_14

    iput-object v5, p0, Lf0/p;->i:Landroidx/slice/SliceItem;

    goto :goto_6

    :cond_14
    iget-object v8, p0, Lf0/p;->j:Landroidx/slice/SliceItem;

    if-nez v8, :cond_16

    invoke-virtual {v5, v9}, Landroidx/slice/SliceItem;->i(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16

    iput-object v5, p0, Lf0/p;->j:Landroidx/slice/SliceItem;

    goto :goto_6

    :cond_15
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_17
    iget-object p2, p0, Lf0/p;->h:Landroidx/slice/SliceItem;

    const-string v2, "partial"

    if-eqz p2, :cond_19

    invoke-virtual {p2, v2}, Landroidx/slice/SliceItem;->i(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    iget-object p2, p2, Landroidx/slice/SliceItem;->d:Ljava/lang/Object;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_19

    :cond_18
    move p2, v1

    goto :goto_7

    :cond_19
    move p2, v0

    :goto_7
    if-eqz p2, :cond_1a

    iget p2, p0, Lf0/p;->p:I

    add-int/2addr p2, v1

    iput p2, p0, Lf0/p;->p:I

    :cond_1a
    iget-object p2, p0, Lf0/p;->i:Landroidx/slice/SliceItem;

    if-eqz p2, :cond_1c

    invoke-virtual {p2, v2}, Landroidx/slice/SliceItem;->i(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    iget-object p2, p2, Landroidx/slice/SliceItem;->d:Ljava/lang/Object;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1c

    :cond_1b
    move p2, v1

    goto :goto_8

    :cond_1c
    move p2, v0

    :goto_8
    if-eqz p2, :cond_1d

    iget p2, p0, Lf0/p;->p:I

    add-int/2addr p2, v1

    iput p2, p0, Lf0/p;->p:I

    :cond_1d
    iget-object p2, p0, Lf0/p;->g:Landroidx/slice/SliceItem;

    if-eqz p2, :cond_1e

    iget-object p2, p2, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1e

    move p2, v1

    goto :goto_9

    :cond_1e
    move p2, v0

    :goto_9
    move v2, v0

    :goto_a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_23

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/slice/SliceItem;

    invoke-static {v4, v7, v3, v3}, Ld0/e;->e(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v5

    if-eqz v5, :cond_1f

    move v5, v1

    goto :goto_b

    :cond_1f
    move v5, v0

    :goto_b
    iget-object v8, v4, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iget-object v9, p0, Lf0/p;->k:Ljava/util/ArrayList;

    if-eqz v8, :cond_20

    if-nez p2, :cond_22

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move p2, v1

    goto :goto_c

    :cond_20
    if-eqz v5, :cond_21

    new-instance v5, Landroidx/slice/core/a;

    invoke-direct {v5, v4}, Landroidx/slice/core/a;-><init>(Landroidx/slice/SliceItem;)V

    invoke-virtual {v5}, Landroidx/slice/core/a;->b()Z

    move-result v8

    if-eqz v8, :cond_21

    iget-object v8, p0, Lf0/p;->l:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_22
    :goto_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_23
    invoke-virtual {p0}, Lf0/p;->g()Z

    :goto_d
    return-void
.end method

.method public static d(Landroidx/slice/SliceItem;)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->g()Landroidx/slice/Slice;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/slice/Slice;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceItem;

    invoke-static {p0, v2}, Lf0/p;->i(Landroidx/slice/SliceItem;Landroidx/slice/SliceItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static h(Landroidx/slice/SliceItem;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    const-string v2, "slice"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    const-string v2, "action"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->g()Landroidx/slice/Slice;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/slice/Slice;->b()Ljava/util/List;

    move-result-object v1

    const-string v2, "see_more"

    invoke-virtual {p0, v2}, Landroidx/slice/SliceItem;->i(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    return v3

    :cond_2
    move v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/slice/SliceItem;

    invoke-static {p0, v4}, Lf0/p;->i(Landroidx/slice/SliceItem;Landroidx/slice/SliceItem;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public static i(Landroidx/slice/SliceItem;Landroidx/slice/SliceItem;)Z
    .locals 4

    const-string v0, "last_updated"

    const-string v1, "horizontal"

    const-string v2, "keywords"

    const-string v3, "ttl"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/slice/SliceItem;->h([Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p1, Landroidx/slice/SliceItem;->c:Ljava/lang/String;

    const-string v2, "content_description"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Landroidx/slice/SliceItem;->c:Ljava/lang/String;

    const-string v2, "selection_option_key"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Landroidx/slice/SliceItem;->c:Ljava/lang/String;

    const-string v2, "selection_option_value"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    const-string v0, "image"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "text"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "long"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "action"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "input"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "slice"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "int"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroidx/slice/SliceItem;->c:Ljava/lang/String;

    const-string p1, "range"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public final a(Lf0/J;Lf0/O;)I
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p2, Lf0/O;->b:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p1, Lf0/J;->o:I

    :goto_0
    iget-object v1, p0, Lf0/p;->m:Landroidx/slice/SliceItem;

    if-nez v1, :cond_1

    iget-object v2, p0, Lf0/p;->n:Landroidx/slice/SliceItem;

    if-nez v2, :cond_1

    iget p2, p2, Lf0/O;->c:I

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    goto :goto_5

    :cond_1
    const/4 p2, 0x1

    if-eqz v1, :cond_6

    iget-boolean v0, p0, Lf0/p;->o:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lf0/p;->q:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lf0/p;->g:Landroidx/slice/SliceItem;

    :goto_1
    if-nez v0, :cond_5

    iget p0, p0, Lf0/p;->p:I

    if-nez p0, :cond_3

    const/4 p0, 0x0

    goto :goto_2

    :cond_3
    if-le p0, p2, :cond_4

    iget p0, p1, Lf0/J;->p:I

    goto :goto_2

    :cond_4
    iget p0, p1, Lf0/J;->q:I

    :goto_2
    iget p1, p1, Lf0/J;->s:I

    goto :goto_4

    :cond_5
    iget v0, p1, Lf0/J;->w:I

    goto :goto_5

    :cond_6
    iget-object v1, p0, Lf0/p;->n:Landroidx/slice/SliceItem;

    if-eqz v1, :cond_8

    iget p0, p0, Lf0/p;->p:I

    if-le p0, p2, :cond_7

    iget p0, p1, Lf0/J;->u:I

    goto :goto_3

    :cond_7
    iget p0, p1, Lf0/J;->v:I

    :goto_3
    iget p1, p1, Lf0/J;->t:I

    :goto_4
    add-int v0, p0, p1

    goto :goto_5

    :cond_8
    iget v1, p0, Lf0/p;->p:I

    if-gt v1, p2, :cond_a

    iget-boolean p0, p0, Lf0/p;->o:Z

    if-eqz p0, :cond_9

    goto :goto_5

    :cond_9
    iget v0, p1, Lf0/J;->r:I

    :cond_a
    :goto_5
    return v0
.end method

.method public final e()Landroidx/slice/SliceItem;
    .locals 3

    iget-object p0, p0, Lf0/p;->m:Landroidx/slice/SliceItem;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->g()Landroidx/slice/Slice;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/slice/Slice;->b()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/SliceItem;

    iget-object v1, v1, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    const-string v2, "image"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/slice/SliceItem;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final f()Z
    .locals 2

    iget-object v0, p0, Lf0/G;->a:Landroidx/slice/SliceItem;

    iget-object v0, v0, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    const-string v1, "action"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf0/G;->a:Landroidx/slice/SliceItem;

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->g()Landroidx/slice/Slice;

    move-result-object v0

    iget-object v0, v0, Landroidx/slice/Slice;->c:[Ljava/lang/String;

    const-string v1, "see_more"

    invoke-static {v0, v1}, Lb0/a;->a([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lf0/G;->a:Landroidx/slice/SliceItem;

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->g()Landroidx/slice/Slice;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/slice/Slice;->b()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final g()Z
    .locals 3

    iget-object v0, p0, Lf0/G;->a:Landroidx/slice/SliceItem;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lf0/p;->g:Landroidx/slice/SliceItem;

    if-nez v0, :cond_2

    iget-object v0, p0, Lf0/p;->f:Landroidx/slice/SliceItem;

    if-nez v0, :cond_2

    iget-object v0, p0, Lf0/p;->h:Landroidx/slice/SliceItem;

    if-nez v0, :cond_2

    iget-object v0, p0, Lf0/p;->i:Landroidx/slice/SliceItem;

    if-nez v0, :cond_2

    iget-object v0, p0, Lf0/p;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Lf0/p;->m:Landroidx/slice/SliceItem;

    if-nez v0, :cond_2

    iget-object v0, p0, Lf0/p;->n:Landroidx/slice/SliceItem;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lf0/p;->f()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    return v1
.end method
