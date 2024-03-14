.class public Lk/C0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/G;


# instance fields
.field public A:Landroid/graphics/Rect;

.field public B:Z

.field public final C:Lk/K;

.field public final d:Landroid/content/Context;

.field public e:Landroid/widget/ListAdapter;

.field public f:Lk/s0;

.field public final g:I

.field public h:I

.field public i:I

.field public j:I

.field public final k:I

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:I

.field public final p:I

.field public q:Lk/z0;

.field public r:Landroid/view/View;

.field public s:Landroid/widget/AdapterView$OnItemClickListener;

.field public t:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public final u:Lk/x0;

.field public final v:Lk/B0;

.field public final w:Lk/A0;

.field public final x:Lk/x0;

.field public final y:Landroid/os/Handler;

.field public final z:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Lk/C0;->g:I

    iput v0, p0, Lk/C0;->h:I

    const/16 v0, 0x3ea

    iput v0, p0, Lk/C0;->k:I

    const/4 v0, 0x0

    iput v0, p0, Lk/C0;->o:I

    const v1, 0x7fffffff

    iput v1, p0, Lk/C0;->p:I

    new-instance v1, Lk/x0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lk/x0;-><init>(Lk/C0;I)V

    iput-object v1, p0, Lk/C0;->u:Lk/x0;

    new-instance v1, Lk/B0;

    invoke-direct {v1, p0}, Lk/B0;-><init>(Lk/C0;)V

    iput-object v1, p0, Lk/C0;->v:Lk/B0;

    new-instance v1, Lk/A0;

    invoke-direct {v1, p0}, Lk/A0;-><init>(Lk/C0;)V

    iput-object v1, p0, Lk/C0;->w:Lk/A0;

    new-instance v1, Lk/x0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lk/x0;-><init>(Lk/C0;I)V

    iput-object v1, p0, Lk/C0;->x:Lk/x0;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lk/C0;->z:Landroid/graphics/Rect;

    iput-object p1, p0, Lk/C0;->d:Landroid/content/Context;

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lk/C0;->y:Landroid/os/Handler;

    sget-object v1, Ld/a;->o:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lk/C0;->i:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lk/C0;->j:I

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lk/C0;->l:Z

    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Lk/K;

    invoke-direct {v0, p1, p2, p3, p4}, Lk/K;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lk/C0;->C:Lk/K;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lk/C0;->i:I

    return p0
.end method

.method public final b()Z
    .locals 0

    iget-object p0, p0, Lk/C0;->C:Lk/K;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p0

    return p0
.end method

.method public final d()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lk/C0;->C:Lk/K;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final dismiss()V
    .locals 2

    iget-object v0, p0, Lk/C0;->C:Lk/K;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iput-object v1, p0, Lk/C0;->f:Lk/s0;

    iget-object v0, p0, Lk/C0;->y:Landroid/os/Handler;

    iget-object p0, p0, Lk/C0;->u:Lk/x0;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e()Lk/s0;
    .locals 0

    iget-object p0, p0, Lk/C0;->f:Lk/s0;

    return-object p0
.end method

