.class public final Lf0/j;
.super Lf0/G;
.source "SourceFile"


# instance fields
.field public f:Landroidx/slice/core/a;

.field public g:Lf0/p;

.field public final h:Ljava/util/ArrayList;

.field public i:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroidx/slice/Slice;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p1}, Lf0/G;-><init>(Landroidx/slice/Slice;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lf0/j;->h:Ljava/util/ArrayList;

    iget-object v2, v0, Lf0/G;->a:Landroidx/slice/SliceItem;

    if-nez v2, :cond_0

    return-void

    :cond_0
    if-nez v1, :cond_1

    goto/16 :goto_a

    :cond_1
    const-string v2, "slice"

    const-string v3, "actions"

    invoke-static {v1, v2, v3}, Ld0/e;->b(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v4

    const-string v5, "shortcut"

    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v4, :cond_2

    invoke-static {v4, v2, v6, v7}, Ld0/e;->f(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    goto :goto_0

    :cond_2
    move-object v4, v7

    :goto_0
    const/4 v6, 0x0

    if-eqz v4, :cond_3

    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    move v9, v6

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_4

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/slice/SliceItem;

    new-instance v11, Landroidx/slice/core/a;

    invoke-direct {v11, v10}, Landroidx/slice/core/a;-><init>(Landroidx/slice/SliceItem;)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    move-object v8, v7

    :cond_4
    iput-object v8, v0, Lf0/j;->i:Ljava/util/List;

    const-string v9, "list_item"

    const-string v10, "shortcut"

    const-string v11, "actions"

    const-string v12, "keywords"

    const-string v13, "ttl"

    const-string v14, "last_updated"

    const-string v15, "horizontal"

    const-string v16, "selection_option"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v7, v4}, Ld0/e;->c(Landroidx/slice/Slice;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v4

    const/4 v8, 0x1

    const-string v9, "keywords"

    const-string v10, "see_more"

    if-eqz v4, :cond_6

    iget-object v11, v4, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    filled-new-array {v3, v9, v10}, [Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroidx/slice/SliceItem;->h([Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "text"

    invoke-static {v4, v11, v7}, Ld0/e;->d(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v11

    if-eqz v11, :cond_5

    move v11, v8

    goto :goto_2

    :cond_5
    move v11, v6

    :goto_2
    if-eqz v11, :cond_6

    goto :goto_3

    :cond_6
    move-object v4, v7

    :goto_3
    iget-object v11, v0, Lf0/j;->h:Ljava/util/ArrayList;

    if-eqz v4, :cond_7

    new-instance v12, Lf0/p;

    invoke-direct {v12, v4, v6}, Lf0/p;-><init>(Landroidx/slice/SliceItem;I)V

    iput-object v12, v0, Lf0/j;->g:Lf0/p;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v7, v7, v4}, Ld0/e;->j(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v4

    const-string v12, "action"

    if-eqz v4, :cond_8

    iget-object v13, v4, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-virtual {v4}, Landroidx/slice/SliceItem;->g()Landroidx/slice/Slice;

    move-result-object v13

    invoke-virtual {v13}, Landroidx/slice/Slice;->b()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    if-ne v14, v8, :cond_9

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/slice/SliceItem;

    iget-object v14, v14, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/slice/SliceItem;

    goto :goto_4

    :cond_8
    move-object v4, v7

    :cond_9
    :goto_4
    if-eqz v4, :cond_a

    new-instance v13, Lf0/p;

    const/4 v14, -0x1

    invoke-direct {v13, v4, v14}, Lf0/p;-><init>(Landroidx/slice/SliceItem;I)V

    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroidx/slice/Slice;->b()Ljava/util/List;

    move-result-object v1

    move v4, v6

    :goto_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    if-ge v4, v13, :cond_f

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/slice/SliceItem;

    iget-object v14, v13, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    const-string v15, "ttl"

    const-string v7, "last_updated"

    filled-new-array {v3, v10, v9, v15, v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Landroidx/slice/SliceItem;->h([Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_e

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    :cond_b
    iget-object v7, v0, Lf0/j;->g:Lf0/p;

    const-string v14, "list_item"

    if-nez v7, :cond_c

    invoke-virtual {v13, v14}, Landroidx/slice/SliceItem;->i(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c

    new-instance v7, Lf0/p;

    invoke-direct {v7, v13, v6}, Lf0/p;-><init>(Landroidx/slice/SliceItem;I)V

    iput-object v7, v0, Lf0/j;->g:Lf0/p;

    invoke-virtual {v11, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_6

    :cond_c
    invoke-virtual {v13, v14}, Landroidx/slice/SliceItem;->i(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    const-string v7, "horizontal"

    invoke-virtual {v13, v7}, Landroidx/slice/SliceItem;->i(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    new-instance v7, Lf0/e;

    invoke-direct {v7, v13, v4}, Lf0/e;-><init>(Landroidx/slice/SliceItem;I)V

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_d
    new-instance v7, Lf0/p;

    invoke-direct {v7, v13, v4}, Lf0/p;-><init>(Landroidx/slice/SliceItem;I)V

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_6
    add-int/lit8 v4, v4, 0x1

    const/4 v7, 0x0

    goto :goto_5

    :cond_f
    iget-object v1, v0, Lf0/j;->g:Lf0/p;

    if-nez v1, :cond_10

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v8, :cond_10

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf0/p;

    iput-object v1, v0, Lf0/j;->g:Lf0/p;

    iput-boolean v8, v1, Lf0/p;->o:Z

    :cond_10
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v8

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lf0/e;

    if-eqz v1, :cond_11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v8

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf0/e;

    iput-boolean v8, v1, Lf0/e;->l:Z

    :cond_11
    iget-object v1, v0, Lf0/j;->g:Lf0/p;

    if-eqz v1, :cond_12

    iget-object v1, v1, Lf0/p;->f:Landroidx/slice/SliceItem;

    goto :goto_7

    :cond_12
    const/4 v1, 0x0

    :goto_7
    if-nez v1, :cond_13

    const-string v1, "title"

    filled-new-array {v5, v1}, [Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lf0/G;->a:Landroidx/slice/SliceItem;

    const/4 v3, 0x0

    invoke-static {v2, v12, v1, v3}, Ld0/e;->e(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    goto :goto_8

    :cond_13
    const/4 v3, 0x0

    :goto_8
    if-nez v1, :cond_14

    iget-object v1, v0, Lf0/G;->a:Landroidx/slice/SliceItem;

    invoke-static {v1, v12, v3}, Ld0/e;->d(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    :cond_14
    if-eqz v1, :cond_15

    new-instance v7, Landroidx/slice/core/a;

    invoke-direct {v7, v1}, Landroidx/slice/core/a;-><init>(Landroidx/slice/SliceItem;)V

    goto :goto_9

    :cond_15
    move-object v7, v3

    :goto_9
    iput-object v7, v0, Lf0/j;->f:Landroidx/slice/core/a;

    :goto_a
    return-void
.end method

.method public static d(Lf0/G;ZLjava/util/List;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    instance-of v1, p0, Lf0/e;

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    check-cast p0, Lf0/p;

    iget-object v1, p0, Lf0/p;->f:Landroidx/slice/SliceItem;

    if-eqz v1, :cond_1

    new-instance v2, Landroidx/slice/core/a;

    invoke-direct {v2, v1}, Landroidx/slice/core/a;-><init>(Landroidx/slice/SliceItem;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-object v1, p0, Lf0/p;->m:Landroidx/slice/SliceItem;

    if-eqz v1, :cond_3

    iget-object p0, v1, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    const-string p1, "action"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x4

    goto :goto_1

    :cond_2
    const/4 p0, 0x5

    :goto_1
    return p0

    :cond_3
    iget-object v1, p0, Lf0/p;->n:Landroidx/slice/SliceItem;

    if-eqz v1, :cond_4

    const/4 p0, 0x6

    return p0

    :cond_4
    const/4 v1, 0x3

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroidx/slice/core/a;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    return v1

    :cond_5
    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    move p0, v0

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge p0, p1, :cond_7

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld0/a;

    invoke-interface {p1}, Ld0/a;->b()Z

    move-result p1

    if-eqz p1, :cond_6

    return v1

    :cond_6
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_7
    return v0

    :cond_8
    iget-object p0, p0, Lf0/p;->l:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_9

    move v0, v1

    :cond_9
    return v0
.end method


# virtual methods
.method public final a(Lf0/J;Lf0/O;)I
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p2, Lf0/O;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lf0/j;->g:Lf0/p;

    invoke-virtual {p0, p1, p2}, Lf0/p;->a(Lf0/J;Lf0/O;)I

    move-result p0

    goto :goto_2

    :cond_0
    iget v0, p2, Lf0/O;->a:I

    iget-object v2, p0, Lf0/j;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, p2}, Lf0/J;->a(Ljava/util/List;Lf0/O;)I

    move-result v2

    if-lez v0, :cond_1

    iget-object p0, p0, Lf0/j;->g:Lf0/p;

    invoke-virtual {p0, p1, p2}, Lf0/p;->a(Lf0/J;Lf0/O;)I

    move-result p0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_1
    if-lez v0, :cond_2

    move p0, v0

    goto :goto_0

    :cond_2
    iget p0, p1, Lf0/J;->F:I

    :goto_0
    sub-int p2, v2, p0

    iget v3, p1, Lf0/J;->E:I

    if-lt p2, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    iget-boolean p1, p1, Lf0/J;->G:Z

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    if-gtz v0, :cond_5

    move p0, v2

    goto :goto_2

    :cond_5
    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result p0

    :goto_2
    return p0
.end method

.method public final e(Landroid/content/Context;)Ld0/a;
    .locals 13

    iget-object v0, p0, Lf0/j;->f:Landroidx/slice/core/a;

    if-eqz v0, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v0, p0, Lf0/G;->a:Landroidx/slice/SliceItem;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto/16 :goto_7

    :cond_1
    const-string v2, "shortcut"

    const-string v3, "title"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v4, "action"

    invoke-static {v0, v4, v2, v1}, Ld0/e;->e(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    const-string v2, "text"

    const-string v5, "image"

    if-eqz v0, :cond_2

    invoke-static {v0, v5, v3}, Ld0/e;->d(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v6

    invoke-static {v0, v2, v1}, Ld0/e;->d(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v7

    goto :goto_0

    :cond_2
    move-object v6, v1

    move-object v7, v6

    :goto_0
    if-nez v0, :cond_3

    iget-object v0, p0, Lf0/G;->a:Landroidx/slice/SliceItem;

    invoke-static {v0, v4, v1}, Ld0/e;->d(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    :cond_3
    if-nez v6, :cond_4

    iget-object v4, p0, Lf0/G;->a:Landroidx/slice/SliceItem;

    invoke-static {v4, v5, v3}, Ld0/e;->d(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v6

    :cond_4
    if-nez v7, :cond_5

    iget-object v4, p0, Lf0/G;->a:Landroidx/slice/SliceItem;

    invoke-static {v4, v2, v3}, Ld0/e;->d(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v7

    :cond_5
    if-nez v6, :cond_6

    iget-object v3, p0, Lf0/G;->a:Landroidx/slice/SliceItem;

    invoke-static {v3, v5, v1}, Ld0/e;->d(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v6

    :cond_6
    if-nez v7, :cond_7

    iget-object v3, p0, Lf0/G;->a:Landroidx/slice/SliceItem;

    invoke-static {v3, v2, v1}, Ld0/e;->d(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v7

    :cond_7
    if-eqz v6, :cond_8

    invoke-static {v6}, Landroidx/slice/core/a;->e(Landroidx/slice/SliceItem;)I

    move-result v2

    goto :goto_1

    :cond_8
    const/4 v2, 0x5

    :goto_1
    if-eqz p1, :cond_12

    iget-object p0, p0, Lf0/G;->a:Landroidx/slice/SliceItem;

    const-string v3, "slice"

    invoke-static {p0, v3, v1}, Ld0/e;->d(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object p0

    if-nez p0, :cond_9

    goto/16 :goto_7

    :cond_9
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->g()Landroidx/slice/Slice;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/slice/Slice;->c()Landroid/net/Uri;

    move-result-object p0

    if-eqz v6, :cond_a

    iget-object v3, v6, Landroidx/slice/SliceItem;->d:Ljava/lang/Object;

    check-cast v3, Landroidx/core/graphics/drawable/IconCompat;

    goto :goto_2

    :cond_a
    move-object v3, v1

    :goto_2
    if-eqz v7, :cond_b

    iget-object v4, v7, Landroidx/slice/SliceItem;->d:Ljava/lang/Object;

    check-cast v4, Ljava/lang/CharSequence;

    goto :goto_3

    :cond_b
    move-object v4, v1

    :goto_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v6

    if-eqz v6, :cond_c

    iget-object v6, v6, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_4

    :cond_c
    move-object v6, v1

    :goto_4
    const/high16 v8, 0x4000000

    if-eqz v6, :cond_10

    if-nez v3, :cond_e

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v3, v2, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v9, 0x1

    if-eqz v3, :cond_d

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v3, Landroidx/core/graphics/drawable/IconCompat;->k:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroidx/core/graphics/drawable/IconCompat;

    invoke-direct {v3, v9}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    iput-object v2, v3, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    goto :goto_5

    :cond_d
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v10}, Landroid/graphics/Canvas;->getWidth()I

    move-result v11

    invoke-virtual {v10}, Landroid/graphics/Canvas;->getHeight()I

    move-result v12

    invoke-virtual {v2, v7, v7, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v2, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    sget-object v2, Landroidx/core/graphics/drawable/IconCompat;->k:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/core/graphics/drawable/IconCompat;

    invoke-direct {v2, v9}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    iput-object v3, v2, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    move-object v3, v2

    :goto_5
    const/4 v2, 0x2

    :cond_e
    if-nez v4, :cond_f

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    :cond_f
    if-nez v0, :cond_10

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_10

    new-instance v0, Landroidx/slice/SliceItem;

    invoke-static {p1, v7, v5, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Landroidx/slice/Slice;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-direct {v10, v6, v9, p0, v1}, Landroidx/slice/Slice;-><init>(Ljava/util/ArrayList;[Ljava/lang/String;Landroid/net/Uri;Landroidx/slice/SliceSpec;)V

    new-array p0, v7, [Ljava/lang/String;

    invoke-direct {v0, v5, v10, v1, p0}, Landroidx/slice/SliceItem;-><init>(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_10
    if-nez v0, :cond_11

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    invoke-static {p1, v7, p0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    new-instance v0, Landroidx/slice/SliceItem;

    invoke-direct {v0, p0, v1, v1, v1}, Landroidx/slice/SliceItem;-><init>(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_11
    if-eqz v4, :cond_13

    if-eqz v3, :cond_13

    new-instance p0, Landroidx/slice/core/a;

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->c()Landroid/app/PendingIntent;

    invoke-direct {p0, v3, v2, v4}, Landroidx/slice/core/a;-><init>(Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)V

    goto :goto_6

    :cond_12
    if-eqz v6, :cond_13

    if-eqz v0, :cond_13

    if-eqz v7, :cond_13

    new-instance p0, Landroidx/slice/core/a;

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->c()Landroid/app/PendingIntent;

    iget-object p1, v6, Landroidx/slice/SliceItem;->d:Ljava/lang/Object;

    check-cast p1, Landroidx/core/graphics/drawable/IconCompat;

    iget-object v0, v7, Landroidx/slice/SliceItem;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-direct {p0, p1, v2, v0}, Landroidx/slice/core/a;-><init>(Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)V

    :goto_6
    move-object v0, p0

    goto :goto_8

    :cond_13
    :goto_7
    move-object v0, v1

    :goto_8
    return-object v0
.end method

.method public final f()Z
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

    iget-object p0, p0, Lf0/j;->h:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method
