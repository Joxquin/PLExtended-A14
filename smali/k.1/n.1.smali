.class public final Lk/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/C;


# instance fields
.field public final d:Landroid/content/Context;

.field public e:Landroid/content/Context;

.field public f:Lj/o;

.field public final g:Landroid/view/LayoutInflater;

.field public h:Lj/B;

.field public final i:I

.field public final j:I

.field public k:Lj/E;

.field public l:Lk/m;

.field public m:Z

.field public n:Z

.field public o:I

.field public p:I

.field public q:I

.field public r:Z

.field public final s:Landroid/util/SparseBooleanArray;

.field public t:Lk/i;

.field public u:Lk/i;

.field public v:Lk/k;

.field public w:Lk/j;

.field public final x:Lk/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk/n;->d:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lk/n;->g:Landroid/view/LayoutInflater;

    const p1, 0x7f0d0003

    iput p1, p0, Lk/n;->i:I

    const p1, 0x7f0d0002

    iput p1, p0, Lk/n;->j:I

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lk/n;->s:Landroid/util/SparseBooleanArray;

    new-instance p1, Lk/j;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lk/j;-><init>(Lk/n;I)V

    iput-object p1, p0, Lk/n;->x:Lk/j;

    return-void
.end method


# virtual methods
.method public final a(Lj/o;Z)V
    .locals 2

    invoke-virtual {p0}, Lk/n;->e()Z

    iget-object v0, p0, Lk/n;->u:Lk/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lj/A;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lj/A;->j:Lj/y;

    invoke-interface {v0}, Lj/G;->dismiss()V

    :cond_0
    iget-object p0, p0, Lk/n;->h:Lj/B;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lj/B;->a(Lj/o;Z)V

    :cond_1
    return-void
.end method

