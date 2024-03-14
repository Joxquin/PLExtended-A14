.class public Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.super Landroidx/recyclerview/widget/l0;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/z0;


# instance fields
.field public a:I

.field public b:[Landroidx/recyclerview/widget/Q0;

.field public c:Landroidx/recyclerview/widget/T;

.field public d:Landroidx/recyclerview/widget/T;

.field public e:I

.field public f:I

.field public final g:Landroidx/recyclerview/widget/I;

.field public h:Z

.field public i:Z

.field public j:Ljava/util/BitSet;

.field public k:I

.field public l:I

.field public final m:Landroidx/recyclerview/widget/O0;

.field public final n:I

.field public o:Z

.field public p:Z

.field public q:Landroidx/recyclerview/widget/P0;

.field public final r:Landroid/graphics/Rect;

.field public final s:Landroidx/recyclerview/widget/K0;

.field public final t:Z

.field public u:[I

.field public final v:Landroidx/recyclerview/widget/J0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    invoke-direct {p0}, Landroidx/recyclerview/widget/l0;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:I

    new-instance v0, Landroidx/recyclerview/widget/O0;

    invoke-direct {v0}, Landroidx/recyclerview/widget/O0;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Landroidx/recyclerview/widget/O0;

    const/4 v2, 0x2

    iput v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroid/graphics/Rect;

    new-instance v2, Landroidx/recyclerview/widget/K0;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/K0;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    iput-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Landroidx/recyclerview/widget/K0;

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Z

    new-instance v3, Landroidx/recyclerview/widget/J0;

    invoke-direct {v3, p0}, Landroidx/recyclerview/widget/J0;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    iput-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Landroidx/recyclerview/widget/J0;

    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/l0;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/k0;

    move-result-object p1

    iget p2, p1, Landroidx/recyclerview/widget/k0;->a:I

    if-eqz p2, :cond_1

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid orientation."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    if-ne p2, p4, :cond_2

    goto :goto_1

    :cond_2
    iput p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Landroidx/recyclerview/widget/T;

    iput-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    iput-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Landroidx/recyclerview/widget/T;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->requestLayout()V

    :goto_1
    iget p2, p1, Landroidx/recyclerview/widget/k0;->b:I

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    if-eq p2, p4, :cond_4

    invoke-virtual {v0}, Landroidx/recyclerview/widget/O0;->a()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->requestLayout()V

    iput p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    new-instance p2, Ljava/util/BitSet;

    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    invoke-direct {p2, p4}, Ljava/util/BitSet;-><init>(I)V

    iput-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:Ljava/util/BitSet;

    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    new-array p2, p2, [Landroidx/recyclerview/widget/Q0;

    iput-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/Q0;

    :goto_2
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    if-ge v1, p2, :cond_3

    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/Q0;

    new-instance p4, Landroidx/recyclerview/widget/Q0;

    invoke-direct {p4, p0, v1}, Landroidx/recyclerview/widget/Q0;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;I)V

    aput-object p4, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->requestLayout()V

    :cond_4
    iget-boolean p1, p1, Landroidx/recyclerview/widget/k0;->c:Z

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/P0;

    if-eqz p2, :cond_5

    iget-boolean p3, p2, Landroidx/recyclerview/widget/P0;->k:Z

    if-eq p3, p1, :cond_5

    iput-boolean p1, p2, Landroidx/recyclerview/widget/P0;->k:Z

    :cond_5
    iput-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->requestLayout()V

    new-instance p1, Landroidx/recyclerview/widget/I;

    invoke-direct {p1}, Landroidx/recyclerview/widget/I;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Landroidx/recyclerview/widget/I;

    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    invoke-static {p0, p1}, Landroidx/recyclerview/widget/T;->a(Landroidx/recyclerview/widget/l0;I)Landroidx/recyclerview/widget/S;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    sub-int/2addr v2, p1

    invoke-static {p0, v2}, Landroidx/recyclerview/widget/T;->a(Landroidx/recyclerview/widget/l0;I)Landroidx/recyclerview/widget/S;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Landroidx/recyclerview/widget/T;

    return-void
.end method

.method public static x(III)I
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return p0

    :cond_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    return p0

    :cond_2
    :goto_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    sub-int/2addr p0, p1

    sub-int/2addr p0, p2

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(I)I
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h()I

    move-result v0

    if-ge p1, v0, :cond_2

    move p1, v2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-boolean p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    if-eq p1, p0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method public final assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/P0;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/l0;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n:I

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/l0;->mIsAttachedToWindow:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h()I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i()I

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Landroidx/recyclerview/widget/O0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/O0;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/l0;->mRequestedSimpleAnimations:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->requestLayout()V

    return v0

    :cond_2
    :goto_1
    return v1
.end method

.method public final c(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/A0;)I
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:Ljava/util/BitSet;

    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v1, v10}, Ljava/util/BitSet;->set(IIZ)V

    iget-object v11, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Landroidx/recyclerview/widget/I;

    iget-boolean v0, v11, Landroidx/recyclerview/widget/I;->i:Z

    if-eqz v0, :cond_1

    iget v0, v8, Landroidx/recyclerview/widget/I;->e:I

    if-ne v0, v10, :cond_0

    const v14, 0x7fffffff

    goto :goto_1

    :cond_0
    const/high16 v14, -0x80000000

    goto :goto_1

    :cond_1
    iget v0, v8, Landroidx/recyclerview/widget/I;->e:I

    if-ne v0, v10, :cond_2

    iget v0, v8, Landroidx/recyclerview/widget/I;->g:I

    iget v1, v8, Landroidx/recyclerview/widget/I;->b:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    iget v0, v8, Landroidx/recyclerview/widget/I;->f:I

    iget v1, v8, Landroidx/recyclerview/widget/I;->b:I

    sub-int/2addr v0, v1

    :goto_0
    move v14, v0

    :goto_1
    iget v0, v8, Landroidx/recyclerview/widget/I;->e:I

    move v1, v9

    :goto_2
    iget v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    if-ge v1, v2, :cond_4

    iget-object v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/Q0;

    aget-object v2, v2, v1

    iget-object v2, v2, Landroidx/recyclerview/widget/Q0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    iget-object v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/Q0;

    aget-object v2, v2, v1

    invoke-virtual {v6, v2, v0, v14}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w(Landroidx/recyclerview/widget/Q0;II)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget-boolean v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    if-eqz v0, :cond_5

    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/T;->f()I

    move-result v0

    goto :goto_4

    :cond_5
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/T;->h()I

    move-result v0

    :goto_4
    move v15, v0

    move v0, v9

    :goto_5
    iget v1, v8, Landroidx/recyclerview/widget/I;->c:I

    if-ltz v1, :cond_6

    invoke-virtual/range {p3 .. p3}, Landroidx/recyclerview/widget/A0;->b()I

    move-result v2

    if-ge v1, v2, :cond_6

    move v1, v10

    goto :goto_6

    :cond_6
    move v1, v9

    :goto_6
    const/4 v2, -0x1

    if-eqz v1, :cond_1e

    iget-boolean v1, v11, Landroidx/recyclerview/widget/I;->i:Z

    if-nez v1, :cond_7

    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1e

    :cond_7
    iget v0, v8, Landroidx/recyclerview/widget/I;->c:I

    const-wide v3, 0x7fffffffffffffffL

    invoke-virtual {v7, v0, v3, v4}, Landroidx/recyclerview/widget/t0;->l(IJ)Landroidx/recyclerview/widget/E0;

    move-result-object v0

    iget-object v5, v0, Landroidx/recyclerview/widget/E0;->itemView:Landroid/view/View;

    iget v0, v8, Landroidx/recyclerview/widget/I;->c:I

    iget v1, v8, Landroidx/recyclerview/widget/I;->d:I

    add-int/2addr v0, v1

    iput v0, v8, Landroidx/recyclerview/widget/I;->c:I

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/L0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/m0;->a()I

    move-result v1

    iget-object v3, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Landroidx/recyclerview/widget/O0;

    iget-object v4, v3, Landroidx/recyclerview/widget/O0;->a:[I

    if-eqz v4, :cond_9

    array-length v12, v4

    if-lt v1, v12, :cond_8

    goto :goto_7

    :cond_8
    aget v4, v4, v1

    goto :goto_8

    :cond_9
    :goto_7
    move v4, v2

    :goto_8
    if-ne v4, v2, :cond_a

    move v12, v10

    goto :goto_9

    :cond_a
    move v12, v9

    :goto_9
    if-eqz v12, :cond_10

    iget v4, v8, Landroidx/recyclerview/widget/I;->e:I

    invoke-virtual {v6, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p(I)Z

    move-result v4

    if-eqz v4, :cond_b

    iget v4, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    sub-int/2addr v4, v10

    move v12, v4

    move v4, v2

    goto :goto_a

    :cond_b
    iget v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    move v12, v9

    move v4, v10

    :goto_a
    iget v13, v8, Landroidx/recyclerview/widget/I;->e:I

    const/16 v17, 0x0

    if-ne v13, v10, :cond_d

    iget-object v13, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v13}, Landroidx/recyclerview/widget/T;->h()I

    move-result v13

    const v9, 0x7fffffff

    :goto_b
    if-eq v12, v2, :cond_f

    iget-object v10, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/Q0;

    aget-object v10, v10, v12

    invoke-virtual {v10, v13}, Landroidx/recyclerview/widget/Q0;->f(I)I

    move-result v7

    if-ge v7, v9, :cond_c

    move v9, v7

    move-object/from16 v17, v10

    :cond_c
    add-int/2addr v12, v4

    move-object/from16 v7, p1

    const/4 v10, 0x1

    goto :goto_b

    :cond_d
    iget-object v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/T;->f()I

    move-result v7

    const/high16 v9, -0x80000000

    :goto_c
    if-eq v12, v2, :cond_f

    iget-object v10, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/Q0;

    aget-object v10, v10, v12

    invoke-virtual {v10, v7}, Landroidx/recyclerview/widget/Q0;->i(I)I

    move-result v13

    if-le v13, v9, :cond_e

    move-object/from16 v17, v10

    move v9, v13

    :cond_e
    add-int/2addr v12, v4

    goto :goto_c

    :cond_f
    move-object/from16 v2, v17

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/O0;->b(I)V

    iget-object v3, v3, Landroidx/recyclerview/widget/O0;->a:[I

    iget v4, v2, Landroidx/recyclerview/widget/Q0;->e:I

    aput v4, v3, v1

    goto :goto_d

    :cond_10
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/Q0;

    aget-object v2, v1, v4

    :goto_d
    move-object v7, v2

    iput-object v7, v0, Landroidx/recyclerview/widget/L0;->e:Landroidx/recyclerview/widget/Q0;

    iget v1, v8, Landroidx/recyclerview/widget/I;->e:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/l0;->addView(Landroid/view/View;)V

    goto :goto_e

    :cond_11
    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/l0;->addView$1(Landroid/view/View;)V

    :goto_e
    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    if-ne v1, v2, :cond_12

    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/l0;->getWidthMode()I

    move-result v3

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v9, 0x0

    invoke-static {v9, v1, v3, v9, v4}, Landroidx/recyclerview/widget/l0;->getChildMeasureSpec(ZIIII)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/l0;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/l0;->getHeightMode()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/l0;->getPaddingTop()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/l0;->getPaddingBottom()I

    move-result v10

    add-int/2addr v10, v9

    iget v9, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v2, v3, v4, v10, v9}, Landroidx/recyclerview/widget/l0;->getChildMeasureSpec(ZIIII)I

    move-result v3

    invoke-virtual {v6, v5, v1, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n(Landroid/view/View;II)V

    goto :goto_f

    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/l0;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/l0;->getWidthMode()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/l0;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/l0;->getPaddingRight()I

    move-result v9

    add-int/2addr v9, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v2, v1, v3, v9, v4}, Landroidx/recyclerview/widget/l0;->getChildMeasureSpec(ZIIII)I

    move-result v1

    iget v3, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/l0;->getHeightMode()I

    move-result v4

    iget v9, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v10, 0x0

    invoke-static {v10, v3, v4, v10, v9}, Landroidx/recyclerview/widget/l0;->getChildMeasureSpec(ZIIII)I

    move-result v3

    invoke-virtual {v6, v5, v1, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n(Landroid/view/View;II)V

    :goto_f
    iget v1, v8, Landroidx/recyclerview/widget/I;->e:I

    if-ne v1, v2, :cond_13

    invoke-virtual {v7, v15}, Landroidx/recyclerview/widget/Q0;->f(I)I

    move-result v1

    iget-object v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/T;->c(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v1

    move v3, v1

    move v9, v2

    goto :goto_10

    :cond_13
    invoke-virtual {v7, v15}, Landroidx/recyclerview/widget/Q0;->i(I)I

    move-result v1

    iget-object v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/T;->c(Landroid/view/View;)I

    move-result v2

    sub-int v2, v1, v2

    move v9, v1

    move v3, v2

    :goto_10
    iget v1, v8, Landroidx/recyclerview/widget/I;->e:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_17

    iget-object v0, v0, Landroidx/recyclerview/widget/L0;->e:Landroidx/recyclerview/widget/Q0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/L0;

    iput-object v0, v1, Landroidx/recyclerview/widget/L0;->e:Landroidx/recyclerview/widget/Q0;

    iget-object v2, v0, Landroidx/recyclerview/widget/Q0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v4, -0x80000000

    iput v4, v0, Landroidx/recyclerview/widget/Q0;->c:I

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v10, 0x1

    if-ne v2, v10, :cond_14

    iput v4, v0, Landroidx/recyclerview/widget/Q0;->b:I

    :cond_14
    invoke-virtual {v1}, Landroidx/recyclerview/widget/m0;->c()Z

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual {v1}, Landroidx/recyclerview/widget/m0;->b()Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_15
    iget v1, v0, Landroidx/recyclerview/widget/Q0;->d:I

    iget-object v2, v0, Landroidx/recyclerview/widget/Q0;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/T;->c(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v1

    iput v2, v0, Landroidx/recyclerview/widget/Q0;->d:I

    :cond_16
    const/high16 v10, -0x80000000

    goto :goto_11

    :cond_17
    iget-object v0, v0, Landroidx/recyclerview/widget/L0;->e:Landroidx/recyclerview/widget/Q0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/L0;

    iput-object v0, v1, Landroidx/recyclerview/widget/L0;->e:Landroidx/recyclerview/widget/Q0;

    iget-object v2, v0, Landroidx/recyclerview/widget/Q0;->a:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/high16 v10, -0x80000000

    iput v10, v0, Landroidx/recyclerview/widget/Q0;->b:I

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_18

    iput v10, v0, Landroidx/recyclerview/widget/Q0;->c:I

    :cond_18
    invoke-virtual {v1}, Landroidx/recyclerview/widget/m0;->c()Z

    move-result v2

    if-nez v2, :cond_19

    invoke-virtual {v1}, Landroidx/recyclerview/widget/m0;->b()Z

    move-result v1

    if-eqz v1, :cond_1a

    :cond_19
    iget v1, v0, Landroidx/recyclerview/widget/Q0;->d:I

    iget-object v2, v0, Landroidx/recyclerview/widget/Q0;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/T;->c(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v1

    iput v2, v0, Landroidx/recyclerview/widget/Q0;->d:I

    :cond_1a
    :goto_11
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Landroidx/recyclerview/widget/T;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/T;->f()I

    move-result v0

    iget v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    sub-int/2addr v2, v1

    iget v1, v7, Landroidx/recyclerview/widget/Q0;->e:I

    sub-int/2addr v2, v1

    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    mul-int/2addr v2, v1

    sub-int/2addr v0, v2

    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Landroidx/recyclerview/widget/T;

    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/T;->c(Landroid/view/View;)I

    move-result v1

    sub-int v1, v0, v1

    goto :goto_12

    :cond_1b
    iget v0, v7, Landroidx/recyclerview/widget/Q0;->e:I

    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    mul-int/2addr v0, v1

    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Landroidx/recyclerview/widget/T;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/T;->h()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Landroidx/recyclerview/widget/T;

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/T;->c(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v1

    :goto_12
    move v12, v0

    move v4, v1

    iget v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    const/4 v13, 0x1

    if-ne v0, v13, :cond_1c

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move v4, v12

    move-object/from16 v16, v5

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/l0;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    goto :goto_13

    :cond_1c
    move-object/from16 v16, v5

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move v2, v3

    move v3, v4

    move v4, v9

    move v5, v12

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/l0;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    :goto_13
    iget v0, v11, Landroidx/recyclerview/widget/I;->e:I

    invoke-virtual {v6, v7, v0, v14}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w(Landroidx/recyclerview/widget/Q0;II)V

    move-object/from16 v1, p1

    invoke-virtual {v6, v1, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/I;)V

    iget-boolean v0, v11, Landroidx/recyclerview/widget/I;->h:Z

    if-eqz v0, :cond_1d

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->hasFocusable()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:Ljava/util/BitSet;

    iget v2, v7, Landroidx/recyclerview/widget/Q0;->e:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_14

    :cond_1d
    const/4 v3, 0x0

    :goto_14
    move-object v7, v1

    move v9, v3

    move v0, v13

    move v10, v0

    goto/16 :goto_5

    :cond_1e
    move-object v1, v7

    move v3, v9

    if-nez v0, :cond_1f

    invoke-virtual {v6, v1, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/I;)V

    :cond_1f
    iget v0, v11, Landroidx/recyclerview/widget/I;->e:I

    if-ne v0, v2, :cond_20

    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/T;->h()I

    move-result v0

    invoke-virtual {v6, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k(I)I

    move-result v0

    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/T;->h()I

    move-result v1

    sub-int/2addr v1, v0

    goto :goto_15

    :cond_20
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/T;->f()I

    move-result v0

    invoke-virtual {v6, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j(I)I

    move-result v0

    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/T;->f()I

    move-result v1

    sub-int v1, v0, v1

    :goto_15
    if-lez v1, :cond_21

    iget v0, v8, Landroidx/recyclerview/widget/I;->b:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto :goto_16

    :cond_21
    move v9, v3

    :goto_16
    return v9
.end method

.method public final canScrollHorizontally()Z
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final canScrollVertically()Z
    .locals 1

    iget p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final checkLayoutParams(Landroidx/recyclerview/widget/m0;)Z
    .locals 0

    instance-of p0, p1, Landroidx/recyclerview/widget/L0;

    return p0
.end method

.method public final collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/A0;Landroidx/recyclerview/widget/C;)V
    .locals 4

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result p2

    if-eqz p2, :cond_8

    if-nez p1, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-virtual {p0, p1, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q(ILandroidx/recyclerview/widget/A0;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:[I

    if-eqz p1, :cond_2

    array-length p1, p1

    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    if-ge p1, p2, :cond_3

    :cond_2
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:[I

    :cond_3
    const/4 p1, 0x0

    move p2, p1

    move v0, p2

    :goto_1
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Landroidx/recyclerview/widget/I;

    if-ge p2, v1, :cond_6

    iget v1, v2, Landroidx/recyclerview/widget/I;->d:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_4

    iget v1, v2, Landroidx/recyclerview/widget/I;->f:I

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/Q0;

    aget-object v2, v2, p2

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/Q0;->i(I)I

    move-result v2

    goto :goto_2

    :cond_4
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/Q0;

    aget-object v1, v1, p2

    iget v3, v2, Landroidx/recyclerview/widget/I;->g:I

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/Q0;->f(I)I

    move-result v1

    iget v2, v2, Landroidx/recyclerview/widget/I;->g:I

    :goto_2
    sub-int/2addr v1, v2

    if-ltz v1, :cond_5

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_6
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:[I

    invoke-static {p2, p1, v0}, Ljava/util/Arrays;->sort([III)V

    move p2, p1

    :goto_3
    if-ge p2, v0, :cond_8

    iget v1, v2, Landroidx/recyclerview/widget/I;->c:I

    if-ltz v1, :cond_7

    invoke-virtual {p3}, Landroidx/recyclerview/widget/A0;->b()I

    move-result v3

    if-ge v1, v3, :cond_7

    const/4 v1, 0x1

    goto :goto_4

    :cond_7
    move v1, p1

    :goto_4
    if-eqz v1, :cond_8

    iget v1, v2, Landroidx/recyclerview/widget/I;->c:I

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:[I

    aget v3, v3, p2

    invoke-virtual {p4, v1, v3}, Landroidx/recyclerview/widget/C;->a(II)V

    iget v1, v2, Landroidx/recyclerview/widget/I;->c:I

    iget v3, v2, Landroidx/recyclerview/widget/I;->d:I

    add-int/2addr v1, v3

    iput v1, v2, Landroidx/recyclerview/widget/I;->c:I

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_8
    :goto_5
    return-void
.end method

.method public final computeHorizontalScrollExtent(Landroidx/recyclerview/widget/A0;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollExtent(Landroidx/recyclerview/widget/A0;)I

    move-result p0

    return p0
.end method

.method public final computeHorizontalScrollOffset(Landroidx/recyclerview/widget/A0;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollOffset(Landroidx/recyclerview/widget/A0;)I

    move-result p0

    return p0
.end method

.method public final computeHorizontalScrollRange(Landroidx/recyclerview/widget/A0;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollRange(Landroidx/recyclerview/widget/A0;)I

    move-result p0

    return p0
.end method

.method public final computeScrollExtent(Landroidx/recyclerview/widget/A0;)I
    .locals 6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Z

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e(Z)Landroid/view/View;

    move-result-object v2

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroidx/recyclerview/widget/H0;->a(Landroidx/recyclerview/widget/A0;Landroidx/recyclerview/widget/T;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/l0;Z)I

    move-result p0

    return p0
.end method

.method public final computeScrollOffset(Landroidx/recyclerview/widget/A0;)I
    .locals 7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Z

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e(Z)Landroid/view/View;

    move-result-object v2

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Z

    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Landroidx/recyclerview/widget/H0;->b(Landroidx/recyclerview/widget/A0;Landroidx/recyclerview/widget/T;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/l0;ZZ)I

    move-result p0

    return p0
.end method

.method public final computeScrollRange(Landroidx/recyclerview/widget/A0;)I
    .locals 6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Z

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e(Z)Landroid/view/View;

    move-result-object v2

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroidx/recyclerview/widget/H0;->c(Landroidx/recyclerview/widget/A0;Landroidx/recyclerview/widget/T;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/l0;Z)I

    move-result p0

    return p0
.end method

.method public final computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(I)I

    move-result p1

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    const/4 v1, 0x0

    if-nez p0, :cond_1

    int-to-float p0, p1

    iput p0, v0, Landroid/graphics/PointF;->x:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_1
    iput v1, v0, Landroid/graphics/PointF;->x:F

    int-to-float p0, p1

    iput p0, v0, Landroid/graphics/PointF;->y:F

    :goto_0
    return-object v0
.end method

.method public final computeVerticalScrollExtent(Landroidx/recyclerview/widget/A0;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollExtent(Landroidx/recyclerview/widget/A0;)I

    move-result p0

    return p0
.end method

.method public final computeVerticalScrollOffset(Landroidx/recyclerview/widget/A0;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollOffset(Landroidx/recyclerview/widget/A0;)I

    move-result p0

    return p0
.end method

.method public final computeVerticalScrollRange(Landroidx/recyclerview/widget/A0;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollRange(Landroidx/recyclerview/widget/A0;)I

    move-result p0

    return p0
.end method

.method public final d(Z)Landroid/view/View;
    .locals 7

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/T;->h()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/T;->f()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ltz v2, :cond_4

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/l0;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/T;->d(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v6, v4}, Landroidx/recyclerview/widget/T;->b(Landroid/view/View;)I

    move-result v6

    if-le v6, v0, :cond_3

    if-lt v5, v1, :cond_0

    goto :goto_2

    :cond_0
    if-le v6, v1, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    if-nez v3, :cond_3

    move-object v3, v4

    goto :goto_2

    :cond_2
    :goto_1
    return-object v4

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    return-object v3
.end method

.method public final e(Z)Landroid/view/View;
    .locals 8

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/T;->h()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/T;->f()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/l0;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/T;->d(Landroid/view/View;)I

    move-result v6

    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v7, v5}, Landroidx/recyclerview/widget/T;->b(Landroid/view/View;)I

    move-result v7

    if-le v7, v0, :cond_3

    if-lt v6, v1, :cond_0

    goto :goto_2

    :cond_0
    if-ge v6, v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    if-nez v3, :cond_3

    move-object v3, v5

    goto :goto_2

    :cond_2
    :goto_1
    return-object v5

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v3
.end method

.method public final f(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;Z)V
    .locals 2

    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/T;->f()I

    move-result v0

    sub-int/2addr v0, v1

    if-lez v0, :cond_1

    neg-int v1, v0

    invoke-virtual {p0, v1, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I

    move-result p1

    neg-int p1, p1

    sub-int/2addr v0, p1

    if-eqz p3, :cond_1

    if-lez v0, :cond_1

    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/T;->m(I)V

    :cond_1
    return-void
.end method

.method public final g(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;Z)V
    .locals 2

    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/T;->h()I

    move-result v0

    sub-int/2addr v1, v0

    if-lez v1, :cond_1

    invoke-virtual {p0, v1, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I

    move-result p1

    sub-int/2addr v1, p1

    if-eqz p3, :cond_1

    if-lez v1, :cond_1

    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    neg-int p1, v1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/T;->m(I)V

    :cond_1
    return-void
.end method

.method public final generateDefaultLayoutParams()Landroidx/recyclerview/widget/m0;
    .locals 2

    iget p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    const/4 v0, -0x2

    const/4 v1, -0x1

    if-nez p0, :cond_0

    new-instance p0, Landroidx/recyclerview/widget/L0;

    invoke-direct {p0, v0, v1}, Landroidx/recyclerview/widget/L0;-><init>(II)V

    return-object p0

    :cond_0
    new-instance p0, Landroidx/recyclerview/widget/L0;

    invoke-direct {p0, v1, v0}, Landroidx/recyclerview/widget/L0;-><init>(II)V

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/m0;
    .locals 0

    .line 1
    new-instance p0, Landroidx/recyclerview/widget/L0;

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/L0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/m0;
    .locals 0

    .line 2
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_0

    .line 3
    new-instance p0, Landroidx/recyclerview/widget/L0;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/L0;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Landroidx/recyclerview/widget/L0;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/L0;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public final getColumnCountForAccessibility(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I
    .locals 1

    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    invoke-virtual {p2}, Landroidx/recyclerview/widget/A0;->b()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final getRowCountForAccessibility(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I
    .locals 0

    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    if-nez p1, :cond_0

    iget p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    invoke-virtual {p2}, Landroidx/recyclerview/widget/A0;->b()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final h()I
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/l0;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Landroidx/recyclerview/widget/l0;->getPosition(Landroid/view/View;)I

    move-result v1

    :goto_0
    return v1
.end method

.method public final i()I
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/l0;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Landroidx/recyclerview/widget/l0;->getPosition(Landroid/view/View;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final isAutoMeasureEnabled()Z
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isLayoutRTL()Z
    .locals 1

    iget-object p0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v0, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/y;->c(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isLayoutReversed()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    return p0
.end method

.method public final j(I)I
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/Q0;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/Q0;->f(I)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/Q0;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/Q0;->f(I)I

    move-result v2

    if-le v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final k(I)I
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/Q0;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/Q0;->i(I)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/Q0;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/Q0;->i(I)I

    move-result v2

    if-ge v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final l(III)V
    .locals 7

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h()I

    move-result v0

    :goto_0
    const/16 v1, 0x8

    if-ne p3, v1, :cond_2

    if-ge p1, p2, :cond_1

    add-int/lit8 v2, p2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, p1, 0x1

    move v3, p2

    goto :goto_2

    :cond_2
    add-int v2, p1, p2

    :goto_1
    move v3, p1

    :goto_2
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Landroidx/recyclerview/widget/O0;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/O0;->c(I)I

    const/4 v5, 0x1

    if-eq p3, v5, :cond_5

    const/4 v6, 0x2

    if-eq p3, v6, :cond_4

    if-eq p3, v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v4, p1, v5}, Landroidx/recyclerview/widget/O0;->e(II)V

    invoke-virtual {v4, p2, v5}, Landroidx/recyclerview/widget/O0;->d(II)V

    goto :goto_3

    :cond_4
    invoke-virtual {v4, p1, p2}, Landroidx/recyclerview/widget/O0;->e(II)V

    goto :goto_3

    :cond_5
    invoke-virtual {v4, p1, p2}, Landroidx/recyclerview/widget/O0;->d(II)V

    :goto_3
    if-gt v2, v0, :cond_6

    return-void

    :cond_6
    iget-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h()I

    move-result p1

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i()I

    move-result p1

    :goto_4
    if-gt v3, p1, :cond_8

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->requestLayout()V

    :cond_8
    return-void
.end method

.method public final m()Landroid/view/View;
    .locals 13

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    new-instance v2, Ljava/util/BitSet;

    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3, v1}, Ljava/util/BitSet;->set(IIZ)V

    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    const/4 v5, -0x1

    if-ne v3, v1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    if-eqz v6, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v6, v0

    move v0, v4

    :goto_1
    if-ge v0, v6, :cond_2

    move v5, v1

    :cond_2
    if-eq v0, v6, :cond_f

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/l0;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/L0;

    iget-object v9, v8, Landroidx/recyclerview/widget/L0;->e:Landroidx/recyclerview/widget/Q0;

    iget v9, v9, Landroidx/recyclerview/widget/Q0;->e:I

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, v8, Landroidx/recyclerview/widget/L0;->e:Landroidx/recyclerview/widget/Q0;

    iget-boolean v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    const/high16 v11, -0x80000000

    if-eqz v10, :cond_4

    iget v10, v9, Landroidx/recyclerview/widget/Q0;->c:I

    if-eq v10, v11, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v9}, Landroidx/recyclerview/widget/Q0;->a()V

    iget v10, v9, Landroidx/recyclerview/widget/Q0;->c:I

    :goto_2
    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/T;->f()I

    move-result v11

    if-ge v10, v11, :cond_6

    iget-object v9, v9, Landroidx/recyclerview/widget/Q0;->a:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-static {v9}, Landroidx/recyclerview/widget/Q0;->h(Landroid/view/View;)Landroidx/recyclerview/widget/L0;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_4

    :cond_4
    iget v10, v9, Landroidx/recyclerview/widget/Q0;->b:I

    if-eq v10, v11, :cond_5

    goto :goto_3

    :cond_5
    iget-object v10, v9, Landroidx/recyclerview/widget/Q0;->a:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-static {v10}, Landroidx/recyclerview/widget/Q0;->h(Landroid/view/View;)Landroidx/recyclerview/widget/L0;

    move-result-object v11

    iget-object v12, v9, Landroidx/recyclerview/widget/Q0;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v12, v12, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v12, v10}, Landroidx/recyclerview/widget/T;->d(Landroid/view/View;)I

    move-result v10

    iput v10, v9, Landroidx/recyclerview/widget/Q0;->b:I

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v10, v9, Landroidx/recyclerview/widget/Q0;->b:I

    :goto_3
    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/T;->h()I

    move-result v11

    if-le v10, v11, :cond_6

    iget-object v9, v9, Landroidx/recyclerview/widget/Q0;->a:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-static {v9}, Landroidx/recyclerview/widget/Q0;->h(Landroid/view/View;)Landroidx/recyclerview/widget/L0;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_4
    move v9, v1

    goto :goto_5

    :cond_6
    move v9, v4

    :goto_5
    if-eqz v9, :cond_7

    return-object v7

    :cond_7
    iget-object v9, v8, Landroidx/recyclerview/widget/L0;->e:Landroidx/recyclerview/widget/Q0;

    iget v9, v9, Landroidx/recyclerview/widget/Q0;->e:I

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->clear(I)V

    :cond_8
    add-int/2addr v0, v5

    if-eq v0, v6, :cond_2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/l0;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    iget-boolean v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    if-eqz v10, :cond_a

    iget-object v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v10, v7}, Landroidx/recyclerview/widget/T;->b(Landroid/view/View;)I

    move-result v10

    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v11, v9}, Landroidx/recyclerview/widget/T;->b(Landroid/view/View;)I

    move-result v11

    if-ge v10, v11, :cond_9

    return-object v7

    :cond_9
    if-ne v10, v11, :cond_c

    goto :goto_6

    :cond_a
    iget-object v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v10, v7}, Landroidx/recyclerview/widget/T;->d(Landroid/view/View;)I

    move-result v10

    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v11, v9}, Landroidx/recyclerview/widget/T;->d(Landroid/view/View;)I

    move-result v11

    if-le v10, v11, :cond_b

    return-object v7

    :cond_b
    if-ne v10, v11, :cond_c

    :goto_6
    move v10, v1

    goto :goto_7

    :cond_c
    move v10, v4

    :goto_7
    if-eqz v10, :cond_2

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/recyclerview/widget/L0;

    iget-object v8, v8, Landroidx/recyclerview/widget/L0;->e:Landroidx/recyclerview/widget/Q0;

    iget v8, v8, Landroidx/recyclerview/widget/Q0;->e:I

    iget-object v9, v9, Landroidx/recyclerview/widget/L0;->e:Landroidx/recyclerview/widget/Q0;

    iget v9, v9, Landroidx/recyclerview/widget/Q0;->e:I

    sub-int/2addr v8, v9

    if-gez v8, :cond_d

    move v8, v1

    goto :goto_8

    :cond_d
    move v8, v4

    :goto_8
    if-gez v3, :cond_e

    move v9, v1

    goto :goto_9

    :cond_e
    move v9, v4

    :goto_9
    if-eq v8, v9, :cond_2

    return-object v7

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public final n(Landroid/view/View;II)V
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/L0;

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    invoke-static {p2, v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x(III)I

    move-result p2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v1

    invoke-static {p3, v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x(III)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/l0;->shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/m0;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_1
    return-void
.end method

.method public final o(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/P0;

    const/4 v4, -0x1

    iget-object v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Landroidx/recyclerview/widget/K0;

    if-nez v3, :cond_0

    iget v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    if-eq v3, v4, :cond_1

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/A0;->b()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/l0;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/t0;)V

    invoke-virtual {v5}, Landroidx/recyclerview/widget/K0;->a()V

    return-void

    :cond_1
    iget-boolean v3, v5, Landroidx/recyclerview/widget/K0;->e:Z

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_3

    iget v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    if-ne v3, v4, :cond_3

    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/P0;

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, v6

    goto :goto_1

    :cond_3
    :goto_0
    move v3, v7

    :goto_1
    iget-object v8, v5, Landroidx/recyclerview/widget/K0;->g:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Landroidx/recyclerview/widget/O0;

    const/high16 v10, -0x80000000

    if-eqz v3, :cond_23

    invoke-virtual {v5}, Landroidx/recyclerview/widget/K0;->a()V

    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/P0;

    if-eqz v11, :cond_a

    iget v12, v11, Landroidx/recyclerview/widget/P0;->f:I

    const/4 v13, 0x0

    if-lez v12, :cond_7

    iget v14, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    if-ne v12, v14, :cond_6

    move v11, v6

    :goto_2
    iget v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    if-ge v11, v12, :cond_7

    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/Q0;

    aget-object v12, v12, v11

    invoke-virtual {v12}, Landroidx/recyclerview/widget/Q0;->b()V

    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/P0;

    iget-object v14, v12, Landroidx/recyclerview/widget/P0;->g:[I

    aget v14, v14, v11

    if-eq v14, v10, :cond_5

    iget-boolean v12, v12, Landroidx/recyclerview/widget/P0;->l:Z

    if-eqz v12, :cond_4

    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/T;->f()I

    move-result v12

    goto :goto_3

    :cond_4
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/T;->h()I

    move-result v12

    :goto_3
    add-int/2addr v14, v12

    :cond_5
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/Q0;

    aget-object v12, v12, v11

    iput v14, v12, Landroidx/recyclerview/widget/Q0;->b:I

    iput v14, v12, Landroidx/recyclerview/widget/Q0;->c:I

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_6
    iput-object v13, v11, Landroidx/recyclerview/widget/P0;->g:[I

    iput v6, v11, Landroidx/recyclerview/widget/P0;->f:I

    iput v6, v11, Landroidx/recyclerview/widget/P0;->h:I

    iput-object v13, v11, Landroidx/recyclerview/widget/P0;->i:[I

    iput-object v13, v11, Landroidx/recyclerview/widget/P0;->j:Ljava/util/List;

    iget v12, v11, Landroidx/recyclerview/widget/P0;->e:I

    iput v12, v11, Landroidx/recyclerview/widget/P0;->d:I

    :cond_7
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/P0;

    iget-boolean v12, v11, Landroidx/recyclerview/widget/P0;->m:Z

    iput-boolean v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:Z

    iget-boolean v11, v11, Landroidx/recyclerview/widget/P0;->k:Z

    invoke-virtual {v0, v13}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/P0;

    if-eqz v12, :cond_8

    iget-boolean v13, v12, Landroidx/recyclerview/widget/P0;->k:Z

    if-eq v13, v11, :cond_8

    iput-boolean v11, v12, Landroidx/recyclerview/widget/P0;->k:Z

    :cond_8
    iput-boolean v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/l0;->requestLayout()V

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/P0;

    iget v12, v11, Landroidx/recyclerview/widget/P0;->d:I

    if-eq v12, v4, :cond_9

    iput v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    iget-boolean v12, v11, Landroidx/recyclerview/widget/P0;->l:Z

    iput-boolean v12, v5, Landroidx/recyclerview/widget/K0;->c:Z

    goto :goto_4

    :cond_9
    iget-boolean v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    iput-boolean v12, v5, Landroidx/recyclerview/widget/K0;->c:Z

    :goto_4
    iget v12, v11, Landroidx/recyclerview/widget/P0;->h:I

    if-le v12, v7, :cond_b

    iget-object v12, v11, Landroidx/recyclerview/widget/P0;->i:[I

    iput-object v12, v9, Landroidx/recyclerview/widget/O0;->a:[I

    iget-object v11, v11, Landroidx/recyclerview/widget/P0;->j:Ljava/util/List;

    iput-object v11, v9, Landroidx/recyclerview/widget/O0;->b:Ljava/util/List;

    goto :goto_5

    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    iget-boolean v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    iput-boolean v11, v5, Landroidx/recyclerview/widget/K0;->c:Z

    :cond_b
    :goto_5
    iget-boolean v11, v2, Landroidx/recyclerview/widget/A0;->g:Z

    if-nez v11, :cond_1d

    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    if-ne v11, v4, :cond_c

    goto/16 :goto_e

    :cond_c
    if-ltz v11, :cond_1c

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/A0;->b()I

    move-result v12

    if-lt v11, v12, :cond_d

    goto/16 :goto_d

    :cond_d
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/P0;

    if-eqz v11, :cond_f

    iget v12, v11, Landroidx/recyclerview/widget/P0;->d:I

    if-eq v12, v4, :cond_f

    iget v11, v11, Landroidx/recyclerview/widget/P0;->f:I

    if-ge v11, v7, :cond_e

    goto :goto_6

    :cond_e
    iput v10, v5, Landroidx/recyclerview/widget/K0;->b:I

    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    iput v11, v5, Landroidx/recyclerview/widget/K0;->a:I

    goto/16 :goto_c

    :cond_f
    :goto_6
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/l0;->findViewByPosition(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_17

    iget-boolean v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    if-eqz v12, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i()I

    move-result v12

    goto :goto_7

    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h()I

    move-result v12

    :goto_7
    iput v12, v5, Landroidx/recyclerview/widget/K0;->a:I

    iget v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:I

    if-eq v12, v10, :cond_12

    iget-boolean v12, v5, Landroidx/recyclerview/widget/K0;->c:Z

    if-eqz v12, :cond_11

    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/T;->f()I

    move-result v12

    iget v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:I

    sub-int/2addr v12, v13

    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v13, v11}, Landroidx/recyclerview/widget/T;->b(Landroid/view/View;)I

    move-result v11

    sub-int/2addr v12, v11

    iput v12, v5, Landroidx/recyclerview/widget/K0;->b:I

    goto/16 :goto_c

    :cond_11
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/T;->h()I

    move-result v12

    iget v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:I

    add-int/2addr v12, v13

    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v13, v11}, Landroidx/recyclerview/widget/T;->d(Landroid/view/View;)I

    move-result v11

    sub-int/2addr v12, v11

    iput v12, v5, Landroidx/recyclerview/widget/K0;->b:I

    goto/16 :goto_c

    :cond_12
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v12, v11}, Landroidx/recyclerview/widget/T;->c(Landroid/view/View;)I

    move-result v12

    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v13}, Landroidx/recyclerview/widget/T;->i()I

    move-result v13

    if-le v12, v13, :cond_14

    iget-boolean v11, v5, Landroidx/recyclerview/widget/K0;->c:Z

    if-eqz v11, :cond_13

    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/T;->f()I

    move-result v11

    goto :goto_8

    :cond_13
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/T;->h()I

    move-result v11

    :goto_8
    iput v11, v5, Landroidx/recyclerview/widget/K0;->b:I

    goto/16 :goto_c

    :cond_14
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v12, v11}, Landroidx/recyclerview/widget/T;->d(Landroid/view/View;)I

    move-result v12

    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v13}, Landroidx/recyclerview/widget/T;->h()I

    move-result v13

    sub-int/2addr v12, v13

    if-gez v12, :cond_15

    neg-int v11, v12

    iput v11, v5, Landroidx/recyclerview/widget/K0;->b:I

    goto :goto_c

    :cond_15
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/T;->f()I

    move-result v12

    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v13, v11}, Landroidx/recyclerview/widget/T;->b(Landroid/view/View;)I

    move-result v11

    sub-int/2addr v12, v11

    if-gez v12, :cond_16

    iput v12, v5, Landroidx/recyclerview/widget/K0;->b:I

    goto :goto_c

    :cond_16
    iput v10, v5, Landroidx/recyclerview/widget/K0;->b:I

    goto :goto_c

    :cond_17
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    iput v11, v5, Landroidx/recyclerview/widget/K0;->a:I

    iget v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:I

    if-ne v12, v10, :cond_1a

    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(I)I

    move-result v11

    if-ne v11, v7, :cond_18

    move v11, v7

    goto :goto_9

    :cond_18
    move v11, v6

    :goto_9
    iput-boolean v11, v5, Landroidx/recyclerview/widget/K0;->c:Z

    if-eqz v11, :cond_19

    iget-object v11, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/T;->f()I

    move-result v11

    goto :goto_a

    :cond_19
    iget-object v11, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/T;->h()I

    move-result v11

    :goto_a
    iput v11, v5, Landroidx/recyclerview/widget/K0;->b:I

    goto :goto_b

    :cond_1a
    iget-boolean v11, v5, Landroidx/recyclerview/widget/K0;->c:Z

    if-eqz v11, :cond_1b

    iget-object v11, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/T;->f()I

    move-result v11

    sub-int/2addr v11, v12

    iput v11, v5, Landroidx/recyclerview/widget/K0;->b:I

    goto :goto_b

    :cond_1b
    iget-object v11, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/T;->h()I

    move-result v11

    add-int/2addr v11, v12

    iput v11, v5, Landroidx/recyclerview/widget/K0;->b:I

    :goto_b
    iput-boolean v7, v5, Landroidx/recyclerview/widget/K0;->d:Z

    :goto_c
    move v11, v7

    goto :goto_f

    :cond_1c
    :goto_d
    iput v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    iput v10, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:I

    :cond_1d
    :goto_e
    move v11, v6

    :goto_f
    if-eqz v11, :cond_1e

    goto :goto_12

    :cond_1e
    iget-boolean v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    if-eqz v11, :cond_20

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/A0;->b()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v12

    :cond_1f
    add-int/2addr v12, v4

    if-ltz v12, :cond_22

    invoke-virtual {v0, v12}, Landroidx/recyclerview/widget/l0;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-static {v13}, Landroidx/recyclerview/widget/l0;->getPosition(Landroid/view/View;)I

    move-result v13

    if-ltz v13, :cond_1f

    if-ge v13, v11, :cond_1f

    goto :goto_11

    :cond_20
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/A0;->b()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v12

    move v13, v6

    :goto_10
    if-ge v13, v12, :cond_22

    invoke-virtual {v0, v13}, Landroidx/recyclerview/widget/l0;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-static {v14}, Landroidx/recyclerview/widget/l0;->getPosition(Landroid/view/View;)I

    move-result v14

    if-ltz v14, :cond_21

    if-ge v14, v11, :cond_21

    move v13, v14

    goto :goto_11

    :cond_21
    add-int/lit8 v13, v13, 0x1

    goto :goto_10

    :cond_22
    move v13, v6

    :goto_11
    iput v13, v5, Landroidx/recyclerview/widget/K0;->a:I

    iput v10, v5, Landroidx/recyclerview/widget/K0;->b:I

    :goto_12
    iput-boolean v7, v5, Landroidx/recyclerview/widget/K0;->e:Z

    :cond_23
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/P0;

    if-nez v11, :cond_25

    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    if-ne v11, v4, :cond_25

    iget-boolean v11, v5, Landroidx/recyclerview/widget/K0;->c:Z

    iget-boolean v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    if-ne v11, v12, :cond_24

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v11

    iget-boolean v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:Z

    if-eq v11, v12, :cond_25

    :cond_24
    invoke-virtual {v9}, Landroidx/recyclerview/widget/O0;->a()V

    iput-boolean v7, v5, Landroidx/recyclerview/widget/K0;->d:Z

    :cond_25
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v9

    if-lez v9, :cond_34

    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/P0;

    if-eqz v9, :cond_26

    iget v9, v9, Landroidx/recyclerview/widget/P0;->f:I

    if-ge v9, v7, :cond_34

    :cond_26
    iget-boolean v9, v5, Landroidx/recyclerview/widget/K0;->d:Z

    if-eqz v9, :cond_28

    move v3, v6

    :goto_13
    iget v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    if-ge v3, v8, :cond_34

    iget-object v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/Q0;

    aget-object v8, v8, v3

    invoke-virtual {v8}, Landroidx/recyclerview/widget/Q0;->b()V

    iget v8, v5, Landroidx/recyclerview/widget/K0;->b:I

    if-eq v8, v10, :cond_27

    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/Q0;

    aget-object v9, v9, v3

    iput v8, v9, Landroidx/recyclerview/widget/Q0;->b:I

    iput v8, v9, Landroidx/recyclerview/widget/Q0;->c:I

    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_28
    if-nez v3, :cond_2a

    iget-object v3, v5, Landroidx/recyclerview/widget/K0;->f:[I

    if-nez v3, :cond_29

    goto :goto_15

    :cond_29
    move v3, v6

    :goto_14
    iget v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    if-ge v3, v8, :cond_34

    iget-object v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/Q0;

    aget-object v8, v8, v3

    invoke-virtual {v8}, Landroidx/recyclerview/widget/Q0;->b()V

    iget-object v9, v5, Landroidx/recyclerview/widget/K0;->f:[I

    aget v9, v9, v3

    iput v9, v8, Landroidx/recyclerview/widget/Q0;->b:I

    iput v9, v8, Landroidx/recyclerview/widget/Q0;->c:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_2a
    :goto_15
    move v3, v6

    :goto_16
    iget v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    if-ge v3, v9, :cond_31

    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/Q0;

    aget-object v9, v9, v3

    iget-boolean v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    iget v12, v5, Landroidx/recyclerview/widget/K0;->b:I

    if-eqz v11, :cond_2b

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/Q0;->f(I)I

    move-result v13

    goto :goto_17

    :cond_2b
    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/Q0;->i(I)I

    move-result v13

    :goto_17
    invoke-virtual {v9}, Landroidx/recyclerview/widget/Q0;->b()V

    if-ne v13, v10, :cond_2c

    goto :goto_18

    :cond_2c
    iget-object v14, v9, Landroidx/recyclerview/widget/Q0;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v11, :cond_2d

    iget-object v15, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v15}, Landroidx/recyclerview/widget/T;->f()I

    move-result v15

    if-lt v13, v15, :cond_30

    :cond_2d
    if-nez v11, :cond_2e

    iget-object v11, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/T;->h()I

    move-result v11

    if-le v13, v11, :cond_2e

    goto :goto_18

    :cond_2e
    if-eq v12, v10, :cond_2f

    add-int/2addr v13, v12

    :cond_2f
    iput v13, v9, Landroidx/recyclerview/widget/Q0;->c:I

    iput v13, v9, Landroidx/recyclerview/widget/Q0;->b:I

    :cond_30
    :goto_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_31
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/Q0;

    array-length v9, v3

    iget-object v11, v5, Landroidx/recyclerview/widget/K0;->f:[I

    if-eqz v11, :cond_32

    array-length v11, v11

    if-ge v11, v9, :cond_33

    :cond_32
    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/Q0;

    array-length v8, v8

    new-array v8, v8, [I

    iput-object v8, v5, Landroidx/recyclerview/widget/K0;->f:[I

    :cond_33
    move v8, v6

    :goto_19
    if-ge v8, v9, :cond_34

    iget-object v11, v5, Landroidx/recyclerview/widget/K0;->f:[I

    aget-object v12, v3, v8

    invoke-virtual {v12, v10}, Landroidx/recyclerview/widget/Q0;->i(I)I

    move-result v12

    aput v12, v11, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_19

    :cond_34
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/l0;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/t0;)V

    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Landroidx/recyclerview/widget/I;

    iput-boolean v6, v3, Landroidx/recyclerview/widget/I;->a:Z

    iget-object v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Landroidx/recyclerview/widget/T;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/T;->i()I

    move-result v8

    iget v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    div-int v9, v8, v9

    iput v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Landroidx/recyclerview/widget/T;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/T;->g()I

    move-result v9

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    iget v8, v5, Landroidx/recyclerview/widget/K0;->a:I

    invoke-virtual {v0, v8, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v(ILandroidx/recyclerview/widget/A0;)V

    iget-boolean v8, v5, Landroidx/recyclerview/widget/K0;->c:Z

    if-eqz v8, :cond_35

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u(I)V

    invoke-virtual {v0, v1, v3, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/A0;)I

    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u(I)V

    iget v4, v5, Landroidx/recyclerview/widget/K0;->a:I

    iget v8, v3, Landroidx/recyclerview/widget/I;->d:I

    add-int/2addr v4, v8

    iput v4, v3, Landroidx/recyclerview/widget/I;->c:I

    invoke-virtual {v0, v1, v3, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/A0;)I

    goto :goto_1a

    :cond_35
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u(I)V

    invoke-virtual {v0, v1, v3, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/A0;)I

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u(I)V

    iget v4, v5, Landroidx/recyclerview/widget/K0;->a:I

    iget v8, v3, Landroidx/recyclerview/widget/I;->d:I

    add-int/2addr v4, v8

    iput v4, v3, Landroidx/recyclerview/widget/I;->c:I

    invoke-virtual {v0, v1, v3, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/A0;)I

    :goto_1a
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Landroidx/recyclerview/widget/T;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/T;->g()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v3, v4, :cond_36

    goto/16 :goto_1f

    :cond_36
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    move v8, v6

    :goto_1b
    if-ge v8, v3, :cond_38

    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/l0;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Landroidx/recyclerview/widget/T;

    invoke-virtual {v11, v9}, Landroidx/recyclerview/widget/T;->c(Landroid/view/View;)I

    move-result v11

    int-to-float v11, v11

    cmpg-float v12, v11, v4

    if-gez v12, :cond_37

    goto :goto_1c

    :cond_37
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/recyclerview/widget/L0;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v11}, Ljava/lang/Math;->max(FF)F

    move-result v4

    :goto_1c
    add-int/lit8 v8, v8, 0x1

    goto :goto_1b

    :cond_38
    iget v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    iget v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    int-to-float v9, v9

    mul-float/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Landroidx/recyclerview/widget/T;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/T;->g()I

    move-result v9

    if-ne v9, v10, :cond_39

    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Landroidx/recyclerview/widget/T;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/T;->i()I

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_39
    iget v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    div-int v9, v4, v9

    iput v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Landroidx/recyclerview/widget/T;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/T;->g()I

    move-result v9

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    iget v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    if-ne v4, v8, :cond_3a

    goto :goto_1f

    :cond_3a
    move v4, v6

    :goto_1d
    if-ge v4, v3, :cond_3d

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/l0;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroidx/recyclerview/widget/L0;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v11

    if-eqz v11, :cond_3b

    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    if-ne v11, v7, :cond_3b

    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    add-int/lit8 v12, v11, -0x1

    iget-object v10, v10, Landroidx/recyclerview/widget/L0;->e:Landroidx/recyclerview/widget/Q0;

    iget v10, v10, Landroidx/recyclerview/widget/Q0;->e:I

    sub-int/2addr v12, v10

    neg-int v12, v12

    iget v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    mul-int/2addr v12, v13

    sub-int/2addr v11, v7

    sub-int/2addr v11, v10

    neg-int v10, v11

    mul-int/2addr v10, v8

    sub-int/2addr v12, v10

    invoke-virtual {v9, v12}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1e

    :cond_3b
    iget-object v10, v10, Landroidx/recyclerview/widget/L0;->e:Landroidx/recyclerview/widget/Q0;

    iget v10, v10, Landroidx/recyclerview/widget/Q0;->e:I

    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    mul-int/2addr v11, v10

    mul-int/2addr v10, v8

    iget v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    if-ne v12, v7, :cond_3c

    sub-int/2addr v11, v10

    invoke-virtual {v9, v11}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1e

    :cond_3c
    sub-int/2addr v11, v10

    invoke-virtual {v9, v11}, Landroid/view/View;->offsetTopAndBottom(I)V

    :goto_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_3d
    :goto_1f
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v3

    if-lez v3, :cond_3f

    iget-boolean v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    if-eqz v3, :cond_3e

    invoke-virtual {v0, v1, v2, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;Z)V

    invoke-virtual {v0, v1, v2, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;Z)V

    goto :goto_20

    :cond_3e
    invoke-virtual {v0, v1, v2, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;Z)V

    invoke-virtual {v0, v1, v2, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;Z)V

    :cond_3f
    :goto_20
    if-eqz p3, :cond_42

    iget-boolean v3, v2, Landroidx/recyclerview/widget/A0;->g:Z

    if-nez v3, :cond_42

    iget v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n:I

    if-eqz v3, :cond_40

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v3

    if-lez v3, :cond_40

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_40

    move v3, v7

    goto :goto_21

    :cond_40
    move v3, v6

    :goto_21
    if-eqz v3, :cond_42

    iget-object v3, v0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_41

    iget-object v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Landroidx/recyclerview/widget/J0;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_41
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b()Z

    move-result v3

    if-eqz v3, :cond_42

    goto :goto_22

    :cond_42
    move v7, v6

    :goto_22
    iget-boolean v3, v2, Landroidx/recyclerview/widget/A0;->g:Z

    if-eqz v3, :cond_43

    invoke-virtual {v5}, Landroidx/recyclerview/widget/K0;->a()V

    :cond_43
    iget-boolean v3, v5, Landroidx/recyclerview/widget/K0;->c:Z

    iput-boolean v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v3

    iput-boolean v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:Z

    if-eqz v7, :cond_44

    invoke-virtual {v5}, Landroidx/recyclerview/widget/K0;->a()V

    invoke-virtual {v0, v1, v2, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;Z)V

    :cond_44
    return-void
.end method

.method public final offsetChildrenHorizontal(I)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/l0;->offsetChildrenHorizontal(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/Q0;

    aget-object v1, v1, v0

    iget v2, v1, Landroidx/recyclerview/widget/Q0;->b:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_0

    add-int/2addr v2, p1

    iput v2, v1, Landroidx/recyclerview/widget/Q0;->b:I

    :cond_0
    iget v2, v1, Landroidx/recyclerview/widget/Q0;->c:I

    if-eq v2, v3, :cond_1

    add-int/2addr v2, p1

    iput v2, v1, Landroidx/recyclerview/widget/Q0;->c:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final offsetChildrenVertical(I)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/l0;->offsetChildrenVertical(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/Q0;

    aget-object v1, v1, v0

    iget v2, v1, Landroidx/recyclerview/widget/Q0;->b:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_0

    add-int/2addr v2, p1

    iput v2, v1, Landroidx/recyclerview/widget/Q0;->b:I

    :cond_0
    iget v2, v1, Landroidx/recyclerview/widget/Q0;->c:I

    if-eq v2, v3, :cond_1

    add-int/2addr v2, p1

    iput v2, v1, Landroidx/recyclerview/widget/Q0;->c:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final onAdapterChanged()V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Landroidx/recyclerview/widget/O0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/O0;->a()V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/Q0;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/Q0;->b()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Landroidx/recyclerview/widget/J0;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/Q0;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/Q0;->b()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public final onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)Landroid/view/View;
    .locals 8

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1

    :goto_0
    move-object p1, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/l0;->mChildHelper:Landroidx/recyclerview/widget/g;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/g;->j(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    if-nez p1, :cond_4

    return-object v1

    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    const/4 v0, 0x1

    const/4 v2, -0x1

    const/high16 v3, -0x80000000

    if-eq p2, v0, :cond_c

    const/4 v4, 0x2

    if-eq p2, v4, :cond_a

    const/16 v4, 0x11

    if-eq p2, v4, :cond_8

    const/16 v4, 0x21

    if-eq p2, v4, :cond_7

    const/16 v4, 0x42

    if-eq p2, v4, :cond_6

    const/16 v4, 0x82

    if-eq p2, v4, :cond_5

    goto :goto_2

    :cond_5
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    if-ne p2, v0, :cond_9

    goto :goto_3

    :cond_6
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    if-nez p2, :cond_9

    goto :goto_3

    :cond_7
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    if-ne p2, v0, :cond_9

    goto :goto_4

    :cond_8
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    if-nez p2, :cond_9

    goto :goto_4

    :cond_9
    :goto_2
    move p2, v3

    goto :goto_5

    :cond_a
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    if-ne p2, v0, :cond_b

    goto :goto_3

    :cond_b
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result p2

    if-eqz p2, :cond_e

    goto :goto_4

    :cond_c
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    if-ne p2, v0, :cond_d

    goto :goto_4

    :cond_d
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result p2

    if-eqz p2, :cond_f

    :cond_e
    :goto_3
    move p2, v0

    goto :goto_5

    :cond_f
    :goto_4
    move p2, v2

    :goto_5
    if-ne p2, v3, :cond_10

    return-object v1

    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/L0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, Landroidx/recyclerview/widget/L0;->e:Landroidx/recyclerview/widget/Q0;

    if-ne p2, v0, :cond_11

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i()I

    move-result v4

    goto :goto_6

    :cond_11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h()I

    move-result v4

    :goto_6
    invoke-virtual {p0, v4, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v(ILandroidx/recyclerview/widget/A0;)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u(I)V

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Landroidx/recyclerview/widget/I;

    iget v6, v5, Landroidx/recyclerview/widget/I;->d:I

    add-int/2addr v6, v4

    iput v6, v5, Landroidx/recyclerview/widget/I;->c:I

    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/T;->i()I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3eaaaaab

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Landroidx/recyclerview/widget/I;->b:I

    iput-boolean v0, v5, Landroidx/recyclerview/widget/I;->h:Z

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/recyclerview/widget/I;->a:Z

    invoke-virtual {p0, p3, v5, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/A0;)I

    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    invoke-virtual {v3, v4, p2}, Landroidx/recyclerview/widget/Q0;->g(II)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_12

    if-eq p3, p1, :cond_12

    return-object p3

    :cond_12
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p(I)Z

    move-result p3

    if-eqz p3, :cond_14

    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    sub-int/2addr p3, v0

    :goto_7
    if-ltz p3, :cond_16

    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/Q0;

    aget-object p4, p4, p3

    invoke-virtual {p4, v4, p2}, Landroidx/recyclerview/widget/Q0;->g(II)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_13

    if-eq p4, p1, :cond_13

    return-object p4

    :cond_13
    add-int/lit8 p3, p3, -0x1

    goto :goto_7

    :cond_14
    move p3, v6

    :goto_8
    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    if-ge p3, p4, :cond_16

    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/Q0;

    aget-object p4, p4, p3

    invoke-virtual {p4, v4, p2}, Landroidx/recyclerview/widget/Q0;->g(II)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_15

    if-eq p4, p1, :cond_15

    return-object p4

    :cond_15
    add-int/lit8 p3, p3, 0x1

    goto :goto_8

    :cond_16
    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    xor-int/2addr p3, v0

    if-ne p2, v2, :cond_17

    move p4, v0

    goto :goto_9

    :cond_17
    move p4, v6

    :goto_9
    if-ne p3, p4, :cond_18

    move p3, v0

    goto :goto_a

    :cond_18
    move p3, v6

    :goto_a
    if-eqz p3, :cond_19

    invoke-virtual {v3}, Landroidx/recyclerview/widget/Q0;->c()I

    move-result p4

    goto :goto_b

    :cond_19
    invoke-virtual {v3}, Landroidx/recyclerview/widget/Q0;->d()I

    move-result p4

    :goto_b
    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/l0;->findViewByPosition(I)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_1a

    if-eq p4, p1, :cond_1a

    return-object p4

    :cond_1a
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p(I)Z

    move-result p2

    if-eqz p2, :cond_1e

    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    sub-int/2addr p2, v0

    :goto_c
    if-ltz p2, :cond_21

    iget p4, v3, Landroidx/recyclerview/widget/Q0;->e:I

    if-ne p2, p4, :cond_1b

    goto :goto_e

    :cond_1b
    if-eqz p3, :cond_1c

    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/Q0;

    aget-object p4, p4, p2

    invoke-virtual {p4}, Landroidx/recyclerview/widget/Q0;->c()I

    move-result p4

    goto :goto_d

    :cond_1c
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/Q0;

    aget-object p4, p4, p2

    invoke-virtual {p4}, Landroidx/recyclerview/widget/Q0;->d()I

    move-result p4

    :goto_d
    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/l0;->findViewByPosition(I)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_1d

    if-eq p4, p1, :cond_1d

    return-object p4

    :cond_1d
    :goto_e
    add-int/lit8 p2, p2, -0x1

    goto :goto_c

    :cond_1e
    :goto_f
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    if-ge v6, p2, :cond_21

    if-eqz p3, :cond_1f

    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/Q0;

    aget-object p2, p2, v6

    invoke-virtual {p2}, Landroidx/recyclerview/widget/Q0;->c()I

    move-result p2

    goto :goto_10

    :cond_1f
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/Q0;

    aget-object p2, p2, v6

    invoke-virtual {p2}, Landroidx/recyclerview/widget/Q0;->d()I

    move-result p2

    :goto_10
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/l0;->findViewByPosition(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_20

    if-eq p2, p1, :cond_20

    return-object p2

    :cond_20
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_21
    return-object v1
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/l0;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e(Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d(Z)Landroid/view/View;

    move-result-object p0

    if-eqz v1, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Landroidx/recyclerview/widget/l0;->getPosition(Landroid/view/View;)I

    move-result v0

    invoke-static {p0}, Landroidx/recyclerview/widget/l0;->getPosition(Landroid/view/View;)I

    move-result p0

    if-ge v0, p0, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;LM/e;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/l0;->onInitializeAccessibilityNodeInfo(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;LM/e;)V

    const-string p0, "androidx.recyclerview.widget.StaggeredGridLayoutManager"

    invoke-virtual {p3, p0}, LM/e;->h(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfoForItem(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;Landroid/view/View;LM/e;)V
    .locals 6

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p2, p1, Landroidx/recyclerview/widget/L0;

    if-nez p2, :cond_0

    invoke-virtual {p0, p3, p4}, Landroidx/recyclerview/widget/l0;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;LM/e;)V

    return-void

    :cond_0
    check-cast p1, Landroidx/recyclerview/widget/L0;

    iget p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    const/4 p2, -0x1

    if-nez p0, :cond_2

    iget-object p0, p1, Landroidx/recyclerview/widget/L0;->e:Landroidx/recyclerview/widget/Q0;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    iget p2, p0, Landroidx/recyclerview/widget/Q0;->e:I

    :goto_0
    move v0, p2

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, LM/d;->a(IIIIZZ)LM/d;

    move-result-object p0

    invoke-virtual {p4, p0}, LM/e;->i(LM/d;)V

    goto :goto_2

    :cond_2
    const/4 v0, -0x1

    const/4 v1, -0x1

    iget-object p0, p1, Landroidx/recyclerview/widget/L0;->e:Landroidx/recyclerview/widget/Q0;

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    iget p2, p0, Landroidx/recyclerview/widget/Q0;->e:I

    :goto_1
    move v2, p2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, LM/d;->a(IIIIZZ)LM/d;

    move-result-object p0

    invoke-virtual {p4, p0}, LM/e;->i(LM/d;)V

    :goto_2
    return-void
.end method

.method public final onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l(III)V

    return-void
.end method

.method public final onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Landroidx/recyclerview/widget/O0;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/O0;->a()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->requestLayout()V

    return-void
.end method

.method public final onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    const/16 p1, 0x8

    invoke-virtual {p0, p2, p3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l(III)V

    return-void
.end method

.method public final onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    const/4 p1, 0x2

    invoke-virtual {p0, p2, p3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l(III)V

    return-void
.end method

.method public final onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0

    const/4 p1, 0x4

    invoke-virtual {p0, p2, p3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l(III)V

    return-void
.end method

.method public final onLayoutChildren(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;Z)V

    return-void
.end method

.method public final onLayoutCompleted(Landroidx/recyclerview/widget/A0;)V
    .locals 0

    const/4 p1, -0x1

    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:I

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/P0;

    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Landroidx/recyclerview/widget/K0;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/K0;->a()V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    instance-of v0, p1, Landroidx/recyclerview/widget/P0;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/recyclerview/widget/P0;

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/P0;

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/recyclerview/widget/P0;->g:[I

    const/4 v2, 0x0

    iput v2, p1, Landroidx/recyclerview/widget/P0;->f:I

    iput v1, p1, Landroidx/recyclerview/widget/P0;->d:I

    iput v1, p1, Landroidx/recyclerview/widget/P0;->e:I

    iput-object v0, p1, Landroidx/recyclerview/widget/P0;->g:[I

    iput v2, p1, Landroidx/recyclerview/widget/P0;->f:I

    iput v2, p1, Landroidx/recyclerview/widget/P0;->h:I

    iput-object v0, p1, Landroidx/recyclerview/widget/P0;->i:[I

    iput-object v0, p1, Landroidx/recyclerview/widget/P0;->j:Ljava/util/List;

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->requestLayout()V

    :cond_1
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/P0;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/recyclerview/widget/P0;

    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/P0;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/P0;-><init>(Landroidx/recyclerview/widget/P0;)V

    return-object v0

    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/P0;

    invoke-direct {v0}, Landroidx/recyclerview/widget/P0;-><init>()V

    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    iput-boolean v1, v0, Landroidx/recyclerview/widget/P0;->k:Z

    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    iput-boolean v1, v0, Landroidx/recyclerview/widget/P0;->l:Z

    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:Z

    iput-boolean v1, v0, Landroidx/recyclerview/widget/P0;->m:Z

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Landroidx/recyclerview/widget/O0;

    if-eqz v2, :cond_1

    iget-object v3, v2, Landroidx/recyclerview/widget/O0;->a:[I

    if-eqz v3, :cond_1

    iput-object v3, v0, Landroidx/recyclerview/widget/P0;->i:[I

    array-length v3, v3

    iput v3, v0, Landroidx/recyclerview/widget/P0;->h:I

    iget-object v2, v2, Landroidx/recyclerview/widget/O0;->b:Ljava/util/List;

    iput-object v2, v0, Landroidx/recyclerview/widget/P0;->j:Ljava/util/List;

    goto :goto_0

    :cond_1
    iput v1, v0, Landroidx/recyclerview/widget/P0;->h:I

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v2

    const/4 v3, -0x1

    if-lez v2, :cond_7

    iget-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i()I

    move-result v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h()I

    move-result v2

    :goto_1
    iput v2, v0, Landroidx/recyclerview/widget/P0;->d:I

    iget-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d(Z)Landroid/view/View;

    move-result-object v2

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e(Z)Landroid/view/View;

    move-result-object v2

    :goto_2
    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v2}, Landroidx/recyclerview/widget/l0;->getPosition(Landroid/view/View;)I

    move-result v3

    :goto_3
    iput v3, v0, Landroidx/recyclerview/widget/P0;->e:I

    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    iput v2, v0, Landroidx/recyclerview/widget/P0;->f:I

    new-array v2, v2, [I

    iput-object v2, v0, Landroidx/recyclerview/widget/P0;->g:[I

    :goto_4
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    if-ge v1, v2, :cond_8

    iget-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    const/high16 v3, -0x80000000

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/Q0;

    aget-object v2, v2, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/Q0;->f(I)I

    move-result v2

    if-eq v2, v3, :cond_6

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/T;->f()I

    move-result v3

    goto :goto_5

    :cond_5
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/Q0;

    aget-object v2, v2, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/Q0;->i(I)I

    move-result v2

    if-eq v2, v3, :cond_6

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/T;->h()I

    move-result v3

    :goto_5
    sub-int/2addr v2, v3

    :cond_6
    iget-object v3, v0, Landroidx/recyclerview/widget/P0;->g:[I

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    iput v3, v0, Landroidx/recyclerview/widget/P0;->d:I

    iput v3, v0, Landroidx/recyclerview/widget/P0;->e:I

    iput v1, v0, Landroidx/recyclerview/widget/P0;->f:I

    :cond_8
    return-object v0
.end method

.method public final onScrollStateChanged(I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b()Z

    :cond_0
    return-void
.end method

.method public final p(I)Z
    .locals 4

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2

    if-ne p1, v1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    iget-boolean p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    if-eq p1, p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    return v2

    :cond_2
    if-ne p1, v1, :cond_3

    move p1, v2

    goto :goto_2

    :cond_3
    move p1, v3

    :goto_2
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    if-ne p1, v0, :cond_4

    move p1, v2

    goto :goto_3

    :cond_4
    move p1, v3

    :goto_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result p0

    if-ne p1, p0, :cond_5

    goto :goto_4

    :cond_5
    move v2, v3

    :goto_4
    return v2
.end method

.method public final q(ILandroidx/recyclerview/widget/A0;)V
    .locals 4

    const/4 v0, 0x1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i()I

    move-result v1

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h()I

    move-result v1

    const/4 v2, -0x1

    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Landroidx/recyclerview/widget/I;

    iput-boolean v0, v3, Landroidx/recyclerview/widget/I;->a:Z

    invoke-virtual {p0, v1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v(ILandroidx/recyclerview/widget/A0;)V

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u(I)V

    iget p0, v3, Landroidx/recyclerview/widget/I;->d:I

    add-int/2addr v1, p0

    iput v1, v3, Landroidx/recyclerview/widget/I;->c:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    iput p0, v3, Landroidx/recyclerview/widget/I;->b:I

    return-void
.end method

.method public final r(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/I;)V
    .locals 4

    iget-boolean v0, p2, Landroidx/recyclerview/widget/I;->a:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p2, Landroidx/recyclerview/widget/I;->i:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget v0, p2, Landroidx/recyclerview/widget/I;->b:I

    const/4 v1, -0x1

    if-nez v0, :cond_2

    iget v0, p2, Landroidx/recyclerview/widget/I;->e:I

    if-ne v0, v1, :cond_1

    iget p2, p2, Landroidx/recyclerview/widget/I;->g:I

    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s(ILandroidx/recyclerview/widget/t0;)V

    goto/16 :goto_4

    :cond_1
    iget p2, p2, Landroidx/recyclerview/widget/I;->f:I

    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t(ILandroidx/recyclerview/widget/t0;)V

    goto :goto_4

    :cond_2
    iget v0, p2, Landroidx/recyclerview/widget/I;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_6

    iget v0, p2, Landroidx/recyclerview/widget/I;->f:I

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/Q0;

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/Q0;->i(I)I

    move-result v1

    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    if-ge v3, v2, :cond_4

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/Q0;

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/Q0;->i(I)I

    move-result v2

    if-le v2, v1, :cond_3

    move v1, v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    sub-int/2addr v0, v1

    if-gez v0, :cond_5

    iget p2, p2, Landroidx/recyclerview/widget/I;->g:I

    goto :goto_1

    :cond_5
    iget v1, p2, Landroidx/recyclerview/widget/I;->g:I

    iget p2, p2, Landroidx/recyclerview/widget/I;->b:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int p2, v1, p2

    :goto_1
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s(ILandroidx/recyclerview/widget/t0;)V

    goto :goto_4

    :cond_6
    iget v0, p2, Landroidx/recyclerview/widget/I;->g:I

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/Q0;

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/Q0;->f(I)I

    move-result v1

    :goto_2
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    if-ge v3, v2, :cond_8

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/Q0;

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/Q0;->f(I)I

    move-result v2

    if-ge v2, v1, :cond_7

    move v1, v2

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    iget v0, p2, Landroidx/recyclerview/widget/I;->g:I

    sub-int/2addr v1, v0

    if-gez v1, :cond_9

    iget p2, p2, Landroidx/recyclerview/widget/I;->f:I

    goto :goto_3

    :cond_9
    iget v0, p2, Landroidx/recyclerview/widget/I;->f:I

    iget p2, p2, Landroidx/recyclerview/widget/I;->b:I

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/2addr p2, v0

    :goto_3
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t(ILandroidx/recyclerview/widget/t0;)V

    :cond_a
    :goto_4
    return-void
.end method

.method public final resolveShouldLayoutReverse()V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    goto :goto_1

    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    :goto_1
    return-void
.end method

.method public final s(ILandroidx/recyclerview/widget/t0;)V
    .locals 8

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_4

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/l0;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/T;->d(Landroid/view/View;)I

    move-result v3

    if-lt v3, p1, :cond_4

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/T;->l(Landroid/view/View;)I

    move-result v3

    if-lt v3, p1, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/L0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v3, Landroidx/recyclerview/widget/L0;->e:Landroidx/recyclerview/widget/Q0;

    iget-object v4, v4, Landroidx/recyclerview/widget/Q0;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v1, :cond_0

    return-void

    :cond_0
    iget-object v3, v3, Landroidx/recyclerview/widget/L0;->e:Landroidx/recyclerview/widget/Q0;

    iget-object v4, v3, Landroidx/recyclerview/widget/Q0;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-static {v4}, Landroidx/recyclerview/widget/Q0;->h(Landroid/view/View;)Landroidx/recyclerview/widget/L0;

    move-result-object v6

    const/4 v7, 0x0

    iput-object v7, v6, Landroidx/recyclerview/widget/L0;->e:Landroidx/recyclerview/widget/Q0;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/m0;->c()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Landroidx/recyclerview/widget/m0;->b()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    iget v6, v3, Landroidx/recyclerview/widget/Q0;->d:I

    iget-object v7, v3, Landroidx/recyclerview/widget/Q0;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/T;->c(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v6, v4

    iput v6, v3, Landroidx/recyclerview/widget/Q0;->d:I

    :cond_2
    const/high16 v4, -0x80000000

    if-ne v5, v1, :cond_3

    iput v4, v3, Landroidx/recyclerview/widget/Q0;->b:I

    :cond_3
    iput v4, v3, Landroidx/recyclerview/widget/Q0;->c:I

    invoke-virtual {p0, v2, p2}, Landroidx/recyclerview/widget/l0;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/t0;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final scrollBy(ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q(ILandroidx/recyclerview/widget/A0;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Landroidx/recyclerview/widget/I;

    invoke-virtual {p0, p2, v0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/A0;)I

    move-result p3

    iget v2, v0, Landroidx/recyclerview/widget/I;->b:I

    if-ge v2, p3, :cond_1

    goto :goto_0

    :cond_1
    if-gez p1, :cond_2

    neg-int p1, p3

    goto :goto_0

    :cond_2
    move p1, p3

    :goto_0
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    neg-int v2, p1

    invoke-virtual {p3, v2}, Landroidx/recyclerview/widget/T;->m(I)V

    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    iput v1, v0, Landroidx/recyclerview/widget/I;->b:I

    invoke-virtual {p0, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r(Landroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/I;)V

    return p1

    :cond_3
    :goto_1
    return v1
.end method

.method public final scrollHorizontallyBy(ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I

    move-result p0

    return p0
.end method

.method public final scrollToPosition(I)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/P0;

    if-eqz v0, :cond_0

    iget v1, v0, Landroidx/recyclerview/widget/P0;->d:I

    if-eq v1, p1, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/recyclerview/widget/P0;->g:[I

    const/4 v1, 0x0

    iput v1, v0, Landroidx/recyclerview/widget/P0;->f:I

    const/4 v1, -0x1

    iput v1, v0, Landroidx/recyclerview/widget/P0;->d:I

    iput v1, v0, Landroidx/recyclerview/widget/P0;->e:I

    :cond_0
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->requestLayout()V

    return-void
.end method

.method public final scrollVerticallyBy(ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/t0;Landroidx/recyclerview/widget/A0;)I

    move-result p0

    return p0
.end method

.method public final setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getPaddingBottom()I

    move-result v2

    add-int/2addr v2, v0

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, v2

    iget-object v0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v2, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Landroidx/core/view/x;->c(Landroid/view/View;)I

    move-result v0

    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/l0;->chooseSize(III)I

    move-result p1

    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    mul-int/2addr p3, v0

    add-int/2addr p3, v1

    iget-object v0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Landroidx/core/view/x;->d(Landroid/view/View;)I

    move-result v0

    invoke-static {p2, p3, v0}, Landroidx/recyclerview/widget/l0;->chooseSize(III)I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, v1

    iget-object v0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v1, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Landroidx/core/view/x;->d(Landroid/view/View;)I

    move-result v0

    invoke-static {p2, p1, v0}, Landroidx/recyclerview/widget/l0;->chooseSize(III)I

    move-result p2

    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    mul-int/2addr p1, v0

    add-int/2addr p1, v2

    iget-object v0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Landroidx/core/view/x;->c(Landroid/view/View;)I

    move-result v0

    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/l0;->chooseSize(III)I

    move-result p1

    :goto_0
    iget-object p0, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->access$500(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method

.method public final smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    new-instance v0, Landroidx/recyclerview/widget/O;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/O;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/O;->g(I)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/l0;->startSmoothScroll(Landroidx/recyclerview/widget/O;)V

    return-void
.end method

.method public final supportsPredictiveItemAnimations()Z
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/P0;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final t(ILandroidx/recyclerview/widget/t0;)V
    .locals 6

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/l0;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/l0;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/T;->b(Landroid/view/View;)I

    move-result v2

    if-gt v2, p1, :cond_4

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/T;->k(Landroid/view/View;)I

    move-result v2

    if-gt v2, p1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/L0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v2, Landroidx/recyclerview/widget/L0;->e:Landroidx/recyclerview/widget/Q0;

    iget-object v3, v3, Landroidx/recyclerview/widget/Q0;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    return-void

    :cond_0
    iget-object v2, v2, Landroidx/recyclerview/widget/L0;->e:Landroidx/recyclerview/widget/Q0;

    iget-object v3, v2, Landroidx/recyclerview/widget/Q0;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroidx/recyclerview/widget/Q0;->h(Landroid/view/View;)Landroidx/recyclerview/widget/L0;

    move-result-object v4

    const/4 v5, 0x0

    iput-object v5, v4, Landroidx/recyclerview/widget/L0;->e:Landroidx/recyclerview/widget/Q0;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/high16 v5, -0x80000000

    if-nez v3, :cond_1

    iput v5, v2, Landroidx/recyclerview/widget/Q0;->c:I

    :cond_1
    invoke-virtual {v4}, Landroidx/recyclerview/widget/m0;->c()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v4}, Landroidx/recyclerview/widget/m0;->b()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget v3, v2, Landroidx/recyclerview/widget/Q0;->d:I

    iget-object v4, v2, Landroidx/recyclerview/widget/Q0;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/T;->c(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v3, v0

    iput v3, v2, Landroidx/recyclerview/widget/Q0;->d:I

    :cond_3
    iput v5, v2, Landroidx/recyclerview/widget/Q0;->b:I

    invoke-virtual {p0, v1, p2}, Landroidx/recyclerview/widget/l0;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/t0;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final u(I)V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Landroidx/recyclerview/widget/I;

    iput p1, v0, Landroidx/recyclerview/widget/I;->e:I

    iget-boolean p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-ne p0, p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput v1, v0, Landroidx/recyclerview/widget/I;->d:I

    return-void
.end method

.method public final v(ILandroidx/recyclerview/widget/A0;)V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Landroidx/recyclerview/widget/I;

    const/4 v1, 0x0

    iput v1, v0, Landroidx/recyclerview/widget/I;->b:I

    iput p1, v0, Landroidx/recyclerview/widget/I;->c:I

    iget-object v2, p0, Landroidx/recyclerview/widget/l0;->mSmoothScroller:Landroidx/recyclerview/widget/O;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/O;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_3

    iget p2, p2, Landroidx/recyclerview/widget/A0;->a:I

    const/4 v2, -0x1

    if-eq p2, v2, :cond_3

    iget-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    if-ge p2, p1, :cond_1

    move p1, v3

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    if-ne v2, p1, :cond_2

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/T;->i()I

    move-result p1

    move p2, v1

    goto :goto_2

    :cond_2
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/T;->i()I

    move-result p1

    move p2, p1

    move p1, v1

    goto :goto_2

    :cond_3
    move p1, v1

    move p2, p1

    :goto_2
    iget-object v2, p0, Landroidx/recyclerview/widget/l0;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_4

    iget-boolean v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v2, :cond_4

    move v2, v3

    goto :goto_3

    :cond_4
    move v2, v1

    :goto_3
    if-eqz v2, :cond_5

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/T;->h()I

    move-result v2

    sub-int/2addr v2, p2

    iput v2, v0, Landroidx/recyclerview/widget/I;->f:I

    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/T;->f()I

    move-result p2

    add-int/2addr p2, p1

    iput p2, v0, Landroidx/recyclerview/widget/I;->g:I

    goto :goto_4

    :cond_5
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/T;->e()I

    move-result v2

    add-int/2addr v2, p1

    iput v2, v0, Landroidx/recyclerview/widget/I;->g:I

    neg-int p1, p2

    iput p1, v0, Landroidx/recyclerview/widget/I;->f:I

    :goto_4
    iput-boolean v1, v0, Landroidx/recyclerview/widget/I;->h:Z

    iput-boolean v3, v0, Landroidx/recyclerview/widget/I;->a:Z

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/T;->g()I

    move-result p1

    if-nez p1, :cond_6

    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/T;->e()I

    move-result p0

    if-nez p0, :cond_6

    move v1, v3

    :cond_6
    iput-boolean v1, v0, Landroidx/recyclerview/widget/I;->i:Z

    return-void
.end method

.method public final w(Landroidx/recyclerview/widget/Q0;II)V
    .locals 5

    iget v0, p1, Landroidx/recyclerview/widget/Q0;->d:I

    const/high16 v1, -0x80000000

    const/4 v2, -0x1

    const/4 v3, 0x0

    iget v4, p1, Landroidx/recyclerview/widget/Q0;->e:I

    if-ne p2, v2, :cond_1

    iget p2, p1, Landroidx/recyclerview/widget/Q0;->b:I

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p1, Landroidx/recyclerview/widget/Q0;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-static {p2}, Landroidx/recyclerview/widget/Q0;->h(Landroid/view/View;)Landroidx/recyclerview/widget/L0;

    move-result-object v1

    iget-object v2, p1, Landroidx/recyclerview/widget/Q0;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/T;

    invoke-virtual {v2, p2}, Landroidx/recyclerview/widget/T;->d(Landroid/view/View;)I

    move-result p2

    iput p2, p1, Landroidx/recyclerview/widget/Q0;->b:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p1, Landroidx/recyclerview/widget/Q0;->b:I

    :goto_0
    add-int/2addr p2, v0

    if-gt p2, p3, :cond_3

    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:Ljava/util/BitSet;

    invoke-virtual {p0, v4, v3}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_2

    :cond_1
    iget p2, p1, Landroidx/recyclerview/widget/Q0;->c:I

    if-eq p2, v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/Q0;->a()V

    iget p2, p1, Landroidx/recyclerview/widget/Q0;->c:I

    :goto_1
    sub-int/2addr p2, v0

    if-lt p2, p3, :cond_3

    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:Ljava/util/BitSet;

    invoke-virtual {p0, v4, v3}, Ljava/util/BitSet;->set(IZ)V

    :cond_3
    :goto_2
    return-void
.end method
