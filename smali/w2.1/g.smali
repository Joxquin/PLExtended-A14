.class public final Lw2/g;
.super Lx2/x;
.source "SourceFile"

# interfaces
.implements Lv2/a;
.implements LC2/y;
.implements Lz/b;


# instance fields
.field public e:Landroid/content/res/ColorStateList;

.field public f:Landroid/graphics/PorterDuff$Mode;

.field public g:Lw2/q;


# virtual methods
.method public final a()Lz/c;
    .locals 0

    new-instance p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$Behavior;

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$Behavior;-><init>()V

    return-object p0
.end method

.method public final b(LC2/n;)V
    .locals 0

    invoke-virtual {p0}, Lw2/g;->e()Lw2/p;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final c()Z
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageButton;->drawableStateChanged()V

    invoke-virtual {p0}, Lw2/g;->e()Lw2/p;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Lw2/p;->f([I)V

    return-void
.end method

.method public final e()Lw2/p;
    .locals 2

    iget-object v0, p0, Lw2/g;->g:Lw2/q;

    if-nez v0, :cond_0

    new-instance v0, Lw2/q;

    new-instance v1, Lw2/e;

    invoke-direct {v1, p0}, Lw2/e;-><init>(Lw2/g;)V

    invoke-direct {v0, p0, v1}, Lw2/q;-><init>(Lw2/g;Lw2/e;)V

    iput-object v0, p0, Lw2/g;->g:Lw2/q;

    :cond_0
    iget-object p0, p0, Lw2/g;->g:Lw2/q;

    return-object p0
.end method

.method public final f(I)I
    .locals 3

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    if-eq p1, v2, :cond_0

    const p0, 0x7f070113

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_0
    const p0, 0x7f070112

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v0, 0x1d6

    if-ge p1, v0, :cond_2

    invoke-virtual {p0, v2}, Lw2/g;->f(I)I

    move-result p0

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lw2/g;->f(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final g()V
    .locals 6

    invoke-virtual {p0}, Lw2/g;->e()Lw2/p;

    move-result-object p0

    iget-object v0, p0, Lw2/p;->l:Lw2/g;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget v1, p0, Lw2/p;->h:I

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_0
    iget v1, p0, Lw2/p;->h:I

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    :goto_0
    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    goto :goto_5

    :cond_2
    iget-object v1, p0, Lw2/p;->c:Landroid/animation/Animator;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_3
    sget-object v1, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lw2/p;->l:Lw2/g;

    invoke-static {v1}, Landroidx/core/view/A;->c(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Landroid/widget/ImageButton;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    move v3, v2

    :goto_2
    if-eqz v3, :cond_7

    iget-object v0, p0, Lw2/p;->e:Lj2/g;

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Lw2/p;->a(Lj2/g;FFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    const v2, 0x3ecccccd    # 0.4f

    const v3, 0x3ecccccd    # 0.4f

    sget v4, Lw2/p;->t:I

    sget v5, Lw2/p;->u:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lw2/p;->b(FFFII)Landroid/animation/AnimatorSet;

    move-result-object v0

    :goto_3
    new-instance v1, Lw2/h;

    invoke-direct {v1, p0}, Lw2/h;-><init>(Lw2/p;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lw2/p;->j:Ljava/util/ArrayList;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_5

    :cond_7
    const/4 p0, 0x4

    invoke-virtual {v0, p0, v2}, Lx2/x;->d(IZ)V

    :goto_5
    return-void
.end method

.method public final getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lw2/g;->e:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public final getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    iget-object p0, p0, Lw2/g;->f:Landroid/graphics/PorterDuff$Mode;

    return-object p0
.end method

.method public final h()V
    .locals 7

    invoke-virtual {p0}, Lw2/g;->e()Lw2/p;

    move-result-object p0

    iget-object v0, p0, Lw2/p;->l:Lw2/g;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lw2/p;->h:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    iget v0, p0, Lw2/p;->h:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_2

    goto/16 :goto_8

    :cond_2
    iget-object v0, p0, Lw2/p;->c:Landroid/animation/Animator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_3
    iget-object v0, p0, Lw2/p;->d:Lj2/g;

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    sget-object v3, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    iget-object v3, p0, Lw2/p;->l:Lw2/g;

    invoke-static {v3}, Landroidx/core/view/A;->c(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Landroid/widget/ImageButton;->isInEditMode()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    iget-object v4, p0, Lw2/p;->o:Landroid/graphics/Matrix;

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v1, :cond_c

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    const v2, 0x3ecccccd    # 0.4f

    if-eqz v0, :cond_6

    move v6, v2

    goto :goto_4

    :cond_6
    move v6, v1

    :goto_4
    invoke-virtual {v3, v6}, Lw2/g;->setScaleY(F)V

    if-eqz v0, :cond_7

    move v6, v2

    goto :goto_5

    :cond_7
    move v6, v1

    :goto_5
    invoke-virtual {v3, v6}, Lw2/g;->setScaleX(F)V

    if-eqz v0, :cond_8

    move v1, v2

    :cond_8
    iput v1, p0, Lw2/p;->g:F

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_9
    iget-object v0, p0, Lw2/p;->d:Lj2/g;

    if-eqz v0, :cond_a

    invoke-virtual {p0, v0, v5, v5, v5}, Lw2/p;->a(Lj2/g;FFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    goto :goto_6

    :cond_a
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    sget v4, Lw2/p;->r:I

    sget v5, Lw2/p;->s:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lw2/p;->b(FFFII)Landroid/animation/AnimatorSet;

    move-result-object v0

    :goto_6
    new-instance v1, Lw2/i;

    invoke-direct {v1, p0}, Lw2/i;-><init>(Lw2/p;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lw2/p;->i:Ljava/util/ArrayList;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_7

    :cond_b
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_8

    :cond_c
    invoke-virtual {v3, v2, v2}, Lx2/x;->d(IZ)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    invoke-virtual {v3, v5}, Lw2/g;->setScaleY(F)V

    invoke-virtual {v3, v5}, Lw2/g;->setScaleX(F)V

    iput v5, p0, Lw2/p;->g:F

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageMatrix(Landroid/graphics/Matrix;)V

    :goto_8
    return-void
.end method

.method public final jumpDrawablesToCurrentState()V
    .locals 0

    invoke-super {p0}, Landroid/widget/ImageButton;->jumpDrawablesToCurrentState()V

    invoke-virtual {p0}, Lw2/g;->e()Lw2/p;

    move-result-object p0

    invoke-virtual {p0}, Lw2/p;->e()V

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/ImageButton;->onAttachedToWindow()V

    invoke-virtual {p0}, Lw2/g;->e()Lw2/p;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lw2/q;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lw2/p;->l:Lw2/g;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lw2/p;->p:Lw2/l;

    if-nez v1, :cond_0

    new-instance v1, Lw2/l;

    invoke-direct {v1, p0}, Lw2/l;-><init>(Lw2/p;)V

    iput-object v1, p0, Lw2/p;->p:Lw2/l;

    :cond_0
    iget-object p0, p0, Lw2/p;->p:Lw2/l;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/ImageButton;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lw2/g;->e()Lw2/p;

    move-result-object p0

    iget-object v0, p0, Lw2/p;->l:Lw2/g;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lw2/p;->p:Lw2/l;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lw2/p;->p:Lw2/l;

    :cond_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lw2/g;->f(I)I

    move-result p2

    sub-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p0}, Lw2/g;->e()Lw2/p;

    move-result-object p0

    invoke-virtual {p0}, Lw2/p;->i()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, LE2/b;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, LE2/b;

    iget-object v0, p1, LP/c;->d:Landroid/os/Parcelable;

    invoke-super {p0, v0}, Landroid/widget/ImageButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object p0, p1, LE2/b;->f:Lq/m;

    const-string p1, "expandableWidgetHelper"

    invoke-virtual {p0, p1}, Lq/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageButton;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    new-instance v0, LE2/b;

    invoke-direct {v0, p0}, LE2/b;-><init>(Landroid/os/Parcelable;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/A;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getWidth()I

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getHeight()I

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final setBackgroundColor(I)V
    .locals 0

    const-string p0, "FloatingActionButton"

    const-string p1, "Setting a custom background is not supported."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    const-string p0, "FloatingActionButton"

    const-string p1, "Setting a custom background is not supported."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setBackgroundResource(I)V
    .locals 0

    const-string p0, "FloatingActionButton"

    const-string p1, "Setting a custom background is not supported."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lw2/g;->e:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lw2/g;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lw2/g;->e()Lw2/p;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public final setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lw2/g;->f:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lw2/g;->f:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0}, Lw2/g;->e()Lw2/p;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public final setElevation(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setElevation(F)V

    invoke-virtual {p0}, Lw2/g;->e()Lw2/p;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lw2/g;->e()Lw2/p;

    move-result-object p0

    iget p1, p0, Lw2/p;->g:F

    iput p1, p0, Lw2/p;->g:F

    iget-object p1, p0, Lw2/p;->o:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    iget-object p0, p0, Lw2/p;->l:Lw2/g;

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method public final setImageResource(I)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final setScaleX(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setScaleX(F)V

    invoke-virtual {p0}, Lw2/g;->e()Lw2/p;

    move-result-object p0

    iget-object p0, p0, Lw2/p;->k:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw2/n;

    invoke-interface {p1}, Lw2/n;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setScaleY(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setScaleY(F)V

    invoke-virtual {p0}, Lw2/g;->e()Lw2/p;

    move-result-object p0

    iget-object p0, p0, Lw2/p;->k:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw2/n;

    invoke-interface {p1}, Lw2/n;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setShadowPaddingEnabled(Z)V
    .locals 0

    invoke-virtual {p0}, Lw2/g;->e()Lw2/p;

    move-result-object p0

    iput-boolean p1, p0, Lw2/p;->a:Z

    invoke-virtual {p0}, Lw2/p;->i()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final setTranslationX(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setTranslationX(F)V

    invoke-virtual {p0}, Lw2/g;->e()Lw2/p;

    move-result-object p0

    invoke-virtual {p0}, Lw2/p;->g()V

    return-void
.end method

.method public final setTranslationY(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setTranslationY(F)V

    invoke-virtual {p0}, Lw2/g;->e()Lw2/p;

    move-result-object p0

    invoke-virtual {p0}, Lw2/p;->g()V

    return-void
.end method

.method public final setTranslationZ(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setTranslationZ(F)V

    invoke-virtual {p0}, Lw2/g;->e()Lw2/p;

    move-result-object p0

    invoke-virtual {p0}, Lw2/p;->g()V

    return-void
.end method

.method public final setVisibility(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lx2/x;->d(IZ)V

    return-void
.end method
