.class public final Le/m;
.super Le/F;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface;


# instance fields
.field public final i:Le/k;


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 1

    invoke-static {p1, p2}, Le/m;->h(ILandroid/content/Context;)I

    move-result p1

    invoke-direct {p0, p1, p2}, Le/F;-><init>(ILandroid/content/Context;)V

    new-instance p1, Le/k;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p1, p2, p0, v0}, Le/k;-><init>(Landroid/content/Context;Le/F;Landroid/view/Window;)V

    iput-object p1, p0, Le/m;->i:Le/k;

    return-void
.end method

.method public static h(ILandroid/content/Context;)I
    .locals 2

    ushr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    return p0

    :cond_0
    new-instance p0, Landroid/util/TypedValue;

    invoke-direct {p0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v0, 0x7f04002d

    invoke-virtual {p1, v0, p0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p0, p0, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 16

    invoke-super/range {p0 .. p1}, Le/F;->onCreate(Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Le/m;->i:Le/k;

    iget-object v1, v0, Le/k;->b:Le/F;

    iget v2, v0, Le/k;->F:I

    invoke-virtual {v1, v2}, Le/F;->setContentView(I)V

    iget-object v1, v0, Le/k;->c:Landroid/view/Window;

    const v2, 0x7f0a027e

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a03a1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0a00f0

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0a00bf

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f0a0110

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v9, v0, Le/k;->h:Landroid/view/View;

    const/4 v11, 0x0

    iget-object v12, v0, Le/k;->a:Landroid/content/Context;

    if-eqz v9, :cond_0

    goto :goto_0

    :cond_0
    iget v9, v0, Le/k;->i:I

    if-eqz v9, :cond_1

    invoke-static {v12}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    iget v13, v0, Le/k;->i:I

    invoke-virtual {v9, v13, v2, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    :goto_0
    if-eqz v9, :cond_2

    const/4 v14, 0x1

    goto :goto_1

    :cond_2
    move v14, v11

    :goto_1
    if-eqz v14, :cond_3

    invoke-static {v9}, Le/k;->a(Landroid/view/View;)Z

    move-result v15

    if-nez v15, :cond_4

    :cond_3
    const/high16 v15, 0x20000

    invoke-virtual {v1, v15, v15}, Landroid/view/Window;->setFlags(II)V

    :cond_4
    const/4 v15, -0x1

    const/16 v13, 0x8

    if-eqz v14, :cond_6

    const v14, 0x7f0a010f

    invoke-virtual {v1, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout;

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v10, v15, v15}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v9, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v9, v0, Le/k;->j:Z

    if-eqz v9, :cond_5

    invoke-virtual {v14, v11, v11, v11, v11}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_5
    iget-object v9, v0, Le/k;->g:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v9, :cond_7

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lk/v0;

    const/4 v10, 0x0

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_2

    :cond_6
    invoke-virtual {v2, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_7
    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v3, v4}, Le/k;->c(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-static {v5, v6}, Le/k;->c(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-static {v7, v8}, Le/k;->c(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v5

    const v6, 0x7f0a02c7

    invoke-virtual {v1, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/core/widget/NestedScrollView;

    iput-object v6, v0, Le/k;->w:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v6, v11}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    iget-object v6, v0, Le/k;->w:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v6, v11}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    const v6, 0x102000b

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Le/k;->B:Landroid/widget/TextView;

    if-nez v6, :cond_8

    goto :goto_3

    :cond_8
    iget-object v7, v0, Le/k;->f:Ljava/lang/CharSequence;

    if-eqz v7, :cond_9

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_9
    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, v0, Le/k;->w:Landroidx/core/widget/NestedScrollView;

    iget-object v7, v0, Le/k;->B:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v6, v0, Le/k;->g:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v6, :cond_a

    iget-object v6, v0, Le/k;->w:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iget-object v7, v0, Le/k;->w:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v8, v0, Le/k;->g:Landroidx/appcompat/app/AlertController$RecycleListView;

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v9, v15, v15}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v8, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_a
    invoke-virtual {v4, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_3
    const v6, 0x1020019

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, v0, Le/k;->k:Landroid/widget/Button;

    iget-object v7, v0, Le/k;->M:Le/d;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, v0, Le/k;->l:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    iget v8, v0, Le/k;->d:I

    if-eqz v6, :cond_b

    iget-object v6, v0, Le/k;->n:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_b

    iget-object v6, v0, Le/k;->k:Landroid/widget/Button;

    invoke-virtual {v6, v13}, Landroid/widget/Button;->setVisibility(I)V

    move v6, v11

    goto :goto_4

    :cond_b
    iget-object v6, v0, Le/k;->k:Landroid/widget/Button;

    iget-object v9, v0, Le/k;->l:Ljava/lang/CharSequence;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, v0, Le/k;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_c

    invoke-virtual {v6, v11, v11, v8, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v6, v0, Le/k;->k:Landroid/widget/Button;

    iget-object v9, v0, Le/k;->n:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10, v10, v10}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_c
    iget-object v6, v0, Le/k;->k:Landroid/widget/Button;

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v6, 0x1

    :goto_4
    const v9, 0x102001a

    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, v0, Le/k;->o:Landroid/widget/Button;

    invoke-virtual {v9, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v9, v0, Le/k;->p:Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_d

    iget-object v9, v0, Le/k;->r:Landroid/graphics/drawable/Drawable;

    if-nez v9, :cond_d

    iget-object v9, v0, Le/k;->o:Landroid/widget/Button;

    invoke-virtual {v9, v13}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_5

    :cond_d
    iget-object v9, v0, Le/k;->o:Landroid/widget/Button;

    iget-object v10, v0, Le/k;->p:Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, v0, Le/k;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_e

    invoke-virtual {v9, v11, v11, v8, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v9, v0, Le/k;->o:Landroid/widget/Button;

    iget-object v10, v0, Le/k;->r:Landroid/graphics/drawable/Drawable;

    const/4 v14, 0x0

    invoke-virtual {v9, v10, v14, v14, v14}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_e
    iget-object v9, v0, Le/k;->o:Landroid/widget/Button;

    invoke-virtual {v9, v11}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v6, v6, 0x2

    :goto_5
    const v9, 0x102001b

    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, v0, Le/k;->s:Landroid/widget/Button;

    invoke-virtual {v9, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, v0, Le/k;->t:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, v0, Le/k;->v:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_f

    iget-object v7, v0, Le/k;->s:Landroid/widget/Button;

    invoke-virtual {v7, v13}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v9, 0x0

    goto :goto_7

    :cond_f
    iget-object v7, v0, Le/k;->s:Landroid/widget/Button;

    iget-object v9, v0, Le/k;->t:Ljava/lang/CharSequence;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, v0, Le/k;->v:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_10

    invoke-virtual {v7, v11, v11, v8, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v7, v0, Le/k;->s:Landroid/widget/Button;

    iget-object v8, v0, Le/k;->v:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v9, v9}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    :cond_10
    const/4 v9, 0x0

    :goto_6
    iget-object v7, v0, Le/k;->s:Landroid/widget/Button;

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v6, v6, 0x4

    :goto_7
    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v12}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const v10, 0x7f04002b

    const/4 v12, 0x1

    invoke-virtual {v8, v10, v7, v12}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v7, v7, Landroid/util/TypedValue;->data:I

    if-eqz v7, :cond_11

    move v7, v12

    goto :goto_8

    :cond_11
    move v7, v11

    :goto_8
    const/4 v8, 0x2

    if-eqz v7, :cond_14

    if-ne v6, v12, :cond_12

    iget-object v7, v0, Le/k;->k:Landroid/widget/Button;

    invoke-static {v7}, Le/k;->b(Landroid/widget/Button;)V

    goto :goto_9

    :cond_12
    if-ne v6, v8, :cond_13

    iget-object v7, v0, Le/k;->o:Landroid/widget/Button;

    invoke-static {v7}, Le/k;->b(Landroid/widget/Button;)V

    goto :goto_9

    :cond_13
    const/4 v7, 0x4

    if-ne v6, v7, :cond_14

    iget-object v7, v0, Le/k;->s:Landroid/widget/Button;

    invoke-static {v7}, Le/k;->b(Landroid/widget/Button;)V

    :cond_14
    :goto_9
    if-eqz v6, :cond_15

    const/4 v6, 0x1

    goto :goto_a

    :cond_15
    move v6, v11

    :goto_a
    if-nez v6, :cond_16

    invoke-virtual {v5, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_16
    iget-object v6, v0, Le/k;->C:Landroid/view/View;

    const v7, 0x7f0a039d

    if-eqz v6, :cond_17

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v6, v15, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v10, v0, Le/k;->C:Landroid/view/View;

    invoke-virtual {v3, v10, v11, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b

    :cond_17
    const v6, 0x1020006

    invoke-virtual {v1, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v0, Le/k;->z:Landroid/widget/ImageView;

    iget-object v6, v0, Le/k;->e:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v10, 0x1

    xor-int/2addr v6, v10

    if-eqz v6, :cond_1a

    iget-boolean v6, v0, Le/k;->K:Z

    if-eqz v6, :cond_1a

    const v6, 0x7f0a0072

    invoke-virtual {v1, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Le/k;->A:Landroid/widget/TextView;

    iget-object v7, v0, Le/k;->e:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v6, v0, Le/k;->x:I

    if-eqz v6, :cond_18

    iget-object v7, v0, Le/k;->z:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b

    :cond_18
    iget-object v6, v0, Le/k;->y:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_19

    iget-object v7, v0, Le/k;->z:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_b

    :cond_19
    iget-object v6, v0, Le/k;->A:Landroid/widget/TextView;

    iget-object v7, v0, Le/k;->z:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v7

    iget-object v10, v0, Le/k;->z:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v10

    iget-object v12, v0, Le/k;->z:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v12

    iget-object v14, v0, Le/k;->z:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v14

    invoke-virtual {v6, v7, v10, v12, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v6, v0, Le/k;->z:Landroid/widget/ImageView;

    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_b

    :cond_1a
    invoke-virtual {v1, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v13}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, v0, Le/k;->z:Landroid/widget/ImageView;

    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v3, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_b
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-eq v2, v13, :cond_1b

    const/4 v12, 0x1

    goto :goto_c

    :cond_1b
    move v12, v11

    :goto_c
    if-eqz v3, :cond_1c

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-eq v2, v13, :cond_1c

    const/4 v2, 0x1

    goto :goto_d

    :cond_1c
    move v2, v11

    :goto_d
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v5

    if-eq v5, v13, :cond_1d

    const/4 v5, 0x1

    goto :goto_e

    :cond_1d
    move v5, v11

    :goto_e
    if-nez v5, :cond_1e

    const v6, 0x7f0a0376

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1e

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    :cond_1e
    if-eqz v2, :cond_22

    iget-object v6, v0, Le/k;->w:Landroidx/core/widget/NestedScrollView;

    if-eqz v6, :cond_1f

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    :cond_1f
    iget-object v6, v0, Le/k;->f:Ljava/lang/CharSequence;

    if-nez v6, :cond_21

    iget-object v6, v0, Le/k;->g:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v6, :cond_20

    goto :goto_f

    :cond_20
    move-object v10, v9

    goto :goto_10

    :cond_21
    :goto_f
    const v6, 0x7f0a039c

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    :goto_10
    if-eqz v10, :cond_23

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_11

    :cond_22
    const v3, 0x7f0a0377

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_23

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    :cond_23
    :goto_11
    iget-object v3, v0, Le/k;->g:Landroidx/appcompat/app/AlertController$RecycleListView;

    instance-of v6, v3, Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v6, :cond_27

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v5, :cond_24

    if-nez v2, :cond_27

    :cond_24
    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v6

    if-eqz v2, :cond_25

    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v7

    goto :goto_12

    :cond_25
    iget v7, v3, Landroidx/appcompat/app/AlertController$RecycleListView;->d:I

    :goto_12
    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v9

    if-eqz v5, :cond_26

    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v10

    goto :goto_13

    :cond_26
    iget v10, v3, Landroidx/appcompat/app/AlertController$RecycleListView;->e:I

    :goto_13
    invoke-virtual {v3, v6, v7, v9, v10}, Landroid/widget/ListView;->setPadding(IIII)V

    :cond_27
    if-nez v12, :cond_2b

    iget-object v3, v0, Le/k;->g:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v3, :cond_28

    goto :goto_14

    :cond_28
    iget-object v3, v0, Le/k;->w:Landroidx/core/widget/NestedScrollView;

    :goto_14
    if-eqz v3, :cond_2b

    if-eqz v5, :cond_29

    move v11, v8

    :cond_29
    or-int/2addr v2, v11

    const v5, 0x7f0a02c6

    invoke-virtual {v1, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0a02c5

    invoke-virtual {v1, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget-object v6, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    const/4 v6, 0x3

    invoke-static {v3, v2, v6}, Landroidx/core/view/E;->b(Landroid/view/View;II)V

    if-eqz v5, :cond_2a

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2a
    if-eqz v1, :cond_2b

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2b
    iget-object v1, v0, Le/k;->g:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v1, :cond_2c

    iget-object v2, v0, Le/k;->D:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_2c

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget v0, v0, Le/k;->E:I

    if-le v0, v15, :cond_2c

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    :cond_2c
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Le/m;->i:Le/k;

    iget-object v0, v0, Le/k;->w:Landroidx/core/widget/NestedScrollView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroidx/core/widget/NestedScrollView;->d(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Le/m;->i:Le/k;

    iget-object v0, v0, Le/k;->w:Landroidx/core/widget/NestedScrollView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroidx/core/widget/NestedScrollView;->d(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1}, Le/F;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Le/m;->i:Le/k;

    iput-object p1, p0, Le/k;->e:Ljava/lang/CharSequence;

    iget-object p0, p0, Le/k;->A:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
