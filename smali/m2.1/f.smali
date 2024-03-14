.class public final Lm2/f;
.super Landroidx/appcompat/widget/Toolbar;
.source "SourceFile"

# interfaces
.implements Lz/b;


# static fields
.field public static final synthetic U:I


# instance fields
.field public R:I

.field public S:Z

.field public T:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;


# virtual methods
.method public final A()Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e:Lz/k;

    iget-object v0, v0, Lz/k;->b:Lq/m;

    invoke-virtual {v0, p0}, Lq/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-nez p0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    if-nez v0, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    instance-of v2, v0, Lw2/g;

    if-nez v2, :cond_4

    instance-of v2, v0, Lw2/c;

    if-eqz v2, :cond_3

    :cond_4
    return-object v0

    :cond_5
    return-object v1
.end method

.method public final a()Lz/c;
    .locals 1

    iget-object v0, p0, Lm2/f;->T:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    invoke-direct {v0}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;-><init>()V

    iput-object v0, p0, Lm2/f;->T:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    :cond_0
    iget-object p0, p0, Lm2/f;->T:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    return-object p0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/widget/Toolbar;->onAttachedToWindow()V

    const/4 v0, 0x0

    invoke-static {p0, v0}, LC2/j;->b(Landroid/view/View;LC2/i;)V

    throw v0
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/Toolbar;->onLayout(ZIIII)V

    const/4 p2, 0x0

    if-nez p1, :cond_8

    const/4 p1, 0x0

    move p3, p1

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p4

    if-ge p3, p4, :cond_1

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    instance-of p5, p4, Landroidx/appcompat/widget/ActionMenuView;

    if-eqz p5, :cond_0

    check-cast p4, Landroidx/appcompat/widget/ActionMenuView;

    goto :goto_1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    move-object p4, p2

    :goto_1
    if-eqz p4, :cond_7

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p4, p3}, Landroid/view/ViewGroup;->setAlpha(F)V

    invoke-virtual {p0}, Lm2/f;->A()Landroid/view/View;

    move-result-object p3

    instance-of p5, p3, Lw2/g;

    if-eqz p5, :cond_2

    move-object p2, p3

    check-cast p2, Lw2/g;

    :cond_2
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lw2/g;->e()Lw2/p;

    move-result-object p2

    iget-object p3, p2, Lw2/p;->l:Lw2/g;

    invoke-virtual {p3}, Landroid/widget/ImageButton;->getVisibility()I

    move-result p3

    const/4 p5, 0x1

    if-eqz p3, :cond_3

    iget p2, p2, Lw2/p;->h:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_4

    goto :goto_2

    :cond_3
    iget p2, p2, Lw2/p;->h:I

    if-eq p2, p5, :cond_4

    :goto_2
    move p2, p5

    goto :goto_3

    :cond_4
    move p2, p1

    :goto_3
    if-eqz p2, :cond_5

    goto :goto_4

    :cond_5
    move p5, p1

    :goto_4
    if-nez p5, :cond_6

    new-instance p2, Lm2/a;

    invoke-direct {p2, p0, p4, p1, p1}, Lm2/a;-><init>(Lm2/f;Landroidx/appcompat/widget/ActionMenuView;IZ)V

    invoke-virtual {p2}, Lm2/a;->run()V

    goto :goto_5

    :cond_6
    iget p1, p0, Lm2/f;->R:I

    iget-boolean p2, p0, Lm2/f;->S:Z

    new-instance p3, Lm2/a;

    invoke-direct {p3, p0, p4, p1, p2}, Lm2/a;-><init>(Lm2/f;Landroidx/appcompat/widget/ActionMenuView;IZ)V

    invoke-virtual {p3}, Lm2/a;->run()V

    :cond_7
    :goto_5
    return-void

    :cond_8
    throw p2
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lm2/e;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lm2/e;

    iget-object v0, p1, LP/c;->d:Landroid/os/Parcelable;

    invoke-super {p0, v0}, Landroidx/appcompat/widget/Toolbar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Lm2/e;->f:I

    iput v0, p0, Lm2/f;->R:I

    iget-boolean p1, p1, Lm2/e;->g:Z

    iput-boolean p1, p0, Lm2/f;->S:Z

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/widget/Toolbar;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lm2/e;

    check-cast v0, Lk/Y0;

    invoke-direct {v1, v0}, Lm2/e;-><init>(Lk/Y0;)V

    iget v0, p0, Lm2/f;->R:I

    iput v0, v1, Lm2/e;->f:I

    iget-boolean p0, p0, Lm2/f;->S:Z

    iput-boolean p0, v1, Lm2/e;->g:Z

    return-object v1
.end method

.method public final setElevation(F)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final v(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->v(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final w(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public final x(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method
