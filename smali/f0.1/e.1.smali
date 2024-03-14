.class public final Lf0/e;
.super Lf0/G;
.source "SourceFile"


# instance fields
.field public f:Z

.field public g:Landroidx/slice/SliceItem;

.field public final h:Ljava/util/ArrayList;

.field public i:Landroidx/slice/SliceItem;

.field public j:I

.field public k:I

.field public l:Z

.field public m:Landroidx/core/graphics/drawable/IconCompat;

.field public n:Landroid/graphics/Point;

.field public o:Landroidx/slice/SliceItem;


# direct methods
.method public constructor <init>(Landroidx/slice/SliceItem;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p2}, Lf0/G;-><init>(Landroidx/slice/SliceItem;I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lf0/e;->h:Ljava/util/ArrayList;

    const/4 v2, 0x5

    iput v2, v0, Lf0/e;->k:I

    const/4 v2, 0x0

    iput-object v2, v0, Lf0/e;->m:Landroidx/core/graphics/drawable/IconCompat;

    iput-object v2, v0, Lf0/e;->n:Landroid/graphics/Point;

    const-string v3, "see_more"

    invoke-static {v1, v2, v3}, Ld0/e;->d(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v4

    iput-object v4, v0, Lf0/e;->i:Landroidx/slice/SliceItem;

    const/4 v5, 0x0

    const-string v6, "slice"

    if-eqz v4, :cond_0

    iget-object v4, v4, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Lf0/e;->i:Landroidx/slice/SliceItem;

    invoke-virtual {v4}, Landroidx/slice/SliceItem;->g()Landroidx/slice/Slice;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/slice/Slice;->b()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/slice/SliceItem;

    iput-object v4, v0, Lf0/e;->i:Landroidx/slice/SliceItem;

    :cond_0
    const-string v4, "shortcut"

    const-string v7, "title"

    filled-new-array {v4, v7}, [Ljava/lang/String;

    move-result-object v4

    const-string v7, "actions"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v6, v4, v7}, Ld0/e;->e(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v4

    iput-object v4, v0, Lf0/e;->g:Landroidx/slice/SliceItem;

    const/4 v4, 0x1

    iput-boolean v4, v0, Lf0/e;->f:Z

    iget-object v7, v1, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroidx/slice/SliceItem;->g()Landroidx/slice/Slice;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/slice/Slice;->b()Ljava/util/List;

    move-result-object v1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v7, v5

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    const-string v9, "content_description"

    if-ge v7, v8, :cond_6

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/slice/SliceItem;

    invoke-static {v8, v2, v3}, Ld0/e;->d(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v10

    if-eqz v10, :cond_1

    move v10, v4

    goto :goto_1

    :cond_1
    move v10, v5

    :goto_1
    if-nez v10, :cond_3

    const-string v11, "shortcut"

    const-string v12, "see_more"

    const-string v13, "keywords"

    const-string v14, "ttl"

    const-string v15, "last_updated"

    const-string v16, "overlay"

    filled-new-array/range {v11 .. v16}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroidx/slice/SliceItem;->h([Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_2

    :cond_2
    move v10, v5

    goto :goto_3

    :cond_3
    :goto_2
    move v10, v4

    :goto_3
    iget-object v11, v8, Landroidx/slice/SliceItem;->c:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    iput-object v8, v0, Lf0/G;->d:Landroidx/slice/SliceItem;

    goto :goto_4

    :cond_4
    if-nez v10, :cond_5

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_6
    :goto_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v5, v1, :cond_9

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/SliceItem;

    iget-object v2, v1, Landroidx/slice/SliceItem;->c:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v2, Lf0/d;

    invoke-direct {v2, v1}, Lf0/d;-><init>(Landroidx/slice/SliceItem;)V

    invoke-virtual {v0, v2}, Lf0/e;->f(Lf0/d;)V

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_8
    new-instance v2, Lf0/d;

    invoke-direct {v2, v1}, Lf0/d;-><init>(Landroidx/slice/SliceItem;)V

    invoke-virtual {v0, v2}, Lf0/e;->f(Lf0/d;)V

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lf0/e;->e()Z

    return-void
.end method


# virtual methods
.method public final a(Lf0/J;Lf0/O;)I
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p2, Lf0/O;->c:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    invoke-virtual {p0}, Lf0/e;->e()Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_8

    :cond_1
    iget v2, p0, Lf0/e;->k:I

    iget-boolean v3, p0, Lf0/e;->f:Z

    iget-object v4, p1, Lf0/J;->K:Landroid/content/Context;

    const/4 v5, 0x4

    if-eqz v3, :cond_6

    iget-object v3, p0, Lf0/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v1, :cond_3

    if-eqz p2, :cond_2

    iget p2, p1, Lf0/J;->x:I

    goto :goto_6

    :cond_2
    iget p2, p1, Lf0/J;->y:I

    goto :goto_6

    :cond_3
    if-nez v2, :cond_4

    goto :goto_5

    :cond_4
    if-ne v2, v5, :cond_5

    invoke-virtual {p0, v4}, Lf0/e;->d(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Point;->y:I

    goto :goto_6

    :cond_5
    iget p2, p1, Lf0/J;->z:I

    goto :goto_6

    :cond_6
    iget v3, p0, Lf0/e;->j:I

    if-le v3, v1, :cond_7

    move v3, v1

    goto :goto_1

    :cond_7
    move v3, v0

    :goto_1
    iget-object v6, p0, Lf0/e;->m:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz v6, :cond_8

    move v6, v1

    goto :goto_2

    :cond_8
    move v6, v0

    :goto_2
    if-eqz v2, :cond_a

    const/4 v7, 0x5

    if-ne v2, v7, :cond_9

    goto :goto_3

    :cond_9
    move v7, v0

    goto :goto_4

    :cond_a
    :goto_3
    move v7, v1

    :goto_4
    if-ne v2, v5, :cond_c

    invoke-virtual {p0, v4}, Lf0/e;->d(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Point;->y:I

    if-eqz v3, :cond_b

    const/4 v1, 0x2

    :cond_b
    iget v2, p1, Lf0/J;->B:I

    mul-int/2addr v1, v2

    add-int/2addr p2, v1

    goto :goto_6

    :cond_c
    if-eqz v3, :cond_d

    if-nez p2, :cond_d

    if-eqz v6, :cond_e

    iget p2, p1, Lf0/J;->C:I

    goto :goto_6

    :cond_d
    if-eqz v7, :cond_f

    :cond_e
    :goto_5
    iget p2, p1, Lf0/J;->D:I

    goto :goto_6

    :cond_f
    iget p2, p1, Lf0/J;->A:I

    :goto_6
    iget-boolean v1, p0, Lf0/e;->f:Z

    if-eqz v1, :cond_10

    iget v2, p0, Lf0/G;->e:I

    if-nez v2, :cond_10

    iget v2, p1, Lf0/J;->m:I

    goto :goto_7

    :cond_10
    move v2, v0

    :goto_7
    if-eqz v1, :cond_11

    iget-boolean p0, p0, Lf0/e;->l:Z

    if-eqz p0, :cond_11

    iget v0, p1, Lf0/J;->n:I

    :cond_11
    add-int/2addr p2, v2

    add-int/2addr v0, p2

    :goto_8
    return v0
.end method

.method public final d(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 2

    iget-object v0, p0, Lf0/e;->m:Landroidx/core/graphics/drawable/IconCompat;

    if-nez v0, :cond_0

    new-instance p0, Landroid/graphics/Point;

    const/4 p1, -0x1

    invoke-direct {p0, p1, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    :cond_0
    iget-object v1, p0, Lf0/e;->n:Landroid/graphics/Point;

    if-nez v1, :cond_1

    invoke-virtual {v0, p1}, Landroidx/core/graphics/drawable/IconCompat;->h(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lf0/e;->n:Landroid/graphics/Point;

    :cond_1
    iget-object p0, p0, Lf0/e;->n:Landroid/graphics/Point;

    return-object p0
.end method

.method public final e()Z
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

    iget-object p0, p0, Lf0/e;->h:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public final f(Lf0/d;)V
    .locals 5

    iget-object v0, p1, Lf0/d;->b:Landroidx/slice/SliceItem;

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p1, Lf0/d;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x3

    if-gt v0, v4, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_8

    iget-object v0, p0, Lf0/e;->o:Landroidx/slice/SliceItem;

    if-nez v0, :cond_2

    iget-object v0, p1, Lf0/d;->j:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_2

    iput-object v0, p0, Lf0/e;->o:Landroidx/slice/SliceItem;

    :cond_2
    iget-object v0, p0, Lf0/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/SliceItem;

    iget-object v0, v0, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    const-string v3, "image"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    if-nez v0, :cond_4

    iput-boolean v1, p0, Lf0/e;->f:Z

    :cond_4
    iget v0, p0, Lf0/e;->j:I

    iget v3, p1, Lf0/d;->e:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lf0/e;->j:I

    iget-object v0, p0, Lf0/e;->m:Landroidx/core/graphics/drawable/IconCompat;

    if-nez v0, :cond_6

    iget-object v0, p1, Lf0/d;->g:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz v0, :cond_5

    move v1, v2

    :cond_5
    if-eqz v1, :cond_6

    iput-object v0, p0, Lf0/e;->m:Landroidx/core/graphics/drawable/IconCompat;

    :cond_6
    iget v0, p0, Lf0/e;->k:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    iget p1, p1, Lf0/d;->i:I

    goto :goto_3

    :cond_7
    iget p1, p1, Lf0/d;->i:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_3
    iput p1, p0, Lf0/e;->k:I

    :cond_8
    return-void
.end method
