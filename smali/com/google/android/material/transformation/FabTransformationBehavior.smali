.class public abstract Lcom/google/android/material/transformation/FabTransformationBehavior;
.super Lcom/google/android/material/transformation/ExpandableTransformationBehavior;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final c:Landroid/graphics/Rect;

.field public final d:Landroid/graphics/RectF;

.field public final e:Landroid/graphics/RectF;

.field public final f:[I

.field public g:F

.field public h:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->c:Landroid/graphics/Rect;

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    .line 4
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 5
    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->f:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->c:Landroid/graphics/Rect;

    .line 8
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    .line 9
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 10
    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->f:[I

    return-void
.end method

.method public static u(FFZLI2/g;)Landroid/util/Pair;
    .locals 1

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_4

    cmpl-float p0, p1, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    cmpg-float p1, p1, v0

    if-ltz p1, :cond_2

    :cond_1
    if-nez p2, :cond_3

    if-lez p0, :cond_3

    :cond_2
    iget-object p0, p3, LI2/g;->a:Lj2/g;

    const-string p1, "translationXCurveUpwards"

    invoke-virtual {p0, p1}, Lj2/g;->c(Ljava/lang/String;)Lj2/h;

    move-result-object p0

    iget-object p1, p3, LI2/g;->a:Lj2/g;

    const-string p2, "translationYCurveUpwards"

    invoke-virtual {p1, p2}, Lj2/g;->c(Ljava/lang/String;)Lj2/h;

    move-result-object p1

    goto :goto_1

    :cond_3
    iget-object p0, p3, LI2/g;->a:Lj2/g;

    const-string p1, "translationXCurveDownwards"

    invoke-virtual {p0, p1}, Lj2/g;->c(Ljava/lang/String;)Lj2/h;

    move-result-object p0

    iget-object p1, p3, LI2/g;->a:Lj2/g;

    const-string p2, "translationYCurveDownwards"

    invoke-virtual {p1, p2}, Lj2/g;->c(Ljava/lang/String;)Lj2/h;

    move-result-object p1

    goto :goto_1

    :cond_4
    :goto_0
    iget-object p0, p3, LI2/g;->a:Lj2/g;

    const-string p1, "translationXLinear"

    invoke-virtual {p0, p1}, Lj2/g;->c(Ljava/lang/String;)Lj2/h;

    move-result-object p0

    iget-object p1, p3, LI2/g;->a:Lj2/g;

    const-string p2, "translationYLinear"

    invoke-virtual {p1, p2}, Lj2/g;->c(Ljava/lang/String;)Lj2/h;

    move-result-object p1

    :goto_1
    new-instance p2, Landroid/util/Pair;

    invoke-direct {p2, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method public static x(LI2/g;Lj2/h;F)F
    .locals 6

    iget-wide v0, p1, Lj2/h;->a:J

    iget-object p0, p0, LI2/g;->a:Lj2/g;

    const-string v2, "expansion"

    invoke-virtual {p0, v2}, Lj2/g;->c(Ljava/lang/String;)Lj2/h;

    move-result-object p0

    iget-wide v2, p0, Lj2/h;->a:J

    iget-wide v4, p0, Lj2/h;->b:J

    add-long/2addr v2, v4

    const-wide/16 v4, 0x11

    add-long/2addr v2, v4

    sub-long/2addr v2, v0

    long-to-float p0, v2

    iget-wide v0, p1, Lj2/h;->b:J

    long-to-float v0, v0

    div-float/2addr p0, v0

    invoke-virtual {p1}, Lj2/h;->b()Landroid/animation/TimeInterpolator;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p0

    sget-object p1, Lj2/a;->a:Landroid/animation/TimeInterpolator;

    const/4 p1, 0x0

    invoke-static {p1, p2, p0, p2}, Lw/f;->a(FFFF)F

    move-result p0

    return p0
.end method


# virtual methods
.method public final b(Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/16 p1, 0x8

    if-eq p0, p1, :cond_1

    instance-of p0, p2, Lw2/g;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p2, Lw2/g;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(Lz/f;)V
    .locals 0

    iget p0, p1, Lz/f;->h:I

    if-nez p0, :cond_0

    const/16 p0, 0x50

    iput p0, p1, Lz/f;->h:I

    :cond_0
    return-void
.end method

.method public final t(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lcom/google/android/material/transformation/FabTransformationBehavior;->z(Landroid/content/Context;Z)LI2/g;

    move-result-object v4

    if-eqz v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    move-result v5

    iput v5, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->g:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    move-result v5

    iput v5, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->h:F

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget-object v7, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static/range {p2 .. p2}, Landroidx/core/view/D;->d(Landroid/view/View;)F

    move-result v7

    invoke-static/range {p1 .. p1}, Landroidx/core/view/D;->d(Landroid/view/View;)F

    move-result v8

    sub-float/2addr v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v3, :cond_2

    if-nez p4, :cond_1

    neg-float v7, v7

    invoke-virtual {v2, v7}, Landroid/view/View;->setTranslationZ(F)V

    :cond_1
    sget-object v7, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v11, v10, [F

    aput v9, v11, v8

    invoke-static {v2, v7, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    goto :goto_0

    :cond_2
    sget-object v11, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v12, v10, [F

    neg-float v7, v7

    aput v7, v12, v8

    invoke-static {v2, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    :goto_0
    iget-object v11, v4, LI2/g;->a:Lj2/g;

    const-string v12, "elevation"

    invoke-virtual {v11, v12}, Lj2/g;->c(Ljava/lang/String;)Lj2/h;

    move-result-object v11

    invoke-virtual {v11, v7}, Lj2/h;->a(Landroid/animation/Animator;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    iget-object v11, v4, LI2/g;->b:Lj2/i;

    invoke-virtual {v0, v1, v2, v11}, Lcom/google/android/material/transformation/FabTransformationBehavior;->v(Landroid/view/View;Landroid/view/View;Lj2/i;)F

    move-result v11

    iget-object v12, v4, LI2/g;->b:Lj2/i;

    invoke-virtual {v0, v1, v2, v12}, Lcom/google/android/material/transformation/FabTransformationBehavior;->w(Landroid/view/View;Landroid/view/View;Lj2/i;)F

    move-result v12

    invoke-static {v11, v12, v3, v4}, Lcom/google/android/material/transformation/FabTransformationBehavior;->u(FFZLI2/g;)Landroid/util/Pair;

    move-result-object v13

    iget-object v14, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Lj2/h;

    iget-object v13, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Lj2/h;

    iget-object v15, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    iget-object v8, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->c:Landroid/graphics/Rect;

    if-eqz v3, :cond_4

    if-nez p4, :cond_3

    neg-float v9, v11

    invoke-virtual {v2, v9}, Landroid/view/View;->setTranslationX(F)V

    neg-float v9, v12

    invoke-virtual {v2, v9}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    move-object/from16 v18, v6

    new-array v6, v10, [F

    const/16 v16, 0x0

    const/16 v17, 0x0

    aput v17, v6, v16

    invoke-static {v2, v9, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    move-object/from16 v19, v6

    new-array v6, v10, [F

    aput v17, v6, v16

    invoke-static {v2, v9, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    neg-float v9, v11

    neg-float v11, v12

    invoke-static {v4, v14, v9}, Lcom/google/android/material/transformation/FabTransformationBehavior;->x(LI2/g;Lj2/h;F)F

    move-result v9

    invoke-static {v4, v13, v11}, Lcom/google/android/material/transformation/FabTransformationBehavior;->x(LI2/g;Lj2/h;F)F

    move-result v11

    invoke-virtual {v2, v8}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {v7, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v2, v15}, Lcom/google/android/material/transformation/FabTransformationBehavior;->y(Landroid/view/View;Landroid/graphics/RectF;)V

    invoke-virtual {v15, v9, v11}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v15, v7}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    invoke-virtual {v7, v15}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    move-object v9, v6

    move-object/from16 v6, v19

    goto :goto_1

    :cond_4
    move-object/from16 v18, v6

    sget-object v6, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v9, v10, [F

    neg-float v11, v11

    const/16 v16, 0x0

    aput v11, v9, v16

    invoke-static {v2, v6, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v11, v10, [F

    neg-float v12, v12

    aput v12, v11, v16

    invoke-static {v2, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    :goto_1
    invoke-virtual {v14, v6}, Lj2/h;->a(Landroid/animation/Animator;)V

    invoke-virtual {v13, v9}, Lj2/h;->a(Landroid/animation/Animator;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v9

    iget-object v11, v4, LI2/g;->b:Lj2/i;

    invoke-virtual {v0, v1, v2, v11}, Lcom/google/android/material/transformation/FabTransformationBehavior;->v(Landroid/view/View;Landroid/view/View;Lj2/i;)F

    move-result v11

    iget-object v12, v4, LI2/g;->b:Lj2/i;

    invoke-virtual {v0, v1, v2, v12}, Lcom/google/android/material/transformation/FabTransformationBehavior;->w(Landroid/view/View;Landroid/view/View;Lj2/i;)F

    move-result v12

    invoke-static {v11, v12, v3, v4}, Lcom/google/android/material/transformation/FabTransformationBehavior;->u(FFZLI2/g;)Landroid/util/Pair;

    move-result-object v13

    iget-object v14, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Lj2/h;

    iget-object v13, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Lj2/h;

    move/from16 v19, v11

    sget-object v11, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    move/from16 v20, v12

    new-array v12, v10, [F

    if-eqz v3, :cond_5

    move/from16 v10, v19

    goto :goto_2

    :cond_5
    iget v10, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->g:F

    :goto_2
    const/16 v16, 0x0

    aput v10, v12, v16

    invoke-static {v1, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    sget-object v11, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    move/from16 v21, v9

    const/4 v12, 0x1

    new-array v9, v12, [F

    if-eqz v3, :cond_6

    move/from16 v12, v20

    goto :goto_3

    :cond_6
    iget v12, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->h:F

    :goto_3
    aput v12, v9, v16

    invoke-static {v1, v11, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v14, v10}, Lj2/h;->a(Landroid/animation/Animator;)V

    invoke-virtual {v13, v9}, Lj2/h;->a(Landroid/animation/Animator;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of v9, v2, Lr2/g;

    if-eqz v9, :cond_b

    instance-of v10, v1, Landroid/widget/ImageView;

    if-nez v10, :cond_7

    goto :goto_5

    :cond_7
    move-object v10, v2

    check-cast v10, Lr2/g;

    move-object v11, v1

    check-cast v11, Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-nez v11, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    const/16 v12, 0xff

    if-eqz v3, :cond_a

    if-nez p4, :cond_9

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_9
    sget-object v12, Lj2/e;->a:Lj2/e;

    const/4 v13, 0x0

    filled-new-array {v13}, [I

    move-result-object v14

    invoke-static {v11, v12, v14}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v12

    goto :goto_4

    :cond_a
    sget-object v13, Lj2/e;->a:Lj2/e;

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-static {v11, v13, v12}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v12

    :goto_4
    new-instance v13, LI2/d;

    invoke-direct {v13, v2}, LI2/d;-><init>(Landroid/view/View;)V

    invoke-virtual {v12, v13}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v13, v4, LI2/g;->a:Lj2/g;

    const-string v14, "iconFade"

    invoke-virtual {v13, v14}, Lj2/g;->c(Ljava/lang/String;)Lj2/h;

    move-result-object v13

    invoke-virtual {v13, v12}, Lj2/h;->a(Landroid/animation/Animator;)V

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, LI2/e;

    invoke-direct {v12, v10, v11}, LI2/e;-><init>(Lr2/g;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v10, v18

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    :goto_5
    move-object/from16 v10, v18

    :goto_6
    if-nez v9, :cond_c

    move-object/from16 v23, v4

    move-object v3, v5

    move/from16 v20, v9

    move-object v4, v10

    goto/16 :goto_b

    :cond_c
    move-object v12, v2

    check-cast v12, Lr2/g;

    iget-object v13, v4, LI2/g;->b:Lj2/i;

    invoke-virtual {v0, v1, v7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->y(Landroid/view/View;Landroid/graphics/RectF;)V

    iget v14, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->g:F

    iget v11, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->h:F

    invoke-virtual {v7, v14, v11}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v0, v2, v15}, Lcom/google/android/material/transformation/FabTransformationBehavior;->y(Landroid/view/View;Landroid/graphics/RectF;)V

    invoke-virtual {v0, v1, v2, v13}, Lcom/google/android/material/transformation/FabTransformationBehavior;->v(Landroid/view/View;Landroid/view/View;Lj2/i;)F

    move-result v11

    neg-float v11, v11

    const/4 v13, 0x0

    invoke-virtual {v15, v11, v13}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v11

    iget v13, v15, Landroid/graphics/RectF;->left:F

    sub-float/2addr v11, v13

    iget-object v13, v4, LI2/g;->b:Lj2/i;

    invoke-virtual {v0, v1, v7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->y(Landroid/view/View;Landroid/graphics/RectF;)V

    iget v14, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->g:F

    move/from16 v20, v9

    iget v9, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->h:F

    invoke-virtual {v7, v14, v9}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v0, v2, v15}, Lcom/google/android/material/transformation/FabTransformationBehavior;->y(Landroid/view/View;Landroid/graphics/RectF;)V

    invoke-virtual {v0, v1, v2, v13}, Lcom/google/android/material/transformation/FabTransformationBehavior;->w(Landroid/view/View;Landroid/view/View;Lj2/i;)F

    move-result v0

    neg-float v0, v0

    const/4 v9, 0x0

    invoke-virtual {v15, v9, v0}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget v7, v15, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v7

    move-object v7, v1

    check-cast v7, Lw2/g;

    invoke-static {v7}, Landroidx/core/view/A;->c(Landroid/view/View;)Z

    move-result v9

    if-nez v9, :cond_22

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    iget-object v8, v4, LI2/g;->a:Lj2/g;

    const-string v9, "expansion"

    invoke-virtual {v8, v9}, Lj2/g;->c(Ljava/lang/String;)Lj2/h;

    move-result-object v8

    if-eqz v3, :cond_13

    if-nez p4, :cond_d

    invoke-interface {v12}, Lr2/g;->a()V

    :cond_d
    if-eqz p4, :cond_e

    invoke-interface {v12}, Lr2/g;->c()Lr2/f;

    move-result-object v7

    iget v7, v7, Lr2/f;->c:F

    :cond_e
    const/4 v9, 0x0

    sub-float v15, v9, v11

    sub-float v13, v9, v0

    float-to-double v14, v15

    move-object/from16 v24, v10

    float-to-double v9, v13

    move-object v13, v4

    invoke-static {v14, v15, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v3, v3

    sub-float/2addr v6, v11

    move-object/from16 v25, v5

    float-to-double v4, v6

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    double-to-float v6, v9

    sub-float v9, v21, v0

    float-to-double v9, v9

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v14, v15, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    double-to-float v5, v9

    cmpl-float v9, v3, v6

    if-lez v9, :cond_f

    cmpl-float v9, v3, v4

    if-lez v9, :cond_f

    cmpl-float v9, v3, v5

    if-lez v9, :cond_f

    goto :goto_7

    :cond_f
    cmpl-float v3, v6, v4

    if-lez v3, :cond_10

    cmpl-float v3, v6, v5

    if-lez v3, :cond_10

    move v3, v6

    goto :goto_7

    :cond_10
    cmpl-float v3, v4, v5

    if-lez v3, :cond_11

    move v3, v4

    goto :goto_7

    :cond_11
    move v3, v5

    :goto_7
    invoke-static {v12, v11, v0, v3}, Lr2/b;->a(Lr2/g;FFF)Landroid/animation/Animator;

    move-result-object v3

    new-instance v4, LI2/f;

    invoke-direct {v4, v12}, LI2/f;-><init>(Lr2/g;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-wide v4, v8, Lj2/h;->a:J

    float-to-int v6, v11

    float-to-int v0, v0

    const-wide/16 v9, 0x0

    cmp-long v11, v4, v9

    if-lez v11, :cond_12

    invoke-static {v2, v6, v0, v7, v7}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-object/from16 v4, v25

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_12
    move-object/from16 v4, v25

    :goto_8
    move-object v5, v3

    move-object v3, v4

    move-object/from16 v23, v13

    goto/16 :goto_a

    :cond_13
    move-object v13, v4

    move-object v4, v5

    move-object/from16 v24, v10

    invoke-interface {v12}, Lr2/g;->c()Lr2/f;

    move-result-object v3

    iget v3, v3, Lr2/f;->c:F

    invoke-static {v12, v11, v0, v7}, Lr2/b;->a(Lr2/g;FFF)Landroid/animation/Animator;

    move-result-object v5

    iget-wide v9, v8, Lj2/h;->a:J

    float-to-int v6, v11

    float-to-int v0, v0

    const-wide/16 v14, 0x0

    cmp-long v11, v9, v14

    if-lez v11, :cond_14

    invoke-static {v2, v6, v0, v3, v3}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {v3, v9, v10}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    move-object v3, v13

    iget-object v9, v3, LI2/g;->a:Lj2/g;

    iget-object v9, v9, Lj2/g;->a:Lq/m;

    iget v10, v9, Lq/m;->f:I

    move-wide v13, v14

    const/4 v11, 0x0

    :goto_9
    if-ge v11, v10, :cond_15

    invoke-virtual {v9, v11}, Lq/m;->j(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lj2/h;

    move-object/from16 v21, v9

    move/from16 v22, v10

    iget-wide v9, v15, Lj2/h;->a:J

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    iget-wide v3, v15, Lj2/h;->b:J

    add-long/2addr v9, v3

    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v9, v21

    move/from16 v10, v22

    move-object/from16 v3, v23

    move-object/from16 v4, v25

    goto :goto_9

    :cond_15
    move-object/from16 v23, v3

    move-object/from16 v25, v4

    iget-wide v3, v8, Lj2/h;->a:J

    iget-wide v9, v8, Lj2/h;->b:J

    add-long/2addr v3, v9

    cmp-long v9, v3, v13

    if-gez v9, :cond_16

    invoke-static {v2, v6, v0, v7, v7}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    sub-long/2addr v13, v3

    invoke-virtual {v0, v13, v14}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-object/from16 v3, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_16
    move-object/from16 v3, v25

    :goto_a
    invoke-virtual {v8, v5}, Lj2/h;->a(Landroid/animation/Animator;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lr2/a;

    invoke-direct {v0, v12}, Lr2/a;-><init>(Lr2/g;)V

    move-object/from16 v4, v24

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_b
    if-nez v20, :cond_17

    move/from16 v7, p3

    move-object/from16 v5, v23

    goto :goto_e

    :cond_17
    move-object v0, v2

    check-cast v0, Lr2/g;

    sget-object v5, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static/range {p1 .. p1}, Landroidx/core/view/D;->b(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v5

    if-eqz v5, :cond_18

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v6

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v5

    goto :goto_c

    :cond_18
    const/4 v5, 0x0

    :goto_c
    const v6, 0xffffff

    and-int/2addr v6, v5

    move/from16 v7, p3

    if-eqz v7, :cond_1a

    if-nez p4, :cond_19

    invoke-interface {v0}, Lr2/g;->g()V

    :cond_19
    sget-object v5, Lr2/e;->a:Lr2/e;

    filled-new-array {v6}, [I

    move-result-object v6

    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_d

    :cond_1a
    sget-object v6, Lr2/e;->a:Lr2/e;

    filled-new-array {v5}, [I

    move-result-object v5

    invoke-static {v0, v6, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :goto_d
    sget-object v5, Lj2/c;->a:Lj2/c;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    move-object/from16 v5, v23

    iget-object v6, v5, LI2/g;->a:Lj2/g;

    const-string v8, "color"

    invoke-virtual {v6, v8}, Lj2/g;->c(Ljava/lang/String;)Lj2/h;

    move-result-object v6

    invoke-virtual {v6, v0}, Lj2/h;->a(Landroid/animation/Animator;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_e
    instance-of v0, v2, Landroid/view/ViewGroup;

    if-nez v0, :cond_1b

    goto :goto_11

    :cond_1b
    const v6, 0x7f0a0243

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1d

    instance-of v0, v6, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1c

    move-object v11, v6

    check-cast v11, Landroid/view/ViewGroup;

    goto :goto_f

    :cond_1c
    const/4 v11, 0x0

    goto :goto_f

    :cond_1d
    if-eqz v0, :cond_1c

    move-object v11, v2

    check-cast v11, Landroid/view/ViewGroup;

    :goto_f
    if-nez v11, :cond_1e

    goto :goto_11

    :cond_1e
    if-eqz v7, :cond_20

    if-nez p4, :cond_1f

    sget-object v0, Lj2/d;->a:Lj2/d;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v0, v11, v6}, Lj2/d;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    sget-object v0, Lj2/d;->a:Lj2/d;

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    aput v8, v6, v9

    invoke-static {v11, v0, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_10

    :cond_20
    const/4 v6, 0x1

    const/4 v9, 0x0

    sget-object v0, Lj2/d;->a:Lj2/d;

    new-array v6, v6, [F

    const/4 v8, 0x0

    aput v8, v6, v9

    invoke-static {v11, v0, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :goto_10
    iget-object v5, v5, LI2/g;->a:Lj2/g;

    const-string v6, "contentFade"

    invoke-virtual {v5, v6}, Lj2/g;->c(Ljava/lang/String;)Lj2/h;

    move-result-object v5

    invoke-virtual {v5, v0}, Lj2/h;->a(Landroid/animation/Animator;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_11
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {v0, v3}, Lj2/b;->a(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    new-instance v3, LI2/c;

    invoke-direct {v3, v7, v2, v1}, LI2/c;-><init>(ZLandroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v8, 0x0

    :goto_12
    if-ge v8, v1, :cond_21

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    :cond_21
    return-object v0

    :cond_22
    invoke-virtual {v7}, Landroid/widget/ImageButton;->getWidth()I

    move-result v0

    invoke-virtual {v7}, Landroid/widget/ImageButton;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v8, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final v(Landroid/view/View;Landroid/view/View;Lj2/i;)F
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->y(Landroid/view/View;Landroid/graphics/RectF;)V

    iget p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->g:F

    iget v2, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->h:F

    invoke-virtual {v0, p1, v2}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {p0, p2, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->y(Landroid/view/View;Landroid/graphics/RectF;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result p0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    sub-float/2addr p0, p1

    const/4 p1, 0x0

    add-float/2addr p0, p1

    return p0
.end method

.method public final w(Landroid/view/View;Landroid/view/View;Lj2/i;)F
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->y(Landroid/view/View;Landroid/graphics/RectF;)V

    iget p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->g:F

    iget v2, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->h:F

    invoke-virtual {v0, p1, v2}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {p0, p2, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->y(Landroid/view/View;Landroid/graphics/RectF;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result p0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    sub-float/2addr p0, p1

    const/4 p1, 0x0

    add-float/2addr p0, p1

    return p0
.end method

.method public final y(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->f:[I

    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v0, 0x0

    aget v0, p0, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    aget p0, p0, v1

    int-to-float p0, p0

    invoke-virtual {p2, v0, p0}, Landroid/graphics/RectF;->offsetTo(FF)V

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p0

    neg-float p0, p0

    float-to-int p0, p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    neg-float p1, p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p2, p0, p1}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method

.method public abstract z(Landroid/content/Context;Z)LI2/g;
.end method
