.class public final Lk/X;
.super Lk/C0;
.source "SourceFile"

# interfaces
.implements Lk/a0;


# instance fields
.field public D:Ljava/lang/CharSequence;

.field public E:Landroid/widget/ListAdapter;

.field public final F:Landroid/graphics/Rect;

.field public G:I

.field public final synthetic H:Lk/b0;


# direct methods
.method public constructor <init>(Lk/b0;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    iput-object p1, p0, Lk/X;->H:Lk/b0;

    const/4 v0, 0x0

    const v1, 0x7f040503

    invoke-direct {p0, p2, p3, v1, v0}, Lk/C0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lk/X;->F:Landroid/graphics/Rect;

    iput-object p1, p0, Lk/C0;->r:Landroid/view/View;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lk/C0;->B:Z

    iget-object p2, p0, Lk/C0;->C:Lk/K;

    invoke-virtual {p2, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    new-instance p1, Lk/V;

    invoke-direct {p1, p0}, Lk/V;-><init>(Lk/X;)V

    iput-object p1, p0, Lk/C0;->s:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lk/X;->D:Ljava/lang/CharSequence;

    return-void
.end method

.method public final i(I)V
    .locals 0

    iput p1, p0, Lk/X;->G:I

    return-void
.end method

.method public final l(II)V
    .locals 5

    invoke-virtual {p0}, Lk/C0;->b()Z

    move-result v0

    invoke-virtual {p0}, Lk/X;->r()V

    const/4 v1, 0x2

    iget-object v2, p0, Lk/C0;->C:Lk/K;

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    invoke-virtual {p0}, Lk/C0;->show()V

    iget-object v1, p0, Lk/C0;->f:Lk/s0;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setTextDirection(I)V

    invoke-virtual {v1, p2}, Landroid/view/View;->setTextAlignment(I)V

    iget-object p1, p0, Lk/X;->H:Lk/b0;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p2

    iget-object v1, p0, Lk/C0;->f:Lk/s0;

    invoke-virtual {p0}, Lk/C0;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, v1, Lk/s0;->k:Z

    invoke-virtual {v1, p2}, Landroid/widget/ListView;->setSelection(I)V

    invoke-virtual {v1}, Landroid/widget/ListView;->getChoiceMode()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, p2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p2, Lk/S;

    invoke-direct {p2, v3, p0}, Lk/S;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    new-instance p1, Lk/W;

    invoke-direct {p1, p0, p2}, Lk/W;-><init>(Lk/X;Lk/S;)V

    invoke-virtual {v2, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_2
    return-void
.end method

.method public final n()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lk/X;->D:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final o(Landroid/widget/ListAdapter;)V
    .locals 0

    invoke-super {p0, p1}, Lk/C0;->o(Landroid/widget/ListAdapter;)V

    iput-object p1, p0, Lk/X;->E:Landroid/widget/ListAdapter;

    return-void
.end method

.method public final r()V
    .locals 9

    invoke-virtual {p0}, Lk/C0;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lk/X;->H:Lk/b0;

    if-eqz v0, :cond_1

    iget-object v2, v1, Lk/b0;->k:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    invoke-static {v1}, Lk/c1;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lk/b0;->k:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lk/b0;->k:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lk/b0;->k:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move v0, v2

    :goto_0
    invoke-virtual {v1}, Landroid/widget/Spinner;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/Spinner;->getPaddingRight()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/Spinner;->getWidth()I

    move-result v4

    iget v5, v1, Lk/b0;->j:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lk/X;->E:Landroid/widget/ListAdapter;

    check-cast v5, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0}, Lk/C0;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lk/b0;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v5

    invoke-virtual {v1}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, v1, Lk/b0;->k:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v8

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    if-le v5, v6, :cond_2

    move v5, v6

    :cond_2
    sub-int v6, v4, v2

    sub-int/2addr v6, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lk/C0;->q(I)V

    goto :goto_1

    :cond_3
    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    invoke-virtual {p0, v5}, Lk/C0;->q(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v5}, Lk/C0;->q(I)V

    :goto_1
    invoke-static {v1}, Lk/c1;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_5

    sub-int/2addr v4, v3

    iget v1, p0, Lk/C0;->h:I

    sub-int/2addr v4, v1

    iget v1, p0, Lk/X;->G:I

    sub-int/2addr v4, v1

    add-int/2addr v4, v0

    goto :goto_2

    :cond_5
    iget v1, p0, Lk/X;->G:I

    add-int/2addr v2, v1

    add-int v4, v2, v0

    :goto_2
    iput v4, p0, Lk/C0;->i:I

    return-void
.end method
