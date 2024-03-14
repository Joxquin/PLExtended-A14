.class public final Landroidx/recyclerview/widget/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:[I

.field public final c:[I

.field public final d:Landroidx/recyclerview/widget/p;

.field public final e:I

.field public final f:I

.field public final g:Z


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/p;Ljava/util/List;[I[IZ)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/recyclerview/widget/r;->a:Ljava/util/List;

    iput-object p3, p0, Landroidx/recyclerview/widget/r;->b:[I

    iput-object p4, p0, Landroidx/recyclerview/widget/r;->c:[I

    const/4 v0, 0x0

    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([II)V

    invoke-static {p4, v0}, Ljava/util/Arrays;->fill([II)V

    iput-object p1, p0, Landroidx/recyclerview/widget/r;->d:Landroidx/recyclerview/widget/p;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/p;->getOldListSize()I

    move-result p3

    iput p3, p0, Landroidx/recyclerview/widget/r;->e:I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/p;->getNewListSize()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/r;->f:I

    iput-boolean p5, p0, Landroidx/recyclerview/widget/r;->g:Z

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p4, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/recyclerview/widget/q;

    :goto_0
    if-eqz p4, :cond_1

    iget p5, p4, Landroidx/recyclerview/widget/q;->a:I

    if-nez p5, :cond_1

    iget p4, p4, Landroidx/recyclerview/widget/q;->b:I

    if-eqz p4, :cond_2

    :cond_1
    new-instance p4, Landroidx/recyclerview/widget/q;

    invoke-direct {p4, v0, v0, v0}, Landroidx/recyclerview/widget/q;-><init>(III)V

    invoke-virtual {p2, v0, p4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_2
    new-instance p4, Landroidx/recyclerview/widget/q;

    invoke-direct {p4, p3, p1, v0}, Landroidx/recyclerview/widget/q;-><init>(III)V

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    iget-object p4, p0, Landroidx/recyclerview/widget/r;->d:Landroidx/recyclerview/widget/p;

    iget-object p5, p0, Landroidx/recyclerview/widget/r;->c:[I

    iget-object v1, p0, Landroidx/recyclerview/widget/r;->b:[I

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/q;

    move v2, v0

    :goto_1
    iget v3, p3, Landroidx/recyclerview/widget/q;->c:I

    if-ge v2, v3, :cond_3

    iget v3, p3, Landroidx/recyclerview/widget/q;->a:I

    add-int/2addr v3, v2

    iget v4, p3, Landroidx/recyclerview/widget/q;->b:I

    add-int/2addr v4, v2

    invoke-virtual {p4, v3, v4}, Landroidx/recyclerview/widget/p;->areContentsTheSame(II)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x2

    :goto_2
    shl-int/lit8 v6, v4, 0x4

    or-int/2addr v6, v5

    aput v6, v1, v3

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v3, v5

    aput v3, p5, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    iget-boolean p0, p0, Landroidx/recyclerview/widget/r;->g:Z

    if-eqz p0, :cond_b

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move p1, v0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/q;

    :goto_4
    iget v2, p3, Landroidx/recyclerview/widget/q;->a:I

    if-ge p1, v2, :cond_a

    aget v2, v1, p1

    if-nez v2, :cond_9

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v0

    move v4, v3

    :goto_5
    if-ge v3, v2, :cond_9

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/q;

    :goto_6
    iget v6, v5, Landroidx/recyclerview/widget/q;->b:I

    if-ge v4, v6, :cond_8

    aget v6, p5, v4

    if-nez v6, :cond_7

    invoke-virtual {p4, p1, v4}, Landroidx/recyclerview/widget/p;->areItemsTheSame(II)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p4, p1, v4}, Landroidx/recyclerview/widget/p;->areContentsTheSame(II)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x8

    goto :goto_7

    :cond_6
    const/4 v2, 0x4

    :goto_7
    shl-int/lit8 v3, v4, 0x4

    or-int/2addr v3, v2

    aput v3, v1, p1

    shl-int/lit8 v3, p1, 0x4

    or-int/2addr v2, v3

    aput v2, p5, v4

    goto :goto_8

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_8
    iget v4, v5, Landroidx/recyclerview/widget/q;->c:I

    add-int/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_9
    :goto_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_a
    iget p1, p3, Landroidx/recyclerview/widget/q;->c:I

    add-int/2addr p1, v2

    goto :goto_3

    :cond_b
    return-void
.end method

.method public static b(Ljava/util/Collection;IZ)Landroidx/recyclerview/widget/s;
    .locals 2

    check-cast p0, Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/s;

    iget v1, v0, Landroidx/recyclerview/widget/s;->a:I

    if-ne v1, p1, :cond_0

    iget-boolean v1, v0, Landroidx/recyclerview/widget/s;->c:Z

    if-ne v1, p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/s;

    if-eqz p2, :cond_2

    iget v1, p1, Landroidx/recyclerview/widget/s;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Landroidx/recyclerview/widget/s;->b:I

    goto :goto_0

    :cond_2
    iget v1, p1, Landroidx/recyclerview/widget/s;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Landroidx/recyclerview/widget/s;->b:I

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/Z;)V
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Landroidx/recyclerview/widget/c;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/c;-><init>(Landroidx/recyclerview/widget/Z;)V

    instance-of v2, v1, Landroidx/recyclerview/widget/d;

    if-eqz v2, :cond_0

    check-cast v1, Landroidx/recyclerview/widget/d;

    goto :goto_0

    :cond_0
    new-instance v2, Landroidx/recyclerview/widget/d;

    invoke-direct {v2, v1}, Landroidx/recyclerview/widget/d;-><init>(Landroidx/recyclerview/widget/c;)V

    move-object v1, v2

    :goto_0
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iget-object v3, v0, Landroidx/recyclerview/widget/r;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iget v6, v0, Landroidx/recyclerview/widget/r;->e:I

    iget v7, v0, Landroidx/recyclerview/widget/r;->f:I

    move v8, v7

    move v7, v6

    :goto_1
    if-ltz v4, :cond_b

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/recyclerview/widget/q;

    iget v10, v9, Landroidx/recyclerview/widget/q;->a:I

    iget v11, v9, Landroidx/recyclerview/widget/q;->c:I

    add-int/2addr v10, v11

    iget v12, v9, Landroidx/recyclerview/widget/q;->b:I

    add-int v13, v11, v12

    :goto_2
    const/4 v15, 0x0

    iget-object v14, v0, Landroidx/recyclerview/widget/r;->b:[I

    iget-object v5, v0, Landroidx/recyclerview/widget/r;->d:Landroidx/recyclerview/widget/p;

    if-le v7, v10, :cond_4

    add-int/lit8 v7, v7, -0x1

    aget v14, v14, v7

    and-int/lit8 v16, v14, 0xc

    if-eqz v16, :cond_2

    move-object/from16 v16, v3

    shr-int/lit8 v3, v14, 0x4

    invoke-static {v2, v3, v15}, Landroidx/recyclerview/widget/r;->b(Ljava/util/Collection;IZ)Landroidx/recyclerview/widget/s;

    move-result-object v3

    if-eqz v3, :cond_1

    iget v3, v3, Landroidx/recyclerview/widget/s;->b:I

    sub-int v3, v6, v3

    const/4 v15, 0x1

    sub-int/2addr v3, v15

    invoke-virtual {v1, v7, v3}, Landroidx/recyclerview/widget/d;->b(II)V

    and-int/lit8 v14, v14, 0x4

    if-eqz v14, :cond_3

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v15, v5}, Landroidx/recyclerview/widget/d;->d(IILjava/lang/Object;)V

    goto :goto_3

    :cond_1
    const/4 v15, 0x1

    new-instance v3, Landroidx/recyclerview/widget/s;

    sub-int v5, v6, v7

    sub-int/2addr v5, v15

    invoke-direct {v3, v7, v5, v15}, Landroidx/recyclerview/widget/s;-><init>(IIZ)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    move-object/from16 v16, v3

    const/4 v15, 0x1

    invoke-virtual {v1, v7, v15}, Landroidx/recyclerview/widget/d;->a(II)V

    add-int/lit8 v6, v6, -0x1

    :cond_3
    :goto_3
    move-object/from16 v3, v16

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v16, v3

    :goto_4
    if-le v8, v13, :cond_8

    add-int/lit8 v8, v8, -0x1

    iget-object v3, v0, Landroidx/recyclerview/widget/r;->c:[I

    aget v3, v3, v8

    and-int/lit8 v10, v3, 0xc

    if-eqz v10, :cond_6

    shr-int/lit8 v10, v3, 0x4

    const/4 v15, 0x1

    invoke-static {v2, v10, v15}, Landroidx/recyclerview/widget/r;->b(Ljava/util/Collection;IZ)Landroidx/recyclerview/widget/s;

    move-result-object v10

    if-nez v10, :cond_5

    new-instance v3, Landroidx/recyclerview/widget/s;

    sub-int v10, v6, v7

    const/4 v15, 0x0

    invoke-direct {v3, v8, v10, v15}, Landroidx/recyclerview/widget/s;-><init>(IIZ)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    const/4 v15, 0x1

    goto :goto_5

    :cond_5
    const/4 v15, 0x0

    iget v10, v10, Landroidx/recyclerview/widget/s;->b:I

    sub-int v10, v6, v10

    const/4 v15, 0x1

    sub-int/2addr v10, v15

    invoke-virtual {v1, v10, v7}, Landroidx/recyclerview/widget/d;->b(II)V

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_7

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {v1, v7, v15, v3}, Landroidx/recyclerview/widget/d;->d(IILjava/lang/Object;)V

    goto :goto_5

    :cond_6
    const/4 v15, 0x1

    invoke-virtual {v1, v7, v15}, Landroidx/recyclerview/widget/d;->c(II)V

    add-int/lit8 v6, v6, 0x1

    :cond_7
    :goto_5
    const/4 v15, 0x0

    goto :goto_4

    :cond_8
    iget v7, v9, Landroidx/recyclerview/widget/q;->a:I

    move v3, v7

    const/4 v15, 0x0

    :goto_6
    if-ge v15, v11, :cond_a

    aget v8, v14, v3

    and-int/lit8 v8, v8, 0xf

    const/4 v9, 0x2

    if-ne v8, v9, :cond_9

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v1, v3, v9, v8}, Landroidx/recyclerview/widget/d;->d(IILjava/lang/Object;)V

    goto :goto_7

    :cond_9
    const/4 v8, 0x0

    const/4 v9, 0x1

    :goto_7
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    :cond_a
    const/4 v9, 0x1

    add-int/lit8 v4, v4, -0x1

    move v5, v9

    move v8, v12

    move-object/from16 v3, v16

    goto/16 :goto_1

    :cond_b
    invoke-virtual {v1}, Landroidx/recyclerview/widget/d;->e()V

    return-void
.end method