.method public final b(Lj/r;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-virtual {p1}, Lj/r;->getActionView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lj/r;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    instance-of v0, p2, Lj/D;

    if-eqz v0, :cond_1

    check-cast p2, Lj/D;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lk/n;->g:Landroid/view/LayoutInflater;

    iget v0, p0, Lk/n;->j:I

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lj/D;

    :goto_0
    invoke-interface {p2, p1}, Lj/D;->b(Lj/r;)V

    iget-object v0, p0, Lk/n;->k:Lj/E;

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    move-object v2, p2

    check-cast v2, Landroidx/appcompat/view/menu/ActionMenuItemView;

    iput-object v0, v2, Landroidx/appcompat/view/menu/ActionMenuItemView;->l:Lj/n;

    iget-object v0, p0, Lk/n;->w:Lk/j;

    if-nez v0, :cond_2

    new-instance v0, Lk/j;

    invoke-direct {v0, p0, v1}, Lk/j;-><init>(Lk/n;I)V

    iput-object v0, p0, Lk/n;->w:Lk/j;

    :cond_2
    iget-object p0, p0, Lk/n;->w:Lk/j;

    iput-object p0, v2, Landroidx/appcompat/view/menu/ActionMenuItemView;->n:Lk/j;

    move-object v0, p2

    check-cast v0, Landroid/view/View;

    :cond_3
    iget-boolean p0, p1, Lj/r;->C:Z

    if-eqz p0, :cond_4

    const/16 v1, 0x8

    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    check-cast p3, Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroidx/appcompat/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {p0}, Landroidx/appcompat/widget/ActionMenuView;->k(Landroid/view/ViewGroup$LayoutParams;)Lk/q;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    return-object v0
.end method

.method public final bridge synthetic c(Lj/r;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final d()V
    .locals 12

    iget-object v0, p0, Lk/n;->k:Lj/E;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v4, p0, Lk/n;->f:Lj/o;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lj/o;->i()V

    iget-object v4, p0, Lk/n;->f:Lj/o;

    invoke-virtual {v4}, Lj/o;->l()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v2

    move v7, v6

    :goto_0
    if-ge v6, v5, :cond_7

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lj/r;

    invoke-virtual {v8}, Lj/r;->f()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    instance-of v10, v9, Lj/D;

    if-eqz v10, :cond_1

    move-object v10, v9

    check-cast v10, Lj/D;

    invoke-interface {v10}, Lj/D;->c()Lj/r;

    move-result-object v10

    goto :goto_1

    :cond_1
    move-object v10, v1

    :goto_1
    invoke-virtual {p0, v8, v9, v0}, Lk/n;->b(Lj/r;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    if-eq v8, v10, :cond_2

    invoke-virtual {v11, v2}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {v11}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    :cond_2
    if-eq v11, v9, :cond_4

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    if-eqz v8, :cond_3

    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    iget-object v8, p0, Lk/n;->k:Lj/E;

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v11, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_4
    add-int/lit8 v7, v7, 0x1

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    move v7, v2

    :cond_7
    :goto_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v7, v4, :cond_9

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lk/n;->l:Lk/m;

    if-ne v4, v5, :cond_8

    move v4, v2

    goto :goto_3

    :cond_8
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->removeViewAt(I)V

    move v4, v3

    :goto_3
    if-nez v4, :cond_7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_9
    :goto_4
    iget-object v0, p0, Lk/n;->k:Lj/E;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget-object v0, p0, Lk/n;->f:Lj/o;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lj/o;->i()V

    iget-object v0, v0, Lj/o;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v2

    :goto_5
    if-ge v5, v4, :cond_a

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lj/r;

    iget-object v6, v6, Lj/r;->A:Landroidx/core/view/c;

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lk/n;->f:Lj/o;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lj/o;->i()V

    iget-object v1, v0, Lj/o;->j:Ljava/util/ArrayList;

    :cond_b
    iget-boolean v0, p0, Lk/n;->m:Z

    if-eqz v0, :cond_d

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_c

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj/r;

    iget-boolean v0, v0, Lj/r;->C:Z

    xor-int/lit8 v2, v0, 0x1

    goto :goto_6

    :cond_c
    if-lez v0, :cond_d

    move v2, v3

    :cond_d
    :goto_6
    if-eqz v2, :cond_10

    iget-object v0, p0, Lk/n;->l:Lk/m;

    if-nez v0, :cond_e

    new-instance v0, Lk/m;

    iget-object v1, p0, Lk/n;->d:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lk/m;-><init>(Lk/n;Landroid/content/Context;)V

    iput-object v0, p0, Lk/n;->l:Lk/m;

    :cond_e
    iget-object v0, p0, Lk/n;->l:Lk/m;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lk/n;->k:Lj/E;

    if-eq v0, v1, :cond_11

    if-eqz v0, :cond_f

    iget-object v1, p0, Lk/n;->l:Lk/m;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_f
    iget-object v0, p0, Lk/n;->k:Lj/E;

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    iget-object v1, p0, Lk/n;->l:Lk/m;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lk/q;

    invoke-direct {v2}, Lk/q;-><init>()V

    const/16 v4, 0x10

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput-boolean v3, v2, Lk/q;->a:Z

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7

    :cond_10
    iget-object v0, p0, Lk/n;->l:Lk/m;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lk/n;->k:Lj/E;

    if-ne v0, v1, :cond_11

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lk/n;->l:Lk/m;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_11
    :goto_7
    iget-object v0, p0, Lk/n;->k:Lj/E;

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    iget-boolean p0, p0, Lk/n;->m:Z

    iput-boolean p0, v0, Landroidx/appcompat/widget/ActionMenuView;->v:Z

    return-void
.end method

.method public final e()Z
    .locals 3

    iget-object v0, p0, Lk/n;->v:Lk/k;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lk/n;->k:Lj/E;

    if-eqz v2, :cond_0

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lk/n;->v:Lk/k;

    return v1

    :cond_0
    iget-object p0, p0, Lk/n;->t:Lk/i;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lj/A;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lj/A;->j:Lj/y;

    invoke-interface {p0}, Lj/G;->dismiss()V

    :cond_1
    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final f(Landroid/content/Context;Lj/o;)V
    .locals 4

    iput-object p1, p0, Lk/n;->e:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    iput-object p2, p0, Lk/n;->f:Lj/o;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-boolean v0, p0, Lk/n;->n:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lk/n;->m:Z

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v1, 0x2

    div-int/2addr v0, v1

    iput v0, p0, Lk/n;->o:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget p1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x258

    if-gt p1, v3, :cond_6

    if-gt v0, v3, :cond_6

    const/16 p1, 0x2d0

    const/16 v3, 0x3c0

    if-le v0, v3, :cond_1

    if-gt v2, p1, :cond_6

    :cond_1
    if-le v0, p1, :cond_2

    if-le v2, v3, :cond_2

    goto :goto_1

    :cond_2
    const/16 p1, 0x1f4

    if-ge v0, p1, :cond_5

    const/16 p1, 0x1e0

    const/16 v3, 0x280

    if-le v0, v3, :cond_3

    if-gt v2, p1, :cond_5

    :cond_3
    if-le v0, p1, :cond_4

    if-le v2, v3, :cond_4

    goto :goto_0

    :cond_4
    const/16 p1, 0x168

    if-lt v0, p1, :cond_7

    const/4 v1, 0x3

    goto :goto_2

    :cond_5
    :goto_0
    const/4 v1, 0x4

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v1, 0x5

    :cond_7
    :goto_2
    iput v1, p0, Lk/n;->q:I

    iget p1, p0, Lk/n;->o:I

    iget-boolean v0, p0, Lk/n;->m:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lk/n;->l:Lk/m;

    if-nez v0, :cond_8

    new-instance v0, Lk/m;

    iget-object v1, p0, Lk/n;->d:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lk/m;-><init>(Lk/n;Landroid/content/Context;)V

    iput-object v0, p0, Lk/n;->l:Lk/m;

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v1, p0, Lk/n;->l:Lk/m;

    invoke-virtual {v1, v0, v0}, Landroid/widget/ImageView;->measure(II)V

    :cond_8
    iget-object v0, p0, Lk/n;->l:Lk/m;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_3

    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lk/n;->l:Lk/m;

    :goto_3
    iput p1, p0, Lk/n;->p:I

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    return-void
.end method

.method public final g()Z
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lk/n;->f:Lj/o;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lj/o;->l()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto :goto_0

    :cond_0
    move-object v1, v2

    move v4, v3

    :goto_0
    iget v5, v0, Lk/n;->q:I

    iget v6, v0, Lk/n;->p:I

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    iget-object v8, v0, Lk/n;->k:Lj/E;

    check-cast v8, Landroid/view/ViewGroup;

    move v9, v3

    move v10, v9

    move v11, v10

    move v12, v11

    :goto_1
    const/4 v13, 0x1

    if-ge v9, v4, :cond_5

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lj/r;

    invoke-virtual {v14}, Lj/r;->requiresActionButton()Z

    move-result v15

    if-eqz v15, :cond_1

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_1
    iget v15, v14, Lj/r;->y:I

    and-int/2addr v15, v13

    if-ne v15, v13, :cond_2

    move v15, v13

    goto :goto_2

    :cond_2
    move v15, v3

    :goto_2
    if-eqz v15, :cond_3

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_3
    move v10, v13

    :goto_3
    iget-boolean v13, v0, Lk/n;->r:Z

    if-eqz v13, :cond_4

    iget-boolean v13, v14, Lj/r;->C:Z

    if-eqz v13, :cond_4

    move v5, v3

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_5
    iget-boolean v9, v0, Lk/n;->m:Z

    if-eqz v9, :cond_7

    if-nez v10, :cond_6

    add-int/2addr v12, v11

    if-le v12, v5, :cond_7

    :cond_6
    add-int/lit8 v5, v5, -0x1

    :cond_7
    sub-int/2addr v5, v11

    iget-object v9, v0, Lk/n;->s:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9}, Landroid/util/SparseBooleanArray;->clear()V

    move v10, v3

    move v11, v10

    :goto_4
    if-ge v10, v4, :cond_17

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lj/r;

    invoke-virtual {v12}, Lj/r;->requiresActionButton()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-virtual {v0, v12, v2, v8}, Lk/n;->b(Lj/r;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14, v7, v7}, Landroid/view/View;->measure(II)V

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int/2addr v6, v14

    if-nez v11, :cond_8

    move v11, v14

    :cond_8
    iget v14, v12, Lj/r;->b:I

    if-eqz v14, :cond_9

    invoke-virtual {v9, v14, v13}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_9
    invoke-virtual {v12, v13}, Lj/r;->g(Z)V

    move v2, v3

    goto/16 :goto_a

    :cond_a
    iget v14, v12, Lj/r;->y:I

    and-int/2addr v14, v13

    if-ne v14, v13, :cond_b

    move v14, v13

    goto :goto_5

    :cond_b
    move v14, v3

    :goto_5
    if-eqz v14, :cond_16

    iget v14, v12, Lj/r;->b:I

    invoke-virtual {v9, v14}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v15

    if-gtz v5, :cond_c

    if-eqz v15, :cond_d

    :cond_c
    if-lez v6, :cond_d

    move/from16 v16, v13

    goto :goto_6

    :cond_d
    move/from16 v16, v3

    :goto_6
    if-eqz v16, :cond_10

    invoke-virtual {v0, v12, v2, v8}, Lk/n;->b(Lj/r;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7, v7}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v6, v3

    if-nez v11, :cond_e

    move v11, v3

    :cond_e
    add-int v3, v6, v11

    if-lez v3, :cond_f

    move v3, v13

    goto :goto_7

    :cond_f
    const/4 v3, 0x0

    :goto_7
    and-int v16, v16, v3

    :cond_10
    move/from16 v3, v16

    if-eqz v3, :cond_11

    if-eqz v14, :cond_11

    invoke-virtual {v9, v14, v13}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_9

    :cond_11
    if-eqz v15, :cond_14

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/4 v15, 0x0

    :goto_8
    if-ge v15, v10, :cond_14

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Lj/r;

    iget v13, v2, Lj/r;->b:I

    if-ne v13, v14, :cond_13

    invoke-virtual {v2}, Lj/r;->f()Z

    move-result v13

    if-eqz v13, :cond_12

    add-int/lit8 v5, v5, 0x1

    :cond_12
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Lj/r;->g(Z)V

    :cond_13
    add-int/lit8 v15, v15, 0x1

    const/4 v2, 0x0

    const/4 v13, 0x1

    goto :goto_8

    :cond_14
    :goto_9
    if-eqz v3, :cond_15

    add-int/lit8 v5, v5, -0x1

    :cond_15
    invoke-virtual {v12, v3}, Lj/r;->g(Z)V

    const/4 v2, 0x0

    goto :goto_a

    :cond_16
    move v2, v3

    invoke-virtual {v12, v2}, Lj/r;->g(Z)V

    :goto_a
    add-int/lit8 v10, v10, 0x1

    move v3, v2

    const/4 v2, 0x0

    const/4 v13, 0x1

    goto/16 :goto_4

    :cond_17
    move v3, v13

    return v3
.end method

.method public final bridge synthetic h(Lj/r;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final i(Lj/B;)V
    .locals 0

    iput-object p1, p0, Lk/n;->h:Lj/B;

    return-void
.end method

.method public final j(Lj/L;)Z
    .locals 7

    invoke-virtual {p1}, Lj/o;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    :goto_0
    iget-object v2, v0, Lj/L;->A:Lj/o;

    iget-object v3, p0, Lk/n;->f:Lj/o;

    if-eq v2, v3, :cond_1

    move-object v0, v2

    check-cast v0, Lj/L;

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lj/L;->B:Lj/r;

    iget-object v2, p0, Lk/n;->k:Lj/E;

    check-cast v2, Landroid/view/ViewGroup;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Lj/D;

    if-eqz v6, :cond_3

    move-object v6, v5

    check-cast v6, Lj/D;

    invoke-interface {v6}, Lj/D;->c()Lj/r;

    move-result-object v6

    if-ne v6, v0, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    const/4 v5, 0x0

    :goto_3
    if-nez v5, :cond_5

    return v1

    :cond_5
    iget-object v0, p1, Lj/L;->B:Lj/r;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lj/o;->size()I

    move-result v0

    move v2, v1

    :goto_4
    const/4 v3, 0x1

    if-ge v2, v0, :cond_7

    invoke-virtual {p1, v2}, Lj/o;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_6

    move v0, v3

    goto :goto_5

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    move v0, v1

    :goto_5
    new-instance v2, Lk/i;

    iget-object v4, p0, Lk/n;->e:Landroid/content/Context;

    invoke-direct {v2, p0, v4, p1, v5}, Lk/i;-><init>(Lk/n;Landroid/content/Context;Lj/L;Landroid/view/View;)V

    iput-object v2, p0, Lk/n;->u:Lk/i;

    iput-boolean v0, v2, Lj/A;->h:Z

    iget-object v2, v2, Lj/A;->j:Lj/y;

    if-eqz v2, :cond_8

    invoke-virtual {v2, v0}, Lj/y;->n(Z)V

    :cond_8
    iget-object v0, p0, Lk/n;->u:Lk/i;

    invoke-virtual {v0}, Lj/A;->b()Z

    move-result v2

    if-eqz v2, :cond_9

    :goto_6
    move v1, v3

    goto :goto_7

    :cond_9
    iget-object v2, v0, Lj/A;->f:Landroid/view/View;

    if-nez v2, :cond_a

    goto :goto_7

    :cond_a
    invoke-virtual {v0, v1, v1, v1, v1}, Lj/A;->d(IIZZ)V

    goto :goto_6

    :goto_7
    if-eqz v1, :cond_c

    iget-object p0, p0, Lk/n;->h:Lj/B;

    if-eqz p0, :cond_b

    invoke-interface {p0, p1}, Lj/B;->c(Lj/o;)Z

    :cond_b
    return v3

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final k()Z
    .locals 0

    iget-object p0, p0, Lk/n;->t:Lk/i;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lj/A;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final l()Z
    .locals 4

    iget-boolean v0, p0, Lk/n;->m:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lk/n;->k()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lk/n;->f:Lj/o;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lk/n;->k:Lj/E;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lk/n;->v:Lk/k;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lj/o;->i()V

    iget-object v0, v0, Lj/o;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lk/i;

    iget-object v1, p0, Lk/n;->e:Landroid/content/Context;

    iget-object v2, p0, Lk/n;->f:Lj/o;

    iget-object v3, p0, Lk/n;->l:Lk/m;

    invoke-direct {v0, p0, v1, v2, v3}, Lk/i;-><init>(Lk/n;Landroid/content/Context;Lj/o;Lk/m;)V

    new-instance v1, Lk/k;

    invoke-direct {v1, p0, v0}, Lk/k;-><init>(Lk/n;Lk/i;)V

    iput-object v1, p0, Lk/n;->v:Lk/k;

    iget-object p0, p0, Lk/n;->k:Lj/E;

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
