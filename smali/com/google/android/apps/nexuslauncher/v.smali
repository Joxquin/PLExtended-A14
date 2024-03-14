.class public final Lcom/google/android/apps/nexuslauncher/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/apps/nexuslauncher/v;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/apps/nexuslauncher/v;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/v;-><init>()V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/v;->a:Lcom/google/android/apps/nexuslauncher/v;

    return-void
.end method

.method public static final a(Landroid/view/ViewGroup;Lcom/google/android/apps/nexuslauncher/RingAppearAnimation$VirtualPage;[FLjava/util/ArrayList;ZLjava/util/HashSet;II)V
    .locals 3

    iget v0, p1, Lcom/google/android/apps/nexuslauncher/RingAppearAnimation$VirtualPage;->d:I

    div-int v1, p6, v0

    rem-int/2addr p6, v0

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/RingAppearAnimation$VirtualPage;->a:Ljava/util/List;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-ltz v1, :cond_0

    invoke-static {p1}, Lkotlin/collections/n;->a(Ljava/util/List;)I

    move-result v2

    if-gt v1, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    check-cast p1, Lcom/android/launcher3/CellLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p6, p7}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_d

    instance-of p1, p5, Ljava/util/Collection;

    const/4 p6, 0x1

    const/4 p7, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p5}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/nexuslauncher/RingAppearAnimation$ViewWithPivot;

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/RingAppearAnimation$ViewWithPivot;->a:Landroid/view/View;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move p1, p7

    goto :goto_2

    :cond_4
    :goto_1
    move p1, p6

    :goto_2
    if-eqz p1, :cond_d

    instance-of p1, p3, Ljava/util/Collection;

    if-eqz p1, :cond_5

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashSet;

    instance-of v1, p3, Ljava/util/Collection;

    if-eqz v1, :cond_7

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_8
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/nexuslauncher/RingAppearAnimation$ViewWithPivot;

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/RingAppearAnimation$ViewWithPivot;->a:Landroid/view/View;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move p3, p6

    goto :goto_4

    :cond_9
    :goto_3
    move p3, p7

    :goto_4
    if-eqz p3, :cond_6

    move p1, p6

    goto :goto_6

    :cond_a
    :goto_5
    move p1, p7

    :goto_6
    if-nez p1, :cond_d

    instance-of p1, v0, Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;

    if-eqz p4, :cond_c

    if-nez p1, :cond_b

    goto :goto_7

    :cond_b
    move p1, p7

    goto :goto_8

    :cond_c
    :goto_7
    move p1, p6

    :goto_8
    if-eqz p1, :cond_d

    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/Utilities;->mapCoordInSelfToDescendant(Landroid/view/View;Landroid/view/View;[F)V

    new-instance p0, Lcom/google/android/apps/nexuslauncher/RingAppearAnimation$ViewWithPivot;

    aget p2, p1, p7

    aget p1, p1, p6

    invoke-direct {p0, v0, p2, p1}, Lcom/google/android/apps/nexuslauncher/RingAppearAnimation$ViewWithPivot;-><init>(Landroid/view/View;FF)V

    invoke-virtual {p5, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public static c(Lcom/android/launcher3/Workspace;)Ljava/util/List;
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getVisiblePageIndices()Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    const-string v1, "workspace.visiblePageIndices"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/collections/o;->d(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const-string v3, "pageIndex"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type com.android.launcher3.CellLayout"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public final b(Lcom/android/launcher3/anim/PendingAnimation;Ljava/util/List;Lcom/android/launcher3/Hotseat;Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;ZF)V
    .locals 17

    const-string v0, "outPI"

    move-object/from16 v7, p1

    invoke-static {v7, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launcher"

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v4

    const-string v0, "launcher.rootView"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p2

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/CellLayout;

    new-array v9, v9, [F

    invoke-virtual {v5}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getWidth()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    aput v10, v9, v8

    invoke-virtual {v5}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v11

    aput v10, v9, v6

    invoke-static {v5, v4, v9, v6, v8}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    aget v5, v9, v8

    add-float/2addr v2, v5

    aget v5, v9, v6

    add-float/2addr v3, v5

    goto :goto_0

    :cond_0
    new-array v9, v9, [F

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    aput v2, v9, v8

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v3, v0

    aput v3, v9, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v5, p5

    move-object v6, v9

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/apps/nexuslauncher/v;->buildViewRingsWithPivots(Ljava/util/List;Landroid/view/View;Landroid/view/ViewGroup;Z[F)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v9, v8, 0x1

    if-ltz v8, :cond_2

    check-cast v1, Ljava/util/HashSet;

    const v2, 0x3da3d70a    # 0.08f

    int-to-float v3, v8

    mul-float/2addr v3, v2

    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v8, p6

    invoke-static {v2, v8, v3, v8}, Lw/f;->a(FFFF)F

    move-result v3

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-static {v2, v3, v4, v3}, Lw/f;->a(FFFF)F

    move-result v4

    sget-object v5, Ly0/e;->m:Landroid/view/animation/Interpolator;

    invoke-static {v3, v4, v5}, Ly0/e;->b(FFLandroid/view/animation/Interpolator;)Ly0/b;

    move-result-object v10

    sget-object v4, Ly0/e;->c:Landroid/view/animation/Interpolator;

    invoke-static {v3, v2, v4}, Ly0/e;->b(FFLandroid/view/animation/Interpolator;)Ly0/b;

    move-result-object v11

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/google/android/apps/nexuslauncher/RingAppearAnimation$ViewWithPivot;

    iget-object v2, v13, Lcom/google/android/apps/nexuslauncher/RingAppearAnimation$ViewWithPivot;->a:Landroid/view/View;

    sget-object v3, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_ALPHA:Landroid/util/FloatProperty;

    const/4 v4, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v1, p1

    move v5, v14

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    iget-object v2, v13, Lcom/google/android/apps/nexuslauncher/RingAppearAnimation$ViewWithPivot;->a:Landroid/view/View;

    sget-object v3, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    const v4, 0x3f266666    # 0.65f

    move-object v6, v11

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    sget-object v3, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_X:Landroid/util/FloatProperty;

    iget-object v14, v13, Lcom/google/android/apps/nexuslauncher/RingAppearAnimation$ViewWithPivot;->a:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getPivotX()F

    move-result v1

    iget v2, v13, Lcom/google/android/apps/nexuslauncher/RingAppearAnimation$ViewWithPivot;->b:F

    sub-float/2addr v2, v1

    const v15, 0x3eb33334    # 0.35000002f

    mul-float v4, v2, v15

    const/16 v16, 0x0

    move-object/from16 v1, p1

    move-object v2, v14

    move/from16 v5, v16

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    sget-object v3, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    invoke-virtual {v14}, Landroid/view/View;->getPivotY()F

    move-result v1

    iget v2, v13, Lcom/google/android/apps/nexuslauncher/RingAppearAnimation$ViewWithPivot;->c:F

    sub-float/2addr v2, v1

    mul-float v4, v2, v15

    move-object/from16 v1, p1

    move-object v2, v14

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    goto :goto_2

    :cond_1
    move v8, v9

    goto/16 :goto_1

    :cond_2
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Index overflow has happened."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method

.method public final buildViewRingsWithPivots(Ljava/util/List;Landroid/view/View;Landroid/view/ViewGroup;Z[F)Ljava/util/ArrayList;
    .locals 9

    const-string p0, "visiblePages"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "rootView"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "animationOrigin"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/google/android/apps/nexuslauncher/RingAppearAnimation$VirtualPage;

    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/RingAppearAnimation$VirtualPage;-><init>(Ljava/util/List;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/google/android/apps/nexuslauncher/RingAppearAnimation$buildViewRingsWithPivots$addChildAtCoordsToRing$1;

    move-object v0, v7

    move-object v1, p3

    move-object v2, p0

    move-object v3, p5

    move-object v4, v6

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/nexuslauncher/RingAppearAnimation$buildViewRingsWithPivots$addChildAtCoordsToRing$1;-><init>(Landroid/view/ViewGroup;Lcom/google/android/apps/nexuslauncher/RingAppearAnimation$VirtualPage;[FLjava/util/ArrayList;Z)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-static {p1}, Lkotlin/collections/s;->h(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    instance-of p1, v1, Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;

    if-eqz p4, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v3

    :goto_1
    if-nez p1, :cond_2

    move p1, v3

    goto :goto_2

    :cond_2
    move p1, v2

    :goto_2
    iget p4, p0, Lcom/google/android/apps/nexuslauncher/RingAppearAnimation$VirtualPage;->b:I

    sub-int/2addr p4, v3

    iget p0, p0, Lcom/google/android/apps/nexuslauncher/RingAppearAnimation$VirtualPage;->c:I

    sub-int/2addr p0, v3

    invoke-direct {v0, v2, p1, p4, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    new-instance p1, Landroid/graphics/Point;

    iget p4, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {p1, p4, v1}, Landroid/graphics/Point;-><init>(II)V

    new-instance p4, Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {p4, v1, v4}, Landroid/graphics/Point;-><init>(II)V

    new-instance v1, Landroid/graphics/Point;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    new-instance v4, Landroid/graphics/Point;

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v4, v5, v8}, Landroid/graphics/Point;-><init>(II)V

    filled-new-array {p1, p4, v1, v4}, [Landroid/graphics/Point;

    move-result-object p1

    move p4, v2

    :goto_3
    const/4 v1, 0x4

    if-ge p4, v1, :cond_3

    aget-object v1, p1, p4

    iget v4, v1, Landroid/graphics/Point;->x:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v4, v1, p0}, Lcom/google/android/apps/nexuslauncher/RingAppearAnimation$buildViewRingsWithPivots$addChildAtCoordsToRing$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result p1

    if-lez p1, :cond_4

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_4
    iget p0, v0, Landroid/graphics/Rect;->top:I

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    if-gt p0, p1, :cond_a

    iget p0, v0, Landroid/graphics/Rect;->left:I

    iget p1, v0, Landroid/graphics/Rect;->right:I

    if-gt p0, p1, :cond_a

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    iget p1, v0, Landroid/graphics/Rect;->top:I

    iget p4, v0, Landroid/graphics/Rect;->bottom:I

    if-gt p1, p4, :cond_8

    :goto_5
    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-eq p1, v1, :cond_6

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-ne p1, v1, :cond_5

    goto :goto_6

    :cond_5
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v1, v4}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/n;->c([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_7

    :cond_6
    :goto_6
    new-instance v1, Lq3/c;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    invoke-direct {v1, v4, v5}, Lq3/c;-><init>(II)V

    :goto_7
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5, p0}, Lcom/google/android/apps/nexuslauncher/RingAppearAnimation$buildViewRingsWithPivots$addChildAtCoordsToRing$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_7
    if-eq p1, p4, :cond_8

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result p1

    if-lez p1, :cond_9

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    iget p0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, v3

    iput p0, v0, Landroid/graphics/Rect;->top:I

    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 p0, p0, -0x1

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    iget p0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, v3

    iput p0, v0, Landroid/graphics/Rect;->left:I

    iget p0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 p0, p0, -0x1

    iput p0, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_4

    :cond_a
    if-nez p2, :cond_b

    goto :goto_9

    :cond_b
    invoke-virtual {p5}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    invoke-static {p2, p3, p0}, Lcom/android/launcher3/Utilities;->mapCoordInSelfToDescendant(Landroid/view/View;Landroid/view/View;[F)V

    new-instance p1, Lcom/google/android/apps/nexuslauncher/RingAppearAnimation$ViewWithPivot;

    aget p3, p0, v2

    aget p0, p0, v3

    invoke-direct {p1, p2, p3, p0}, Lcom/google/android/apps/nexuslauncher/RingAppearAnimation$ViewWithPivot;-><init>(Landroid/view/View;FF)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_c

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_c
    filled-new-array {p1}, [Lcom/google/android/apps/nexuslauncher/RingAppearAnimation$ViewWithPivot;

    move-result-object p0

    new-instance p1, Ljava/util/HashSet;

    invoke-static {v3}, Lkotlin/collections/w;->a(I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(I)V

    aget-object p0, p0, v2

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_9
    return-object v6
.end method
