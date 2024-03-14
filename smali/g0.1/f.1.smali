.class public final Lg0/f;
.super Lg0/x;
.source "SourceFile"


# static fields
.field public static final B:[Ljava/lang/String;

.field public static final C:Lg0/b;

.field public static final D:Lg0/b;

.field public static final E:Lg0/b;

.field public static final F:Lg0/b;

.field public static final G:Lg0/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-string v0, "android:changeBounds:clip"

    const-string v1, "android:changeBounds:parent"

    const-string v2, "android:changeBounds:bounds"

    const-string v3, "android:changeBounds:windowX"

    const-string v4, "android:changeBounds:windowY"

    filled-new-array {v2, v0, v1, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lg0/f;->B:[Ljava/lang/String;

    new-instance v0, Lg0/b;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "topLeft"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lg0/b;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Lg0/f;->C:Lg0/b;

    new-instance v0, Lg0/b;

    const-class v1, Landroid/graphics/PointF;

    const-string v3, "bottomRight"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v3, v4}, Lg0/b;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Lg0/f;->D:Lg0/b;

    new-instance v0, Lg0/b;

    const-class v1, Landroid/graphics/PointF;

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lg0/b;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Lg0/f;->E:Lg0/b;

    new-instance v0, Lg0/b;

    const-class v1, Landroid/graphics/PointF;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lg0/b;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Lg0/f;->F:Lg0/b;

    new-instance v0, Lg0/b;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "position"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lg0/b;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Lg0/f;->G:Lg0/b;

    return-void
.end method


# virtual methods
.method public final L(Lg0/F;)V
    .locals 5

    sget-object p0, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    iget-object p0, p1, Lg0/F;->b:Landroid/view/View;

    invoke-static {p0}, Landroidx/core/view/A;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p1, p1, Lg0/F;->a:Ljava/util/Map;

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    check-cast p1, Ljava/util/HashMap;

    const-string v1, "android:changeBounds:bounds"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const-string v0, "android:changeBounds:parent"

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final e(Lg0/F;)V
    .locals 0

    invoke-virtual {p0, p1}, Lg0/f;->L(Lg0/F;)V

    return-void
.end method

.method public final h(Lg0/F;)V
    .locals 0

    invoke-virtual {p0, p1}, Lg0/f;->L(Lg0/F;)V

    return-void
.end method

.method public final l(Landroid/view/ViewGroup;Lg0/F;Lg0/F;)Landroid/animation/Animator;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    if-eqz v1, :cond_12

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v1, v1, Lg0/F;->a:Ljava/util/Map;

    iget-object v4, v2, Lg0/F;->a:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    const-string v5, "android:changeBounds:parent"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_11

    if-nez v5, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string v5, "android:changeBounds:bounds"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    iget v8, v5, Landroid/graphics/Rect;->left:I

    iget v9, v6, Landroid/graphics/Rect;->top:I

    iget v10, v5, Landroid/graphics/Rect;->top:I

    iget v11, v6, Landroid/graphics/Rect;->right:I

    iget v12, v5, Landroid/graphics/Rect;->right:I

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v13, v11, v7

    sub-int v14, v6, v9

    sub-int v15, v12, v8

    sub-int v3, v5, v10

    const-string v0, "android:changeBounds:clip"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    const/4 v4, 0x1

    const/16 v16, 0x0

    if-eqz v13, :cond_2

    if-nez v14, :cond_3

    :cond_2
    if-eqz v15, :cond_7

    if-eqz v3, :cond_7

    :cond_3
    if-ne v7, v8, :cond_4

    if-eq v9, v10, :cond_5

    :cond_4
    move/from16 v16, v4

    :cond_5
    if-ne v11, v12, :cond_6

    if-eq v6, v5, :cond_7

    :cond_6
    add-int/lit8 v16, v16, 0x1

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    :cond_8
    if-nez v1, :cond_a

    if-eqz v0, :cond_a

    :cond_9
    add-int/lit8 v16, v16, 0x1

    :cond_a
    move/from16 v0, v16

    if-lez v0, :cond_10

    sget-object v1, Lg0/I;->a:Lg0/N;

    iget-object v1, v2, Lg0/F;->b:Landroid/view/View;

    invoke-virtual {v1, v7, v9, v11, v6}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    const/4 v2, 0x2

    if-ne v0, v2, :cond_c

    if-ne v13, v15, :cond_b

    if-ne v14, v3, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lg0/x;->x:Lg0/p;

    int-to-float v3, v7

    int-to-float v5, v9

    int-to-float v6, v8

    int-to-float v7, v10

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v5, v6, v7}, Lg0/p;->a(FFFF)Landroid/graphics/Path;

    move-result-object v2

    sget-object v3, Lg0/f;->G:Lg0/b;

    const/4 v5, 0x0

    invoke-static {v1, v3, v5, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    new-instance v2, Lg0/e;

    invoke-direct {v2, v1}, Lg0/e;-><init>(Landroid/view/View;)V

    iget-object v3, v0, Lg0/x;->x:Lg0/p;

    int-to-float v7, v7

    int-to-float v9, v9

    int-to-float v8, v8

    int-to-float v10, v10

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v9, v8, v10}, Lg0/p;->a(FFFF)Landroid/graphics/Path;

    move-result-object v3

    sget-object v7, Lg0/f;->C:Lg0/b;

    const/4 v8, 0x0

    invoke-static {v2, v7, v8, v3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v7, v0, Lg0/x;->x:Lg0/p;

    int-to-float v9, v11

    int-to-float v6, v6

    int-to-float v10, v12

    int-to-float v5, v5

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9, v6, v10, v5}, Lg0/p;->a(FFFF)Landroid/graphics/Path;

    move-result-object v5

    sget-object v6, Lg0/f;->D:Lg0/b;

    invoke-static {v2, v6, v8, v5}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    filled-new-array {v3, v5}, [Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v3, Lg0/c;

    invoke-direct {v3, v2}, Lg0/c;-><init>(Lg0/e;)V

    invoke-virtual {v6, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object v2, v6

    goto :goto_1

    :cond_c
    move-object/from16 v0, p0

    if-ne v7, v8, :cond_e

    if-eq v9, v10, :cond_d

    goto :goto_0

    :cond_d
    iget-object v2, v0, Lg0/x;->x:Lg0/p;

    int-to-float v3, v11

    int-to-float v6, v6

    int-to-float v7, v12

    int-to-float v5, v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v6, v7, v5}, Lg0/p;->a(FFFF)Landroid/graphics/Path;

    move-result-object v2

    sget-object v3, Lg0/f;->E:Lg0/b;

    const/4 v5, 0x0

    invoke-static {v1, v3, v5, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    goto :goto_1

    :cond_e
    :goto_0
    const/4 v5, 0x0

    iget-object v2, v0, Lg0/x;->x:Lg0/p;

    int-to-float v3, v7

    int-to-float v6, v9

    int-to-float v7, v8

    int-to-float v8, v10

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v6, v7, v8}, Lg0/p;->a(FFFF)Landroid/graphics/Path;

    move-result-object v2

    sget-object v3, Lg0/f;->F:Lg0/b;

    invoke-static {v1, v3, v5, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_f

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    invoke-virtual/range {p0 .. p0}, Lg0/x;->p()Lg0/x;

    move-result-object v0

    new-instance v3, Lg0/d;

    invoke-direct {v3, v1}, Lg0/d;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v3}, Lg0/x;->a(Lg0/u;)V

    :cond_f
    return-object v2

    :cond_10
    const/4 v0, 0x0

    return-object v0

    :cond_11
    :goto_2
    const/4 v0, 0x0

    return-object v0

    :cond_12
    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public final r()[Ljava/lang/String;
    .locals 0

    sget-object p0, Lg0/f;->B:[Ljava/lang/String;

    return-object p0
.end method
