.class public final Lk/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/TextView;

.field public b:Lk/P0;

.field public c:Lk/P0;

.field public d:Lk/P0;

.field public e:Lk/P0;

.field public f:Lk/P0;

.field public g:Lk/P0;

.field public final h:Lk/k0;

.field public i:I

.field public j:I

.field public k:Landroid/graphics/Typeface;

.field public l:Z


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lk/e0;->i:I

    const/4 v0, -0x1

    iput v0, p0, Lk/e0;->j:I

    iput-object p1, p0, Lk/e0;->a:Landroid/widget/TextView;

    new-instance v0, Lk/k0;

    invoke-direct {v0, p1}, Lk/k0;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lk/e0;->h:Lk/k0;

    return-void
.end method

.method public static c(Landroid/content/Context;Lk/A;I)Lk/P0;
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lk/A;->a:Lk/H0;

    invoke-virtual {v0, p2, p0}, Lk/H0;->h(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    if-eqz p0, :cond_0

    new-instance p1, Lk/P0;

    invoke-direct {p1}, Lk/P0;-><init>()V

    const/4 p2, 0x1

    iput-boolean p2, p1, Lk/P0;->d:Z

    iput-object p0, p1, Lk/P0;->a:Landroid/content/res/ColorStateList;

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;Lk/P0;)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lk/e0;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object p0

    invoke-static {p1, p2, p0}, Lk/A;->e(Landroid/graphics/drawable/Drawable;Lk/P0;[I)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 6

    iget-object v0, p0, Lk/e0;->b:Lk/P0;

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, Lk/e0;->a:Landroid/widget/TextView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lk/e0;->c:Lk/P0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lk/e0;->d:Lk/P0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lk/e0;->e:Lk/P0;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v4, v0, v2

    iget-object v5, p0, Lk/e0;->b:Lk/P0;

    invoke-virtual {p0, v4, v5}, Lk/e0;->a(Landroid/graphics/drawable/Drawable;Lk/P0;)V

    const/4 v4, 0x1

    aget-object v4, v0, v4

    iget-object v5, p0, Lk/e0;->c:Lk/P0;

    invoke-virtual {p0, v4, v5}, Lk/e0;->a(Landroid/graphics/drawable/Drawable;Lk/P0;)V

    aget-object v4, v0, v1

    iget-object v5, p0, Lk/e0;->d:Lk/P0;

    invoke-virtual {p0, v4, v5}, Lk/e0;->a(Landroid/graphics/drawable/Drawable;Lk/P0;)V

    const/4 v4, 0x3

    aget-object v0, v0, v4

    iget-object v4, p0, Lk/e0;->e:Lk/P0;

    invoke-virtual {p0, v0, v4}, Lk/e0;->a(Landroid/graphics/drawable/Drawable;Lk/P0;)V

    :cond_1
    iget-object v0, p0, Lk/e0;->f:Lk/P0;

    if-nez v0, :cond_2

    iget-object v0, p0, Lk/e0;->g:Lk/P0;

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v2, v0, v2

    iget-object v3, p0, Lk/e0;->f:Lk/P0;

    invoke-virtual {p0, v2, v3}, Lk/e0;->a(Landroid/graphics/drawable/Drawable;Lk/P0;)V

    aget-object v0, v0, v1

    iget-object v1, p0, Lk/e0;->g:Lk/P0;

    invoke-virtual {p0, v0, v1}, Lk/e0;->a(Landroid/graphics/drawable/Drawable;Lk/P0;)V

    :cond_3
    return-void
.end method

.method public final d(Landroid/util/AttributeSet;I)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    iget-object v10, v0, Lk/e0;->a:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {}, Lk/A;->a()Lk/A;

    move-result-object v12

    sget-object v3, Ld/a;->h:[I

    invoke-static {v11, v8, v3, v9}, Lk/R0;->m(Landroid/content/Context;Landroid/util/AttributeSet;[II)Lk/R0;

    move-result-object v13

    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, v13, Lk/R0;->b:Landroid/content/res/TypedArray;

    const/4 v7, 0x0

    sget-object v1, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    move-object v1, v10

    move-object/from16 v4, p1

    move/from16 v6, p2

    invoke-static/range {v1 .. v7}, Landroidx/core/view/H;->b(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    const/4 v14, -0x1

    invoke-virtual {v13, v7, v14}, Lk/R0;->i(II)I

    move-result v1

    const/4 v15, 0x3

    invoke-virtual {v13, v15}, Lk/R0;->l(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v13, v15, v7}, Lk/R0;->i(II)I

    move-result v2

    invoke-static {v11, v12, v2}, Lk/e0;->c(Landroid/content/Context;Lk/A;I)Lk/P0;

    move-result-object v2

    iput-object v2, v0, Lk/e0;->b:Lk/P0;

    :cond_0
    const/4 v6, 0x1

    invoke-virtual {v13, v6}, Lk/R0;->l(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v13, v6, v7}, Lk/R0;->i(II)I

    move-result v2

    invoke-static {v11, v12, v2}, Lk/e0;->c(Landroid/content/Context;Lk/A;I)Lk/P0;

    move-result-object v2

    iput-object v2, v0, Lk/e0;->c:Lk/P0;

    :cond_1
    const/4 v5, 0x4

    invoke-virtual {v13, v5}, Lk/R0;->l(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v13, v5, v7}, Lk/R0;->i(II)I

    move-result v2

    invoke-static {v11, v12, v2}, Lk/e0;->c(Landroid/content/Context;Lk/A;I)Lk/P0;

    move-result-object v2

    iput-object v2, v0, Lk/e0;->d:Lk/P0;

    :cond_2
    const/4 v4, 0x2

    invoke-virtual {v13, v4}, Lk/R0;->l(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v13, v4, v7}, Lk/R0;->i(II)I

    move-result v2

    invoke-static {v11, v12, v2}, Lk/e0;->c(Landroid/content/Context;Lk/A;I)Lk/P0;

    move-result-object v2

    iput-object v2, v0, Lk/e0;->e:Lk/P0;

    :cond_3
    const/4 v3, 0x5

    invoke-virtual {v13, v3}, Lk/R0;->l(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v13, v3, v7}, Lk/R0;->i(II)I

    move-result v2

    invoke-static {v11, v12, v2}, Lk/e0;->c(Landroid/content/Context;Lk/A;I)Lk/P0;

    move-result-object v2

    iput-object v2, v0, Lk/e0;->f:Lk/P0;

    :cond_4
    const/4 v2, 0x6

    invoke-virtual {v13, v2}, Lk/R0;->l(I)Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-virtual {v13, v2, v7}, Lk/R0;->i(II)I

    move-result v3

    invoke-static {v11, v12, v3}, Lk/e0;->c(Landroid/content/Context;Lk/A;I)Lk/P0;

    move-result-object v3

    iput-object v3, v0, Lk/e0;->g:Lk/P0;

    :cond_5
    invoke-virtual {v13}, Lk/R0;->n()V

    invoke-virtual {v10}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v3

    instance-of v3, v3, Landroid/text/method/PasswordTransformationMethod;

    sget-object v13, Ld/a;->w:[I

    const/16 v15, 0xf

    const/4 v6, 0x0

    const/16 v2, 0xe

    if-eq v1, v14, :cond_9

    new-instance v4, Lk/R0;

    invoke-virtual {v11, v1, v13}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {v4, v11, v1}, Lk/R0;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    if-nez v3, :cond_6

    invoke-virtual {v4, v2}, Lk/R0;->l(I)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v4, v2, v7}, Lk/R0;->a(IZ)Z

    move-result v1

    const/16 v18, 0x1

    goto :goto_0

    :cond_6
    move v1, v7

    move/from16 v18, v1

    :goto_0
    invoke-virtual {v0, v11, v4}, Lk/e0;->f(Landroid/content/Context;Lk/R0;)V

    invoke-virtual {v4, v15}, Lk/R0;->l(I)Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-virtual {v4, v15}, Lk/R0;->j(I)Ljava/lang/String;

    move-result-object v19

    goto :goto_1

    :cond_7
    move-object/from16 v19, v6

    :goto_1
    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Lk/R0;->l(I)Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-virtual {v4, v5}, Lk/R0;->j(I)Ljava/lang/String;

    move-result-object v20

    goto :goto_2

    :cond_8
    move-object/from16 v20, v6

    :goto_2
    invoke-virtual {v4}, Lk/R0;->n()V

    goto :goto_3

    :cond_9
    move-object/from16 v19, v6

    move-object/from16 v20, v19

    move v1, v7

    move/from16 v18, v1

    :goto_3
    new-instance v4, Lk/R0;

    invoke-virtual {v11, v8, v13, v9, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    invoke-direct {v4, v11, v5}, Lk/R0;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    if-nez v3, :cond_a

    invoke-virtual {v4, v2}, Lk/R0;->l(I)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v4, v2, v7}, Lk/R0;->a(IZ)Z

    move-result v1

    const/16 v18, 0x1

    :cond_a
    invoke-virtual {v4, v15}, Lk/R0;->l(I)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v4, v15}, Lk/R0;->j(I)Ljava/lang/String;

    move-result-object v19

    :cond_b
    const/16 v13, 0xd

    invoke-virtual {v4, v13}, Lk/R0;->l(I)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v4, v13}, Lk/R0;->j(I)Ljava/lang/String;

    move-result-object v20

    :cond_c
    move-object/from16 v2, v20

    invoke-virtual {v4, v7}, Lk/R0;->l(I)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v4, v7, v14}, Lk/R0;->d(II)I

    move-result v5

    if-nez v5, :cond_d

    const/4 v5, 0x0

    invoke-virtual {v10, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_d
    invoke-virtual {v0, v11, v4}, Lk/e0;->f(Landroid/content/Context;Lk/R0;)V

    invoke-virtual {v4}, Lk/R0;->n()V

    if-nez v3, :cond_e

    if-eqz v18, :cond_e

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_e
    iget-object v1, v0, Lk/e0;->k:Landroid/graphics/Typeface;

    if-eqz v1, :cond_10

    iget v3, v0, Lk/e0;->j:I

    if-ne v3, v14, :cond_f

    iget v3, v0, Lk/e0;->i:I

    invoke-virtual {v10, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_4

    :cond_f
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_10
    :goto_4
    if-eqz v2, :cond_11

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    :cond_11
    if-eqz v19, :cond_12

    invoke-static/range {v19 .. v19}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setTextLocales(Landroid/os/LocaleList;)V

    :cond_12
    sget-object v5, Ld/a;->i:[I

    iget-object v4, v0, Lk/e0;->h:Lk/k0;

    iget-object v3, v4, Lk/k0;->i:Landroid/content/Context;

    invoke-virtual {v3, v8, v5, v9, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    iget-object v0, v4, Lk/k0;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v17, 0x0

    move-object/from16 p0, v2

    const/4 v13, 0x6

    move-object v2, v5

    move-object/from16 v16, v3

    const/4 v15, 0x5

    move-object/from16 v3, p1

    move-object v14, v4

    const/4 v13, 0x2

    move-object/from16 v4, p0

    move-object/from16 v21, v5

    const/4 v13, 0x4

    move/from16 v5, p2

    const/4 v9, 0x1

    move/from16 v6, v17

    invoke-static/range {v0 .. v6}, Landroidx/core/view/H;->b(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v0, v15, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v14, Lk/k0;->a:I

    :cond_13
    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    if-eqz v1, :cond_14

    invoke-virtual {v0, v13, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    goto :goto_5

    :cond_14
    move v1, v2

    :goto_5
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    goto :goto_6

    :cond_15
    move v4, v2

    :goto_6
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {v0, v9, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    goto :goto_7

    :cond_16
    move v3, v2

    :goto_7
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    if-lez v6, :cond_19

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->length()I

    move-result v6

    new-array v13, v6, [I

    if-lez v6, :cond_18

    move v15, v7

    :goto_8
    if-ge v15, v6, :cond_17

    const/4 v7, -0x1

    invoke-virtual {v5, v15, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v20

    aput v20, v13, v15

    add-int/lit8 v15, v15, 0x1

    const/4 v7, 0x0

    goto :goto_8

    :cond_17
    invoke-static {v13}, Lk/k0;->a([I)[I

    move-result-object v6

    iput-object v6, v14, Lk/k0;->f:[I

    invoke-virtual {v14}, Lk/k0;->c()Z

    :cond_18
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    :cond_19
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v14}, Lk/k0;->d()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget v0, v14, Lk/k0;->a:I

    if-ne v0, v9, :cond_1f

    iget-boolean v0, v14, Lk/k0;->g:Z

    if-nez v0, :cond_1d

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    cmpl-float v5, v4, v2

    if-nez v5, :cond_1a

    const/high16 v4, 0x41400000    # 12.0f

    const/4 v5, 0x2

    invoke-static {v5, v4, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    goto :goto_9

    :cond_1a
    const/4 v5, 0x2

    :goto_9
    cmpl-float v6, v3, v2

    if-nez v6, :cond_1b

    const/high16 v3, 0x42e00000    # 112.0f

    invoke-static {v5, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    :cond_1b
    cmpl-float v0, v1, v2

    if-nez v0, :cond_1c

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_1c
    invoke-virtual {v14, v4, v3, v1}, Lk/k0;->e(FFF)V

    :cond_1d
    invoke-virtual {v14}, Lk/k0;->b()Z

    goto :goto_a

    :cond_1e
    const/4 v0, 0x0

    iput v0, v14, Lk/k0;->a:I

    :cond_1f
    :goto_a
    sget-object v0, Lk/c1;->a:Ljava/lang/reflect/Method;

    iget v0, v14, Lk/k0;->a:I

    if-eqz v0, :cond_21

    iget-object v0, v14, Lk/k0;->f:[I

    array-length v1, v0

    if-lez v1, :cond_21

    invoke-virtual {v10}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_20

    iget v0, v14, Lk/k0;->d:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, v14, Lk/k0;->e:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, v14, Lk/k0;->c:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_b

    :cond_20
    const/4 v3, 0x0

    invoke-virtual {v10, v0, v3}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    :cond_21
    :goto_b
    new-instance v0, Lk/R0;

    move-object/from16 v1, v21

    invoke-virtual {v11, v8, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {v0, v11, v1}, Lk/R0;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    const/16 v1, 0x8

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lk/R0;->i(II)I

    move-result v1

    if-eq v1, v2, :cond_22

    invoke-virtual {v12, v1, v11}, Lk/A;->b(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/16 v1, 0xd

    goto :goto_c

    :cond_22
    const/16 v1, 0xd

    const/4 v6, 0x0

    :goto_c
    invoke-virtual {v0, v1, v2}, Lk/R0;->i(II)I

    move-result v1

    if-eq v1, v2, :cond_23

    invoke-virtual {v12, v1, v11}, Lk/A;->b(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_d

    :cond_23
    const/4 v1, 0x0

    :goto_d
    const/16 v3, 0x9

    invoke-virtual {v0, v3, v2}, Lk/R0;->i(II)I

    move-result v3

    if-eq v3, v2, :cond_24

    invoke-virtual {v12, v3, v11}, Lk/A;->b(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_e

    :cond_24
    const/4 v3, 0x0

    :goto_e
    const/4 v4, 0x6

    invoke-virtual {v0, v4, v2}, Lk/R0;->i(II)I

    move-result v4

    if-eq v4, v2, :cond_25

    invoke-virtual {v12, v4, v11}, Lk/A;->b(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_f

    :cond_25
    const/4 v4, 0x0

    :goto_f
    const/16 v5, 0xa

    invoke-virtual {v0, v5, v2}, Lk/R0;->i(II)I

    move-result v5

    if-eq v5, v2, :cond_26

    invoke-virtual {v12, v5, v11}, Lk/A;->b(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_10

    :cond_26
    const/4 v5, 0x0

    :goto_10
    const/4 v7, 0x7

    invoke-virtual {v0, v7, v2}, Lk/R0;->i(II)I

    move-result v7

    if-eq v7, v2, :cond_27

    invoke-virtual {v12, v7, v11}, Lk/A;->b(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_11

    :cond_27
    const/4 v2, 0x0

    :goto_11
    if-nez v5, :cond_32

    if-eqz v2, :cond_28

    goto :goto_19

    :cond_28
    if-nez v6, :cond_29

    if-nez v1, :cond_29

    if-nez v3, :cond_29

    if-eqz v4, :cond_37

    :cond_29
    invoke-virtual {v10}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v5, 0x0

    aget-object v7, v2, v5

    if-nez v7, :cond_2f

    const/4 v8, 0x2

    aget-object v11, v2, v8

    if-eqz v11, :cond_2a

    goto :goto_16

    :cond_2a
    invoke-virtual {v10}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v6, :cond_2b

    goto :goto_12

    :cond_2b
    aget-object v6, v2, v5

    :goto_12
    if-eqz v1, :cond_2c

    goto :goto_13

    :cond_2c
    aget-object v1, v2, v9

    :goto_13
    if-eqz v3, :cond_2d

    goto :goto_14

    :cond_2d
    const/4 v3, 0x2

    aget-object v3, v2, v3

    :goto_14
    if-eqz v4, :cond_2e

    goto :goto_15

    :cond_2e
    const/4 v4, 0x3

    aget-object v4, v2, v4

    :goto_15
    invoke-virtual {v10, v6, v1, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1e

    :cond_2f
    :goto_16
    if-eqz v1, :cond_30

    goto :goto_17

    :cond_30
    aget-object v1, v2, v9

    :goto_17
    const/4 v3, 0x2

    aget-object v3, v2, v3

    if-eqz v4, :cond_31

    goto :goto_18

    :cond_31
    const/4 v4, 0x3

    aget-object v4, v2, v4

    :goto_18
    invoke-virtual {v10, v7, v1, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1e

    :cond_32
    :goto_19
    invoke-virtual {v10}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v5, :cond_33

    goto :goto_1a

    :cond_33
    const/4 v5, 0x0

    aget-object v5, v3, v5

    :goto_1a
    if-eqz v1, :cond_34

    goto :goto_1b

    :cond_34
    aget-object v1, v3, v9

    :goto_1b
    if-eqz v2, :cond_35

    goto :goto_1c

    :cond_35
    const/4 v2, 0x2

    aget-object v2, v3, v2

    :goto_1c
    if-eqz v4, :cond_36

    goto :goto_1d

    :cond_36
    const/4 v4, 0x3

    aget-object v4, v3, v4

    :goto_1d
    invoke-virtual {v10, v5, v1, v2, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_37
    :goto_1e
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lk/R0;->l(I)Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-virtual {v0, v1}, Lk/R0;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    :cond_38
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lk/R0;->l(I)Z

    move-result v2

    if-eqz v2, :cond_39

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lk/R0;->h(II)I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lk/o0;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_1f

    :cond_39
    const/4 v2, -0x1

    :goto_1f
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Lk/R0;->d(II)I

    move-result v1

    const/16 v3, 0x12

    invoke-virtual {v0, v3, v2}, Lk/R0;->d(II)I

    move-result v3

    const/16 v4, 0x13

    invoke-virtual {v0, v4, v2}, Lk/R0;->d(II)I

    move-result v4

    invoke-virtual {v0}, Lk/R0;->n()V

    if-eq v1, v2, :cond_3a

    invoke-static {v1}, LL/f;->a(I)V

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setFirstBaselineToTopHeight(I)V

    :cond_3a
    if-eq v3, v2, :cond_3d

    invoke-static {v3}, LL/f;->a(I)V

    invoke-virtual {v10}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    invoke-virtual {v10}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v1

    if-eqz v1, :cond_3b

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_20

    :cond_3b
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    :goto_20
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v3, v1, :cond_3c

    sub-int/2addr v3, v0

    invoke-virtual {v10}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {v10}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {v10}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_3c
    const/4 v0, -0x1

    goto :goto_21

    :cond_3d
    move v0, v2

    :goto_21
    if-eq v4, v0, :cond_3e

    invoke-static {v10, v4}, LN/i;->a(Landroid/widget/TextView;I)V

    :cond_3e
    return-void
.end method

.method public final e(ILandroid/content/Context;)V
    .locals 4

    sget-object v0, Ld/a;->w:[I

    new-instance v1, Lk/R0;

    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {v1, p2, p1}, Lk/R0;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    const/16 p1, 0xe

    invoke-virtual {v1, p1}, Lk/R0;->l(I)Z

    move-result v0

    iget-object v2, p0, Lk/e0;->a:Landroid/widget/TextView;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1, v3}, Lk/R0;->a(IZ)Z

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_0
    invoke-virtual {v1, v3}, Lk/R0;->l(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    invoke-virtual {v1, v3, p1}, Lk/R0;->d(II)I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {v2, v3, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    invoke-virtual {p0, p2, v1}, Lk/e0;->f(Landroid/content/Context;Lk/R0;)V

    const/16 p1, 0xd

    invoke-virtual {v1, p1}, Lk/R0;->l(I)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {v1, p1}, Lk/R0;->j(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    :cond_2
    invoke-virtual {v1}, Lk/R0;->n()V

    iget-object p1, p0, Lk/e0;->k:Landroid/graphics/Typeface;

    if-eqz p1, :cond_3

    iget p0, p0, Lk/e0;->i:I

    invoke-virtual {v2, p1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_3
    return-void
.end method

.method public final f(Landroid/content/Context;Lk/R0;)V
    .locals 8

    iget v0, p0, Lk/e0;->i:I

    const/4 v1, 0x2

    invoke-virtual {p2, v1, v0}, Lk/R0;->h(II)I

    move-result v0

    iput v0, p0, Lk/e0;->i:I

    const/16 v0, 0xb

    const/4 v2, -0x1

    invoke-virtual {p2, v0, v2}, Lk/R0;->h(II)I

    move-result v0

    iput v0, p0, Lk/e0;->j:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    iget v0, p0, Lk/e0;->i:I

    and-int/2addr v0, v1

    or-int/2addr v0, v3

    iput v0, p0, Lk/e0;->i:I

    :cond_0
    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Lk/R0;->l(I)Z

    move-result v4

    const/16 v5, 0xc

    const/4 v6, 0x1

    if-nez v4, :cond_6

    invoke-virtual {p2, v5}, Lk/R0;->l(I)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v6}, Lk/R0;->l(I)Z

    move-result p1

    if-eqz p1, :cond_5

    iput-boolean v3, p0, Lk/e0;->l:Z

    invoke-virtual {p2, v6, v6}, Lk/R0;->h(II)I

    move-result p1

    if-eq p1, v6, :cond_4

    if-eq p1, v1, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    goto :goto_0

    :cond_2
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object p1, p0, Lk/e0;->k:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_3
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object p1, p0, Lk/e0;->k:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_4
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object p1, p0, Lk/e0;->k:Landroid/graphics/Typeface;

    :cond_5
    :goto_0
    return-void

    :cond_6
    :goto_1
    const/4 v4, 0x0

    iput-object v4, p0, Lk/e0;->k:Landroid/graphics/Typeface;

    invoke-virtual {p2, v5}, Lk/R0;->l(I)Z

    move-result v4

    if-eqz v4, :cond_7

    move v0, v5

    :cond_7
    iget v4, p0, Lk/e0;->j:I

    iget v5, p0, Lk/e0;->i:I

    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result p1

    if-nez p1, :cond_c

    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object v7, p0, Lk/e0;->a:Landroid/widget/TextView;

    invoke-direct {p1, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v7, Lk/c0;

    invoke-direct {v7, p0, v4, v5, p1}, Lk/c0;-><init>(Lk/e0;IILjava/lang/ref/WeakReference;)V

    :try_start_0
    iget p1, p0, Lk/e0;->i:I

    invoke-virtual {p2, v0, p1, v7}, Lk/R0;->g(IILk/c0;)Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_a

    iget v4, p0, Lk/e0;->j:I

    if-eq v4, v2, :cond_9

    invoke-static {p1, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget v4, p0, Lk/e0;->j:I

    iget v5, p0, Lk/e0;->i:I

    and-int/2addr v5, v1

    if-eqz v5, :cond_8

    move v5, v6

    goto :goto_2

    :cond_8
    move v5, v3

    :goto_2
    invoke-static {p1, v4, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lk/e0;->k:Landroid/graphics/Typeface;

    goto :goto_3

    :cond_9
    iput-object p1, p0, Lk/e0;->k:Landroid/graphics/Typeface;

    :cond_a
    :goto_3
    iget-object p1, p0, Lk/e0;->k:Landroid/graphics/Typeface;

    if-nez p1, :cond_b

    move p1, v6

    goto :goto_4

    :cond_b
    move p1, v3

    :goto_4
    iput-boolean p1, p0, Lk/e0;->l:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_c
    iget-object p1, p0, Lk/e0;->k:Landroid/graphics/Typeface;

    if-nez p1, :cond_f

    invoke-virtual {p2, v0}, Lk/R0;->j(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_f

    iget p2, p0, Lk/e0;->j:I

    if-eq p2, v2, :cond_e

    invoke-static {p1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget p2, p0, Lk/e0;->j:I

    iget v0, p0, Lk/e0;->i:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    move v3, v6

    :cond_d
    invoke-static {p1, p2, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lk/e0;->k:Landroid/graphics/Typeface;

    goto :goto_5

    :cond_e
    iget p2, p0, Lk/e0;->i:I

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lk/e0;->k:Landroid/graphics/Typeface;

    :cond_f
    :goto_5
    return-void
.end method
