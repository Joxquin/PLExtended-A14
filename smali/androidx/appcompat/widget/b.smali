.class public final Landroidx/appcompat/widget/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/n0;


# instance fields
.field public final a:Landroidx/appcompat/widget/Toolbar;

.field public b:I

.field public c:Landroid/view/View;

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:Landroid/graphics/drawable/Drawable;

.field public f:Landroid/graphics/drawable/Drawable;

.field public g:Z

.field public h:Ljava/lang/CharSequence;

.field public i:Ljava/lang/CharSequence;

.field public j:Ljava/lang/CharSequence;

.field public k:Landroid/view/Window$Callback;

.field public l:Z

.field public m:Lk/n;

.field public n:I

.field public o:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/b;->n:I

    iput-object p1, p0, Landroidx/appcompat/widget/b;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p1, Landroidx/appcompat/widget/Toolbar;->A:Ljava/lang/CharSequence;

    iput-object v1, p0, Landroidx/appcompat/widget/b;->h:Ljava/lang/CharSequence;

    iget-object v2, p1, Landroidx/appcompat/widget/Toolbar;->B:Ljava/lang/CharSequence;

    iput-object v2, p0, Landroidx/appcompat/widget/b;->i:Ljava/lang/CharSequence;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Landroidx/appcompat/widget/b;->g:Z

    iget-object v1, p1, Landroidx/appcompat/widget/Toolbar;->g:Lk/G;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    iput-object v1, p0, Landroidx/appcompat/widget/b;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v4, Ld/a;->a:[I

    const v5, 0x7f040008

    invoke-static {v1, v3, v4, v5}, Lk/R0;->m(Landroid/content/Context;Landroid/util/AttributeSet;[II)Lk/R0;

    move-result-object v1

    const/16 v4, 0xf

    invoke-virtual {v1, v4}, Lk/R0;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroidx/appcompat/widget/b;->o:Landroid/graphics/drawable/Drawable;

    const/16 v4, 0x1b

    invoke-virtual {v1, v4}, Lk/R0;->k(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iput-boolean v2, p0, Landroidx/appcompat/widget/b;->g:Z

    iput-object v4, p0, Landroidx/appcompat/widget/b;->h:Ljava/lang/CharSequence;

    iget v2, p0, Landroidx/appcompat/widget/b;->b:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_2

    invoke-virtual {p1, v4}, Landroidx/appcompat/widget/Toolbar;->x(Ljava/lang/CharSequence;)V

    iget-boolean v2, p0, Landroidx/appcompat/widget/b;->g:Z

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v4}, Landroidx/core/view/J;->i(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_2
    const/16 v2, 0x19

    invoke-virtual {v1, v2}, Lk/R0;->k(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iput-object v2, p0, Landroidx/appcompat/widget/b;->i:Ljava/lang/CharSequence;

    iget v4, p0, Landroidx/appcompat/widget/b;->b:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_3

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/Toolbar;->w(Ljava/lang/CharSequence;)V

    :cond_3
    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lk/R0;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_4

    iput-object v2, p0, Landroidx/appcompat/widget/b;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/appcompat/widget/b;->w()V

    :cond_4
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lk/R0;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_5

    iput-object v2, p0, Landroidx/appcompat/widget/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/appcompat/widget/b;->w()V

    :cond_5
    iget-object v2, p0, Landroidx/appcompat/widget/b;->f:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_7

    iget-object v2, p0, Landroidx/appcompat/widget/b;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7

    iput-object v2, p0, Landroidx/appcompat/widget/b;->f:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Landroidx/appcompat/widget/b;->b:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_6

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/Toolbar;->v(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/Toolbar;->v(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    :goto_2
    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lk/R0;->h(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/b;->n(I)V

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Lk/R0;->i(II)I

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v4, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Landroidx/appcompat/widget/b;->c:Landroid/view/View;

    if-eqz v4, :cond_8

    iget v5, p0, Landroidx/appcompat/widget/b;->b:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_8

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_8
    iput-object v2, p0, Landroidx/appcompat/widget/b;->c:Landroid/view/View;

    if-eqz v2, :cond_9

    iget v4, p0, Landroidx/appcompat/widget/b;->b:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_9

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_9
    iget v2, p0, Landroidx/appcompat/widget/b;->b:I

    or-int/lit8 v2, v2, 0x10

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/b;->n(I)V

    :cond_a
    iget-object v2, v1, Lk/R0;->b:Landroid/content/res/TypedArray;

    const/16 v4, 0xd

    invoke-virtual {v2, v4, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    if-lez v2, :cond_b

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    const/4 v2, 0x7

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v4}, Lk/R0;->c(II)I

    move-result v2

    const/4 v5, 0x3

    invoke-virtual {v1, v5, v4}, Lk/R0;->c(II)I

    move-result v4

    if-gez v2, :cond_c

    if-ltz v4, :cond_e

    :cond_c
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, p1, Landroidx/appcompat/widget/Toolbar;->w:Lk/J0;

    if-nez v5, :cond_d

    new-instance v5, Lk/J0;

    invoke-direct {v5}, Lk/J0;-><init>()V

    iput-object v5, p1, Landroidx/appcompat/widget/Toolbar;->w:Lk/J0;

    :cond_d
    iget-object v5, p1, Landroidx/appcompat/widget/Toolbar;->w:Lk/J0;

    invoke-virtual {v5, v2, v4}, Lk/J0;->a(II)V

    :cond_e
    const/16 v2, 0x1c

    invoke-virtual {v1, v2, v0}, Lk/R0;->i(II)I

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    iput v2, p1, Landroidx/appcompat/widget/Toolbar;->o:I

    iget-object v5, p1, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v5, :cond_f

    invoke-virtual {v5, v4, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_f
    const/16 v2, 0x1a

    invoke-virtual {v1, v2, v0}, Lk/R0;->i(II)I

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    iput v2, p1, Landroidx/appcompat/widget/Toolbar;->p:I

    iget-object v5, p1, Landroidx/appcompat/widget/Toolbar;->f:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v5, :cond_10

    invoke-virtual {v5, v4, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_10
    const/16 v2, 0x16

    invoke-virtual {v1, v2, v0}, Lk/R0;->i(II)I

    move-result v0

    if-eqz v0, :cond_12

    iget v2, p1, Landroidx/appcompat/widget/Toolbar;->n:I

    if-eq v2, v0, :cond_12

    iput v0, p1, Landroidx/appcompat/widget/Toolbar;->n:I

    if-nez v0, :cond_11

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p1, Landroidx/appcompat/widget/Toolbar;->m:Landroid/content/Context;

    goto :goto_3

    :cond_11
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p1, Landroidx/appcompat/widget/Toolbar;->m:Landroid/content/Context;

    :cond_12
    :goto_3
    invoke-virtual {v1}, Lk/R0;->n()V

    iget v0, p0, Landroidx/appcompat/widget/b;->n:I

    const v1, 0x7f130005

    if-ne v1, v0, :cond_13

    goto :goto_6

    :cond_13
    iput v1, p0, Landroidx/appcompat/widget/b;->n:I

    iget-object v0, p1, Landroidx/appcompat/widget/Toolbar;->g:Lk/G;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_4

    :cond_14
    move-object v0, v3

    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget v0, p0, Landroidx/appcompat/widget/b;->n:I

    if-nez v0, :cond_15

    move-object v0, v3

    goto :goto_5

    :cond_15
    invoke-virtual {p0}, Landroidx/appcompat/widget/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Landroidx/appcompat/widget/b;->j:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/appcompat/widget/b;->v()V

    :cond_16
    :goto_6
    iget-object v0, p1, Landroidx/appcompat/widget/Toolbar;->g:Lk/G;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    :cond_17
    iput-object v3, p0, Landroidx/appcompat/widget/b;->j:Ljava/lang/CharSequence;

    new-instance v0, Lk/Z0;

    invoke-direct {v0, p0}, Lk/Z0;-><init>(Landroidx/appcompat/widget/b;)V

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->e()V

    iget-object p0, p1, Landroidx/appcompat/widget/Toolbar;->g:Lk/G;

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/widget/b;->g:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/appcompat/widget/b;->h:Ljava/lang/CharSequence;

    iget v0, p0, Landroidx/appcompat/widget/b;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/b;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->x(Ljava/lang/CharSequence;)V

    iget-boolean p0, p0, Landroidx/appcompat/widget/b;->g:Z

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/core/view/J;->i(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 2

    iget-object p0, p0, Landroidx/appcompat/widget/b;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->w:Lk/n;

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lk/n;->k()Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    if-eqz p0, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method public final c(Landroid/view/Window$Callback;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/b;->k:Landroid/view/Window$Callback;

    return-void
.end method

.method public final collapseActionView()V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/b;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->O:Landroidx/appcompat/widget/a;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/a;->e:Lj/r;

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lj/r;->collapseActionView()Z

    :cond_1
    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/b;->l:Z

    return-void
.end method

.method public final e()Z
    .locals 3

    iget-object p0, p0, Landroidx/appcompat/widget/b;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->w:Lk/n;

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    iget-object v2, p0, Lk/n;->v:Lk/k;

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lk/n;->k()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v1

    :goto_1
    if-eqz p0, :cond_2

    move p0, v1

    goto :goto_2

    :cond_2
    move p0, v0

    :goto_2
    if-eqz p0, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method public final f()Z
    .locals 2

    iget-object p0, p0, Landroidx/appcompat/widget/b;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->w:Lk/n;

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lk/n;->e()Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    if-eqz p0, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method public final g(Lj/o;Le/t;)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/b;->m:Lk/n;

    iget-object v1, p0, Landroidx/appcompat/widget/b;->a:Landroidx/appcompat/widget/Toolbar;

    if-nez v0, :cond_0

    new-instance v0, Lk/n;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lk/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/b;->m:Lk/n;

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/b;->m:Lk/n;

    iput-object p2, p0, Lk/n;->h:Lj/B;

    if-nez p1, :cond_1

    iget-object p2, v1, Landroidx/appcompat/widget/Toolbar;->d:Landroidx/appcompat/widget/ActionMenuView;

    if-nez p2, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->d()V

    iget-object p2, v1, Landroidx/appcompat/widget/Toolbar;->d:Landroidx/appcompat/widget/ActionMenuView;

    iget-object p2, p2, Landroidx/appcompat/widget/ActionMenuView;->s:Lj/o;

    if-ne p2, p1, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_3

    iget-object v0, v1, Landroidx/appcompat/widget/Toolbar;->N:Lk/n;

    invoke-virtual {p2, v0}, Lj/o;->r(Lj/C;)V

    iget-object v0, v1, Landroidx/appcompat/widget/Toolbar;->O:Landroidx/appcompat/widget/a;

    invoke-virtual {p2, v0}, Lj/o;->r(Lj/C;)V

    :cond_3
    iget-object p2, v1, Landroidx/appcompat/widget/Toolbar;->O:Landroidx/appcompat/widget/a;

    if-nez p2, :cond_4

    new-instance p2, Landroidx/appcompat/widget/a;

    invoke-direct {p2, v1}, Landroidx/appcompat/widget/a;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object p2, v1, Landroidx/appcompat/widget/Toolbar;->O:Landroidx/appcompat/widget/a;

    :cond_4
    const/4 p2, 0x1

    iput-boolean p2, p0, Lk/n;->r:Z

    if-eqz p1, :cond_5

    iget-object p2, v1, Landroidx/appcompat/widget/Toolbar;->m:Landroid/content/Context;

    invoke-virtual {p1, p0, p2}, Lj/o;->b(Lj/C;Landroid/content/Context;)V

    iget-object p2, v1, Landroidx/appcompat/widget/Toolbar;->O:Landroidx/appcompat/widget/a;

    iget-object v0, v1, Landroidx/appcompat/widget/Toolbar;->m:Landroid/content/Context;

    invoke-virtual {p1, p2, v0}, Lj/o;->b(Lj/C;Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    iget-object p1, v1, Landroidx/appcompat/widget/Toolbar;->m:Landroid/content/Context;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lk/n;->f(Landroid/content/Context;Lj/o;)V

    iget-object p1, v1, Landroidx/appcompat/widget/Toolbar;->O:Landroidx/appcompat/widget/a;

    iget-object v0, v1, Landroidx/appcompat/widget/Toolbar;->m:Landroid/content/Context;

    invoke-virtual {p1, v0, p2}, Landroidx/appcompat/widget/a;->f(Landroid/content/Context;Lj/o;)V

    invoke-virtual {p0}, Lk/n;->d()V

    iget-object p1, v1, Landroidx/appcompat/widget/Toolbar;->O:Landroidx/appcompat/widget/a;

    invoke-virtual {p1}, Landroidx/appcompat/widget/a;->d()V

    :goto_0
    iget-object p1, v1, Landroidx/appcompat/widget/Toolbar;->d:Landroidx/appcompat/widget/ActionMenuView;

    iget p2, v1, Landroidx/appcompat/widget/Toolbar;->n:I

    iget v0, p1, Landroidx/appcompat/widget/ActionMenuView;->u:I

    if-eq v0, p2, :cond_7

    iput p2, p1, Landroidx/appcompat/widget/ActionMenuView;->u:I

    if-nez p2, :cond_6

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p1, Landroidx/appcompat/widget/ActionMenuView;->t:Landroid/content/Context;

    goto :goto_1

    :cond_6
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p1, Landroidx/appcompat/widget/ActionMenuView;->t:Landroid/content/Context;

    :cond_7
    :goto_1
    iget-object p1, v1, Landroidx/appcompat/widget/Toolbar;->d:Landroidx/appcompat/widget/ActionMenuView;

    iput-object p0, p1, Landroidx/appcompat/widget/ActionMenuView;->w:Lk/n;

    iput-object p1, p0, Lk/n;->k:Lj/E;

    iget-object p2, p0, Lk/n;->f:Lj/o;

    iput-object p2, p1, Landroidx/appcompat/widget/ActionMenuView;->s:Lj/o;

    iput-object p0, v1, Landroidx/appcompat/widget/Toolbar;->N:Lk/n;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->z()V

    :goto_2
    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/b;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public final h()Z
    .locals 2

    iget-object p0, p0, Landroidx/appcompat/widget/b;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->w:Lk/n;

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lk/n;->l()Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    if-eqz p0, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method public final i()Z
    .locals 1

    iget-object p0, p0, Landroidx/appcompat/widget/b;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Landroidx/appcompat/widget/ActionMenuView;->v:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final j()V
    .locals 1

    iget-object p0, p0, Landroidx/appcompat/widget/b;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->w:Lk/n;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lk/n;->e()Z

    iget-object p0, p0, Lk/n;->u:Lk/i;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lj/A;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lj/A;->j:Lj/y;

    invoke-interface {p0}, Lj/G;->dismiss()V

    :cond_0
    return-void
.end method

.method public final k(I)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/b;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public final l()V
    .locals 0

    return-void
.end method

.method public final m()Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/b;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->O:Landroidx/appcompat/widget/a;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/a;->e:Lj/r;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final n(I)V
    .locals 4

    iget v0, p0, Landroidx/appcompat/widget/b;->b:I

    xor-int/2addr v0, p1

    iput p1, p0, Landroidx/appcompat/widget/b;->b:I

    if-eqz v0, :cond_8

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/appcompat/widget/b;->a:Landroidx/appcompat/widget/Toolbar;

    if-eqz v1, :cond_3

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/b;->v()V

    :cond_0
    iget v1, p0, Landroidx/appcompat/widget/b;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/appcompat/widget/b;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/b;->o:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/Toolbar;->v(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/Toolbar;->v(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_1
    and-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroidx/appcompat/widget/b;->w()V

    :cond_4
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_6

    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroidx/appcompat/widget/b;->h:Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/Toolbar;->x(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroidx/appcompat/widget/b;->i:Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/Toolbar;->w(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/Toolbar;->x(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/Toolbar;->w(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_2
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    iget-object p0, p0, Landroidx/appcompat/widget/b;->c:Landroid/view/View;

    if-eqz p0, :cond_8

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_7

    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public final o()V
    .locals 0

    return-void
.end method

.method public final p()I
    .locals 0

    iget p0, p0, Landroidx/appcompat/widget/b;->b:I

    return p0
.end method

.method public final q()V
    .locals 0

    return-void
.end method

.method public final r(IJ)Landroidx/core/view/O;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/b;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v0}, Landroidx/core/view/J;->a(Landroid/view/View;)Landroidx/core/view/O;

    move-result-object v0

    if-nez p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/core/view/O;->a(F)V

    invoke-virtual {v0, p2, p3}, Landroidx/core/view/O;->c(J)V

    new-instance p2, Lk/a1;

    invoke-direct {p2, p0, p1}, Lk/a1;-><init>(Landroidx/appcompat/widget/b;I)V

    invoke-virtual {v0, p2}, Landroidx/core/view/O;->d(Landroidx/core/view/P;)V

    return-object v0
.end method

.method public final s()V
    .locals 1

    const-string p0, "ToolbarWidgetWrapper"

    const-string v0, "Progress display unsupported"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final t()V
    .locals 1

    const-string p0, "ToolbarWidgetWrapper"

    const-string v0, "Progress display unsupported"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final u(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/b;->a:Landroidx/appcompat/widget/Toolbar;

    iput-boolean p1, p0, Landroidx/appcompat/widget/Toolbar;->P:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public final v()V
    .locals 2

    iget v0, p0, Landroidx/appcompat/widget/b;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/b;->j:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/b;->a:Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_1

    iget p0, p0, Landroidx/appcompat/widget/b;->n:I

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v1, p0}, Landroidx/appcompat/widget/Toolbar;->u(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Landroidx/appcompat/widget/b;->j:Ljava/lang/CharSequence;

    invoke-virtual {v1, p0}, Landroidx/appcompat/widget/Toolbar;->u(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final w()V
    .locals 2

    iget v0, p0, Landroidx/appcompat/widget/b;->b:I

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/b;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/b;->d:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/b;->d:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Landroidx/appcompat/widget/b;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->t(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
