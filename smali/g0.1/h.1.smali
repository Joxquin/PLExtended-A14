.class public final Lg0/h;
.super Lg0/x;
.source "SourceFile"


# static fields
.field public static final C:[Ljava/lang/String;


# instance fields
.field public B:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "android:visibility:visibility"

    const-string v1, "android:visibility:parent"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lg0/h;->C:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lg0/x;-><init>()V

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lg0/h;->B:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lg0/x;-><init>()V

    const/4 v0, 0x3

    .line 4
    iput v0, p0, Lg0/h;->B:I

    and-int/lit8 v0, p1, -0x4

    if-nez v0, :cond_0

    .line 5
    iput p1, p0, Lg0/h;->B:I

    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only MODE_IN and MODE_OUT flags are allowed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static N(Lg0/F;F)F
    .locals 1

    if-eqz p0, :cond_0

    iget-object p0, p0, Lg0/F;->a:Ljava/util/Map;

    const-string v0, "android:fade:transitionAlpha"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    :cond_0
    return p1
.end method

.method public static O(Lg0/F;Lg0/F;)Lg0/S;
    .locals 8

    new-instance v0, Lg0/S;

    invoke-direct {v0}, Lg0/S;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lg0/S;->a:Z

    iput-boolean v1, v0, Lg0/S;->b:Z

    const-string v2, "android:visibility:parent"

    const/4 v3, 0x0

    const/4 v4, -0x1

    const-string v5, "android:visibility:visibility"

    if-eqz p0, :cond_0

    iget-object v6, p0, Lg0/F;->a:Ljava/util/Map;

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v0, Lg0/S;->c:I

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, v0, Lg0/S;->e:Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    iput v4, v0, Lg0/S;->c:I

    iput-object v3, v0, Lg0/S;->e:Landroid/view/ViewGroup;

    :goto_0
    if-eqz p1, :cond_1

    iget-object v6, p1, Lg0/F;->a:Ljava/util/Map;

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Lg0/S;->d:I

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v0, Lg0/S;->f:Landroid/view/ViewGroup;

    goto :goto_1

    :cond_1
    iput v4, v0, Lg0/S;->d:I

    iput-object v3, v0, Lg0/S;->f:Landroid/view/ViewGroup;

    :goto_1
    const/4 v2, 0x1

    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    iget p0, v0, Lg0/S;->c:I

    iget p1, v0, Lg0/S;->d:I

    if-ne p0, p1, :cond_2

    iget-object v3, v0, Lg0/S;->e:Landroid/view/ViewGroup;

    iget-object v4, v0, Lg0/S;->f:Landroid/view/ViewGroup;

    if-ne v3, v4, :cond_2

    goto :goto_2

    :cond_2
    if-eq p0, p1, :cond_4

    if-nez p0, :cond_3

    iput-boolean v1, v0, Lg0/S;->b:Z

    iput-boolean v2, v0, Lg0/S;->a:Z

    goto :goto_2

    :cond_3
    if-nez p1, :cond_8

    iput-boolean v2, v0, Lg0/S;->b:Z

    iput-boolean v2, v0, Lg0/S;->a:Z

    goto :goto_2

    :cond_4
    iget-object p0, v0, Lg0/S;->f:Landroid/view/ViewGroup;

    if-nez p0, :cond_5

    iput-boolean v1, v0, Lg0/S;->b:Z

    iput-boolean v2, v0, Lg0/S;->a:Z

    goto :goto_2

    :cond_5
    iget-object p0, v0, Lg0/S;->e:Landroid/view/ViewGroup;

    if-nez p0, :cond_8

    iput-boolean v2, v0, Lg0/S;->b:Z

    iput-boolean v2, v0, Lg0/S;->a:Z

    goto :goto_2

    :cond_6
    if-nez p0, :cond_7

    iget p0, v0, Lg0/S;->d:I

    if-nez p0, :cond_7

    iput-boolean v2, v0, Lg0/S;->b:Z

    iput-boolean v2, v0, Lg0/S;->a:Z

    goto :goto_2

    :cond_7
    if-nez p1, :cond_8

    iget p0, v0, Lg0/S;->c:I

    if-nez p0, :cond_8

    iput-boolean v1, v0, Lg0/S;->b:Z

    iput-boolean v2, v0, Lg0/S;->a:Z

    :cond_8
    :goto_2
    return-object v0
.end method


# virtual methods
.method public final L(Lg0/F;)V
    .locals 2

    iget-object p0, p1, Lg0/F;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    iget-object p1, p1, Lg0/F;->a:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p1, Ljava/util/HashMap;

    const-string v1, "android:visibility:visibility"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v1, "android:visibility:parent"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const-string p0, "android:visibility:screenLocation"

    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final M(Landroid/view/View;FF)Landroid/animation/Animator;
    .locals 2

    cmpl-float v0, p2, p3

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lg0/I;->a:Lg0/N;

    invoke-virtual {p1, p2}, Landroid/view/View;->setTransitionAlpha(F)V

    sget-object p2, Lg0/I;->b:Lg0/H;

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    new-instance p3, Lg0/g;

    invoke-direct {p3, p1}, Lg0/g;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Lg0/x;->p()Lg0/x;

    move-result-object p0

    invoke-virtual {p0, p3}, Lg0/x;->a(Lg0/u;)V

    return-object p2
.end method

.method public final e(Lg0/F;)V
    .locals 0

    invoke-virtual {p0, p1}, Lg0/h;->L(Lg0/F;)V

    return-void
.end method

.method public final h(Lg0/F;)V
    .locals 1

    invoke-virtual {p0, p1}, Lg0/h;->L(Lg0/F;)V

    iget-object p0, p1, Lg0/F;->b:Landroid/view/View;

    const v0, 0x7f0a03ac

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lg0/I;->a:Lg0/N;

    invoke-virtual {p0}, Landroid/view/View;->getTransitionAlpha()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :cond_1
    :goto_0
    iget-object p0, p1, Lg0/F;->a:Ljava/util/Map;

    const-string p1, "android:fade:transitionAlpha"

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final l(Landroid/view/ViewGroup;Lg0/F;Lg0/F;)Landroid/animation/Animator;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static/range {p2 .. p3}, Lg0/h;->O(Lg0/F;Lg0/F;)Lg0/S;

    move-result-object v4

    iget-boolean v5, v4, Lg0/S;->a:Z

    if-eqz v5, :cond_1c

    iget-object v5, v4, Lg0/S;->e:Landroid/view/ViewGroup;

    if-nez v5, :cond_0

    iget-object v5, v4, Lg0/S;->f:Landroid/view/ViewGroup;

    if-eqz v5, :cond_1c

    :cond_0
    iget-boolean v5, v4, Lg0/S;->b:Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    if-eqz v5, :cond_4

    iget v1, v0, Lg0/h;->B:I

    and-int/2addr v1, v7

    if-ne v1, v7, :cond_1c

    if-nez v3, :cond_1

    goto/16 :goto_b

    :cond_1
    iget-object v1, v3, Lg0/F;->b:Landroid/view/View;

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v0, v3, v10}, Lg0/x;->o(Landroid/view/View;Z)Lg0/F;

    move-result-object v4

    invoke-virtual {v0, v3, v10}, Lg0/x;->s(Landroid/view/View;Z)Lg0/F;

    move-result-object v3

    invoke-static {v4, v3}, Lg0/h;->O(Lg0/F;Lg0/F;)Lg0/S;

    move-result-object v3

    iget-boolean v3, v3, Lg0/S;->a:Z

    if-eqz v3, :cond_2

    goto/16 :goto_b

    :cond_2
    sget-object v3, Lg0/I;->a:Lg0/N;

    invoke-static {v2, v8}, Lg0/h;->N(Lg0/F;F)F

    move-result v2

    invoke-virtual {v0, v1, v2, v9}, Lg0/h;->M(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v0

    :cond_3
    :goto_0
    move-object v6, v0

    goto/16 :goto_c

    :cond_4
    iget v4, v4, Lg0/S;->d:I

    iget v5, v0, Lg0/h;->B:I

    const/4 v11, 0x2

    and-int/2addr v5, v11

    if-eq v5, v11, :cond_5

    goto/16 :goto_b

    :cond_5
    if-nez v2, :cond_6

    goto/16 :goto_b

    :cond_6
    if-eqz v3, :cond_7

    iget-object v5, v3, Lg0/F;->b:Landroid/view/View;

    goto :goto_1

    :cond_7
    const/4 v5, 0x0

    :goto_1
    iget-object v12, v2, Lg0/F;->b:Landroid/view/View;

    const v13, 0x7f0a02bc

    invoke-virtual {v12, v13}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    if-eqz v14, :cond_8

    move/from16 v18, v4

    const/4 v5, 0x0

    goto/16 :goto_a

    :cond_8
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    if-nez v14, :cond_9

    goto :goto_3

    :cond_9
    const/4 v14, 0x4

    if-ne v4, v14, :cond_a

    goto :goto_2

    :cond_a
    if-ne v12, v5, :cond_c

    :goto_2
    const/4 v14, 0x0

    goto :goto_4

    :cond_b
    :goto_3
    if-eqz v5, :cond_c

    move-object v14, v5

    const/4 v5, 0x0

    :goto_4
    move v15, v10

    goto :goto_5

    :cond_c
    move v15, v7

    const/4 v5, 0x0

    const/4 v14, 0x0

    :goto_5
    if-eqz v15, :cond_14

    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    if-nez v15, :cond_d

    move/from16 v18, v4

    move-object/from16 v17, v5

    move-object v14, v12

    goto/16 :goto_9

    :cond_d
    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    instance-of v15, v15, Landroid/view/View;

    if-eqz v15, :cond_14

    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    invoke-virtual {v0, v15, v7}, Lg0/x;->s(Landroid/view/View;Z)Lg0/F;

    move-result-object v6

    invoke-virtual {v0, v15, v7}, Lg0/x;->o(Landroid/view/View;Z)Lg0/F;

    move-result-object v13

    invoke-static {v6, v13}, Lg0/h;->O(Lg0/F;Lg0/F;)Lg0/S;

    move-result-object v6

    iget-boolean v6, v6, Lg0/S;->a:Z

    if-nez v6, :cond_13

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v15}, Landroid/view/View;->getScrollX()I

    move-result v13

    neg-int v13, v13

    int-to-float v13, v13

    invoke-virtual {v15}, Landroid/view/View;->getScrollY()I

    move-result v14

    neg-int v14, v14

    int-to-float v14, v14

    invoke-virtual {v6, v13, v14}, Landroid/graphics/Matrix;->setTranslate(FF)V

    sget-object v13, Lg0/I;->a:Lg0/N;

    invoke-virtual {v12, v6}, Landroid/view/View;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    new-instance v13, Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v15

    int-to-float v15, v15

    invoke-direct {v13, v8, v8, v14, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v6, v13}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v14, v13, Landroid/graphics/RectF;->left:F

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    iget v15, v13, Landroid/graphics/RectF;->top:F

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    iget v8, v13, Landroid/graphics/RectF;->right:F

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget v11, v13, Landroid/graphics/RectF;->bottom:F

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    new-instance v10, Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v10, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v12}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v9

    xor-int/2addr v9, v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v16

    if-eqz v9, :cond_f

    if-nez v16, :cond_e

    move/from16 v18, v4

    move-object/from16 v17, v5

    const/4 v0, 0x0

    goto/16 :goto_8

    :cond_e
    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v12}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v16

    move-object/from16 v17, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    move/from16 v5, v16

    goto :goto_6

    :cond_f
    move-object/from16 v17, v5

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_6
    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v16

    move/from16 v18, v4

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v3

    if-lez v4, :cond_10

    if-lez v3, :cond_10

    mul-int v0, v4, v3

    int-to-float v0, v0

    const/high16 v16, 0x49800000    # 1048576.0f

    div-float v0, v16, v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float v2, v4

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, v13, Landroid/graphics/RectF;->left:F

    neg-float v4, v4

    iget v13, v13, Landroid/graphics/RectF;->top:F

    neg-float v13, v13

    invoke-virtual {v6, v4, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v6, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-virtual {v12, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_7

    :cond_10
    const/4 v0, 0x0

    :goto_7
    if-eqz v9, :cond_11

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    invoke-virtual {v7, v12, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_11
    :goto_8
    if-eqz v0, :cond_12

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_12
    sub-int v0, v8, v14

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sub-int v3, v11, v15

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v10, v0, v2}, Landroid/widget/ImageView;->measure(II)V

    invoke-virtual {v10, v14, v15, v8, v11}, Landroid/widget/ImageView;->layout(IIII)V

    move-object v14, v10

    goto :goto_9

    :cond_13
    move/from16 v18, v4

    move-object/from16 v17, v5

    invoke-virtual {v15}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_15

    const/4 v2, -0x1

    if-eq v0, v2, :cond_15

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    goto :goto_9

    :cond_14
    move/from16 v18, v4

    move-object/from16 v17, v5

    :cond_15
    :goto_9
    move-object/from16 v5, v17

    const/4 v7, 0x0

    :goto_a
    if-eqz v14, :cond_19

    move-object/from16 v0, p2

    if-nez v7, :cond_16

    iget-object v2, v0, Lg0/F;->a:Ljava/util/Map;

    const-string v3, "android:visibility:screenLocation"

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    const/4 v3, 0x0

    aget v4, v2, v3

    const/4 v5, 0x1

    aget v2, v2, v5

    const/4 v6, 0x2

    new-array v6, v6, [I

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    aget v3, v6, v3

    sub-int/2addr v4, v3

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v4, v3

    invoke-virtual {v14, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    aget v3, v6, v5

    sub-int/2addr v2, v3

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v14, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    :cond_16
    sget-object v2, Lg0/I;->a:Lg0/N;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Lg0/h;->N(Lg0/F;F)F

    move-result v0

    const/4 v4, 0x0

    move-object/from16 v3, p0

    invoke-virtual {v3, v14, v0, v4}, Lg0/h;->M(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v0

    if-nez v0, :cond_17

    move-object/from16 v4, p3

    invoke-static {v4, v2}, Lg0/h;->N(Lg0/F;F)F

    move-result v2

    invoke-virtual {v14, v2}, Landroid/view/View;->setTransitionAlpha(F)V

    :cond_17
    if-nez v7, :cond_3

    if-nez v0, :cond_18

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_18
    const v2, 0x7f0a02bc

    invoke-virtual {v12, v2, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    new-instance v2, Lg0/Q;

    invoke-direct {v2, v3, v1, v14, v12}, Lg0/Q;-><init>(Lg0/h;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    invoke-virtual/range {p0 .. p0}, Lg0/x;->p()Lg0/x;

    move-result-object v1

    invoke-virtual {v1, v2}, Lg0/x;->a(Lg0/u;)V

    goto/16 :goto_0

    :cond_19
    move-object/from16 v3, p0

    move-object/from16 v0, p2

    move-object/from16 v4, p3

    if-eqz v5, :cond_1c

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v1

    sget-object v2, Lg0/I;->a:Lg0/N;

    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Landroid/view/View;->setTransitionVisibility(I)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Lg0/h;->N(Lg0/F;F)F

    move-result v0

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v0, v6}, Lg0/h;->M(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v0

    if-nez v0, :cond_1a

    invoke-static {v4, v2}, Lg0/h;->N(Lg0/F;F)F

    move-result v2

    invoke-virtual {v5, v2}, Landroid/view/View;->setTransitionAlpha(F)V

    :cond_1a
    if-eqz v0, :cond_1b

    new-instance v1, Lg0/P;

    move/from16 v2, v18

    invoke-direct {v1, v5, v2}, Lg0/P;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual/range {p0 .. p0}, Lg0/x;->p()Lg0/x;

    move-result-object v2

    invoke-virtual {v2, v1}, Lg0/x;->a(Lg0/u;)V

    goto/16 :goto_0

    :cond_1b
    invoke-virtual {v5, v1}, Landroid/view/View;->setTransitionVisibility(I)V

    goto/16 :goto_0

    :cond_1c
    :goto_b
    const/4 v6, 0x0

    :goto_c
    return-object v6
.end method

.method public final bridge synthetic r()[Ljava/lang/String;
    .locals 0

    sget-object p0, Lg0/h;->C:[Ljava/lang/String;

    return-object p0
.end method

.method public final u(Lg0/F;Lg0/F;)Z
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object p0, p2, Lg0/F;->a:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    const-string v0, "android:visibility:visibility"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    iget-object v1, p1, Lg0/F;->a:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eq p0, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1, p2}, Lg0/h;->O(Lg0/F;Lg0/F;)Lg0/S;

    move-result-object p0

    iget-boolean p1, p0, Lg0/S;->a:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lg0/S;->c:I

    if-eqz p1, :cond_2

    iget p0, p0, Lg0/S;->d:I

    if-nez p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method