.method public final g(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lk/C0;->C:Lk/K;

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final h(I)V
    .locals 0

    iput p1, p0, Lk/C0;->j:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lk/C0;->l:Z

    return-void
.end method

.method public final k(I)V
    .locals 0

    iput p1, p0, Lk/C0;->i:I

    return-void
.end method

.method public final m()I
    .locals 1

    iget-boolean v0, p0, Lk/C0;->l:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lk/C0;->j:I

    return p0
.end method

.method public o(Landroid/widget/ListAdapter;)V
    .locals 2

    iget-object v0, p0, Lk/C0;->q:Lk/z0;

    if-nez v0, :cond_0

    new-instance v0, Lk/z0;

    invoke-direct {v0, p0}, Lk/z0;-><init>(Lk/C0;)V

    iput-object v0, p0, Lk/C0;->q:Lk/z0;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lk/C0;->e:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    :goto_0
    iput-object p1, p0, Lk/C0;->e:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lk/C0;->q:Lk/z0;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_2
    iget-object p1, p0, Lk/C0;->f:Lk/s0;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lk/C0;->e:Landroid/widget/ListAdapter;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_3
    return-void
.end method

.method public p(Landroid/content/Context;Z)Lk/s0;
    .locals 0

    new-instance p0, Lk/s0;

    invoke-direct {p0, p1, p2}, Lk/s0;-><init>(Landroid/content/Context;Z)V

    return-object p0
.end method

.method public final q(I)V
    .locals 2

    iget-object v0, p0, Lk/C0;->C:Lk/K;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lk/C0;->z:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v0, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lk/C0;->h:I

    goto :goto_0

    :cond_0
    iput p1, p0, Lk/C0;->h:I

    :goto_0
    return-void
.end method

.method public final show()V
    .locals 13

    iget-object v0, p0, Lk/C0;->f:Lk/s0;

    iget-object v1, p0, Lk/C0;->C:Lk/K;

    const/4 v2, 0x1

    iget-object v3, p0, Lk/C0;->d:Landroid/content/Context;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lk/C0;->B:Z

    xor-int/2addr v0, v2

    invoke-virtual {p0, v3, v0}, Lk/C0;->p(Landroid/content/Context;Z)Lk/s0;

    move-result-object v0

    iput-object v0, p0, Lk/C0;->f:Lk/s0;

    iget-object v4, p0, Lk/C0;->e:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lk/C0;->f:Lk/s0;

    iget-object v4, p0, Lk/C0;->s:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lk/C0;->f:Lk/s0;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFocusable(Z)V

    iget-object v0, p0, Lk/C0;->f:Lk/s0;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lk/C0;->f:Lk/s0;

    new-instance v4, Lk/y0;

    invoke-direct {v4, p0}, Lk/y0;-><init>(Lk/C0;)V

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lk/C0;->f:Lk/s0;

    iget-object v4, p0, Lk/C0;->w:Lk/A0;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lk/C0;->t:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    iget-object v4, p0, Lk/C0;->f:Lk/s0;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_0
    iget-object v0, p0, Lk/C0;->f:Lk/s0;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :goto_0
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v4, 0x0

    iget-object v5, p0, Lk/C0;->z:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v0, v5, Landroid/graphics/Rect;->top:I

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v0

    iget-boolean v7, p0, Lk/C0;->l:Z

    if-nez v7, :cond_3

    neg-int v0, v0

    iput v0, p0, Lk/C0;->j:I

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    move v6, v4

    :cond_3
    :goto_1
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v7, 0x2

    if-ne v0, v7, :cond_4

    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v4

    :goto_2
    iget-object v8, p0, Lk/C0;->r:Landroid/view/View;

    iget v9, p0, Lk/C0;->j:I

    invoke-virtual {v1, v8, v9, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v0

    iget v8, p0, Lk/C0;->g:I

    const/4 v9, -0x2

    const/4 v10, -0x1

    if-ne v8, v10, :cond_5

    add-int/2addr v0, v6

    goto :goto_5

    :cond_5
    iget v11, p0, Lk/C0;->h:I

    if-eq v11, v9, :cond_7

    const/high16 v12, 0x40000000    # 2.0f

    if-eq v11, v10, :cond_6

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_3

    :cond_6
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v11, v5, Landroid/graphics/Rect;->left:I

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v5

    sub-int/2addr v3, v11

    invoke-static {v3, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_3

    :cond_7
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v11, v5, Landroid/graphics/Rect;->left:I

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v5

    sub-int/2addr v3, v11

    const/high16 v5, -0x80000000

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    :goto_3
    iget-object v5, p0, Lk/C0;->f:Lk/s0;

    add-int/2addr v0, v4

    invoke-virtual {v5, v3, v0}, Lk/s0;->a(II)I

    move-result v0

    if-lez v0, :cond_8

    iget-object v3, p0, Lk/C0;->f:Lk/s0;

    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v3

    iget-object v5, p0, Lk/C0;->f:Lk/s0;

    invoke-virtual {v5}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v5

    add-int/2addr v5, v3

    add-int/2addr v5, v6

    add-int/2addr v5, v4

    goto :goto_4

    :cond_8
    move v5, v4

    :goto_4
    add-int/2addr v0, v5

    :goto_5
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v3

    if-ne v3, v7, :cond_9

    move v3, v2

    goto :goto_6

    :cond_9
    move v3, v4

    :goto_6
    iget v5, p0, Lk/C0;->k:I

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_15

    iget-object v5, p0, Lk/C0;->r:Landroid/view/View;

    sget-object v6, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v5}, Landroidx/core/view/A;->b(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_a

    return-void

    :cond_a
    iget v5, p0, Lk/C0;->h:I

    if-ne v5, v10, :cond_b

    move v5, v10

    goto :goto_7

    :cond_b
    if-ne v5, v9, :cond_c

    iget-object v5, p0, Lk/C0;->r:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    :cond_c
    :goto_7
    if-ne v8, v10, :cond_11

    if-eqz v3, :cond_d

    move v8, v0

    goto :goto_8

    :cond_d
    move v8, v10

    :goto_8
    if-eqz v3, :cond_f

    iget v0, p0, Lk/C0;->h:I

    if-ne v0, v10, :cond_e

    move v0, v10

    goto :goto_9

    :cond_e
    move v0, v4

    :goto_9
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_a

    :cond_f
    iget v0, p0, Lk/C0;->h:I

    if-ne v0, v10, :cond_10

    move v4, v10

    :cond_10
    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v1, v10}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_a

    :cond_11
    if-ne v8, v9, :cond_12

    move v8, v0

    :cond_12
    :goto_a
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v2, p0, Lk/C0;->r:Landroid/view/View;

    iget v3, p0, Lk/C0;->i:I

    iget v4, p0, Lk/C0;->j:I

    if-gez v5, :cond_13

    move v5, v10

    :cond_13
    if-gez v8, :cond_14

    move v6, v10

    goto :goto_b

    :cond_14
    move v6, v8

    :goto_b
    invoke-virtual/range {v1 .. v6}, Lk/K;->update(Landroid/view/View;IIII)V

    goto :goto_e

    :cond_15
    iget v3, p0, Lk/C0;->h:I

    if-ne v3, v10, :cond_16

    move v3, v10

    goto :goto_c

    :cond_16
    if-ne v3, v9, :cond_17

    iget-object v3, p0, Lk/C0;->r:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    :cond_17
    :goto_c
    if-ne v8, v10, :cond_18

    move v8, v10

    goto :goto_d

    :cond_18
    if-ne v8, v9, :cond_19

    move v8, v0

    :cond_19
    :goto_d
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v1, v8}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setIsClippedToScreen(Z)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lk/C0;->v:Lk/B0;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    iget-boolean v0, p0, Lk/C0;->n:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lk/C0;->m:Z

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    :cond_1a
    iget-object v0, p0, Lk/C0;->A:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lk/C0;->r:Landroid/view/View;

    iget v3, p0, Lk/C0;->i:I

    iget v4, p0, Lk/C0;->j:I

    iget v5, p0, Lk/C0;->o:I

    invoke-virtual {v1, v0, v3, v4, v5}, Lk/K;->showAsDropDown(Landroid/view/View;III)V

    iget-object v0, p0, Lk/C0;->f:Lk/s0;

    invoke-virtual {v0, v10}, Landroid/widget/ListView;->setSelection(I)V

    iget-boolean v0, p0, Lk/C0;->B:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lk/C0;->f:Lk/s0;

    invoke-virtual {v0}, Lk/s0;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1b
    iget-object v0, p0, Lk/C0;->f:Lk/s0;

    if-eqz v0, :cond_1c

    iput-boolean v2, v0, Lk/s0;->k:Z

    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    :cond_1c
    iget-boolean v0, p0, Lk/C0;->B:Z

    if-nez v0, :cond_1d

    iget-object v0, p0, Lk/C0;->y:Landroid/os/Handler;

    iget-object p0, p0, Lk/C0;->x:Lk/x0;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1d
    :goto_e
    return-void
.end method
