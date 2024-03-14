.class public final Landroidx/appcompat/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/C;


# instance fields
.field public d:Lj/o;

.field public e:Lj/r;

.field public final synthetic f:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/a;->f:Landroidx/appcompat/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lj/o;Z)V
    .locals 0

    return-void
.end method

.method public final c(Lj/r;)Z
    .locals 7

    iget-object v0, p0, Landroidx/appcompat/widget/a;->f:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->k:Lk/G;

    const v2, 0x800003

    const/4 v3, 0x2

    if-nez v1, :cond_0

    new-instance v1, Lk/G;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x7f0405d8

    invoke-direct {v1, v4, v5, v6}, Lk/G;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, v0, Landroidx/appcompat/widget/Toolbar;->k:Lk/G;

    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Lk/G;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->k:Lk/G;

    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->j:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v1, Lk/W0;

    invoke-direct {v1}, Lk/W0;-><init>()V

    iget v4, v0, Landroidx/appcompat/widget/Toolbar;->q:I

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v4, v2

    iput v4, v1, Le/a;->a:I

    iput v3, v1, Lk/W0;->b:I

    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->k:Lk/G;

    invoke-virtual {v4, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->k:Lk/G;

    new-instance v4, Lk/V0;

    invoke-direct {v4, v0}, Lk/V0;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->k:Lk/G;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v1, v0, :cond_2

    instance-of v4, v1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->k:Lk/G;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->k:Lk/G;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p1}, Lj/r;->getActionView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroidx/appcompat/widget/Toolbar;->l:Landroid/view/View;

    iput-object p1, p0, Landroidx/appcompat/widget/a;->e:Lj/r;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eq p0, v0, :cond_4

    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    check-cast p0, Landroid/view/ViewGroup;

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->l:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    new-instance p0, Lk/W0;

    invoke-direct {p0}, Lk/W0;-><init>()V

    iget v1, v0, Landroidx/appcompat/widget/Toolbar;->q:I

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v1, v2

    iput v1, p0, Le/a;->a:I

    iput v3, p0, Lk/W0;->b:I

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->l:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, v0, Landroidx/appcompat/widget/Toolbar;->l:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    :cond_5
    :goto_0
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_6

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lk/W0;

    iget v2, v2, Lk/W0;->b:I

    if-eq v2, v3, :cond_5

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->d:Landroidx/appcompat/widget/ActionMenuView;

    if-eq v1, v2, :cond_5

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->H:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    const/4 p0, 0x1

    iput-boolean p0, p1, Lj/r;->C:Z

    iget-object p1, p1, Lj/r;->n:Lj/o;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lj/o;->p(Z)V

    iget-object p1, v0, Landroidx/appcompat/widget/Toolbar;->l:Landroid/view/View;

    instance-of v1, p1, Li/c;

    if-eqz v1, :cond_7

    check-cast p1, Li/c;

    invoke-interface {p1}, Li/c;->a()V

    :cond_7
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->z()V

    return p0
.end method

.method public final d()V
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/widget/a;->e:Lj/r;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/a;->d:Lj/o;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lj/o;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Landroidx/appcompat/widget/a;->d:Lj/o;

    invoke-virtual {v3, v2}, Lj/o;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v4, p0, Landroidx/appcompat/widget/a;->e:Lj/r;

    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/a;->e:Lj/r;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/a;->h(Lj/r;)Z

    :cond_2
    return-void
.end method

.method public final f(Landroid/content/Context;Lj/o;)V
    .locals 1

    iget-object p1, p0, Landroidx/appcompat/widget/a;->d:Lj/o;

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/a;->e:Lj/r;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lj/o;->d(Lj/r;)Z

    :cond_0
    iput-object p2, p0, Landroidx/appcompat/widget/a;->d:Lj/o;

    return-void
.end method

.method public final g()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final h(Lj/r;)Z
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/widget/a;->f:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->l:Landroid/view/View;

    instance-of v2, v1, Li/c;

    if-eqz v2, :cond_0

    check-cast v1, Li/c;

    invoke-interface {v1}, Li/c;->b()V

    :cond_0
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->k:Lk/G;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/widget/Toolbar;->l:Landroid/view/View;

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->H:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1

    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->H:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->H:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p0, Landroidx/appcompat/widget/a;->e:Lj/r;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    const/4 p0, 0x0

    iput-boolean p0, p1, Lj/r;->C:Z

    iget-object p1, p1, Lj/r;->n:Lj/o;

    invoke-virtual {p1, p0}, Lj/o;->p(Z)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->z()V

    const/4 p0, 0x1

    return p0
.end method

.method public final j(Lj/L;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
