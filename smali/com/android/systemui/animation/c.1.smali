.class public final Lcom/android/systemui/animation/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/systemui/animation/v;


# instance fields
.field public final a:Lcom/android/systemui/animation/d;

.field public final b:Lcom/android/launcher3/J0;

.field public final c:Lcom/android/systemui/animation/e;

.field public final d:Lcom/android/systemui/animation/s;

.field public final e:Landroid/content/Context;

.field public final f:Landroid/view/View;

.field public final g:Landroid/view/SyncRtSurfaceTransactionApplier;

.field public final h:Landroid/os/Handler;

.field public final i:Landroid/graphics/Matrix;

.field public final j:Landroid/graphics/Matrix;

.field public final k:Landroid/graphics/Rect;

.field public final l:Landroid/graphics/RectF;

.field public m:Z

.field public n:Z

.field public o:Lcom/android/systemui/animation/r;

.field public final p:Lcom/android/systemui/animation/a;


# direct methods
.method public constructor <init>(Lcom/android/systemui/animation/d;Lcom/android/launcher3/J0;Lcom/android/systemui/animation/e;Lcom/android/systemui/animation/s;Z)V
    .locals 1

    const-string v0, "launchAnimator"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/c;->a:Lcom/android/systemui/animation/d;

    iput-object p2, p0, Lcom/android/systemui/animation/c;->b:Lcom/android/launcher3/J0;

    iput-object p3, p0, Lcom/android/systemui/animation/c;->c:Lcom/android/systemui/animation/e;

    iput-object p4, p0, Lcom/android/systemui/animation/c;->d:Lcom/android/systemui/animation/s;

    check-cast p1, Lcom/android/systemui/animation/g;

    invoke-virtual {p1}, Lcom/android/systemui/animation/g;->getLaunchContainer()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/animation/c;->e:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/systemui/animation/g;->getOpeningWindowSyncView()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/animation/g;->getLaunchContainer()Landroid/view/ViewGroup;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lcom/android/systemui/animation/c;->f:Landroid/view/View;

    new-instance p1, Landroid/view/SyncRtSurfaceTransactionApplier;

    invoke-direct {p1, p2}, Landroid/view/SyncRtSurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/systemui/animation/c;->g:Landroid/view/SyncRtSurfaceTransactionApplier;

    if-nez p5, :cond_1

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/animation/c;->h:Landroid/os/Handler;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/c;->i:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/c;->j:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/c;->k:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/c;->l:Landroid/graphics/RectF;

    new-instance p1, Lcom/android/systemui/animation/a;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Lcom/android/systemui/animation/a;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/android/systemui/animation/c;->p:Lcom/android/systemui/animation/a;

    return-void
.end method


# virtual methods
.method public final onAnimationCancelled()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/animation/c;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ActivityLaunchAnimator"

    const-string v1, "Remote animation was cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/animation/c;->n:Z

    iget-object v2, p0, Lcom/android/systemui/animation/c;->h:Landroid/os/Handler;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/systemui/animation/c;->p:Lcom/android/systemui/animation/a;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/animation/c;->o:Lcom/android/systemui/animation/r;

    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/android/systemui/animation/r;->a:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v1, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object v1, v2, Lcom/android/systemui/animation/r;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    sget-boolean v1, Lcom/android/systemui/animation/f;->c:Z

    if-eqz v1, :cond_3

    const-string v1, "Calling controller.onLaunchAnimationCancelled() [remote animation cancelled]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/animation/c;->a:Lcom/android/systemui/animation/d;

    invoke-interface {v1, v0}, Lcom/android/systemui/animation/d;->onLaunchAnimationCancelled(Ljava/lang/Boolean;)V

    iget-object p0, p0, Lcom/android/systemui/animation/c;->c:Lcom/android/systemui/animation/e;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/android/systemui/animation/e;->b()V

    :cond_4
    return-void
.end method

.method public final onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 40

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    iget-object v2, v7, Lcom/android/systemui/animation/c;->p:Lcom/android/systemui/animation/a;

    iget-object v3, v7, Lcom/android/systemui/animation/c;->h:Landroid/os/Handler;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-boolean v4, v7, Lcom/android/systemui/animation/c;->m:Z

    if-eqz v4, :cond_2

    if-eqz p5, :cond_1

    :try_start_0
    invoke-interface/range {p5 .. p5}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v4, v7, Lcom/android/systemui/animation/c;->n:Z

    if-eqz v4, :cond_3

    return-void

    :cond_3
    const/4 v8, 0x0

    const/4 v10, 0x1

    if-nez v0, :cond_4

    move-object v5, v8

    goto :goto_3

    :cond_4
    move-object v4, v8

    const/4 v5, 0x0

    :goto_1
    array-length v6, v0

    if-ge v5, v6, :cond_5

    move v6, v10

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_8

    add-int/lit8 v6, v5, 0x1

    :try_start_1
    aget-object v5, v0, v5
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    iget v11, v5, Landroid/view/RemoteAnimationTarget;->mode:I

    if-nez v11, :cond_7

    iget-object v11, v5, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v11, :cond_6

    iget-boolean v11, v5, Landroid/view/RemoteAnimationTarget;->hasAnimatingParent:Z

    if-nez v11, :cond_6

    goto :goto_3

    :cond_6
    if-nez v4, :cond_7

    move-object v4, v5

    :cond_7
    move v5, v6

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object v5, v4

    :goto_3
    iget-object v4, v7, Lcom/android/systemui/animation/c;->a:Lcom/android/systemui/animation/d;

    if-nez v5, :cond_c

    const-string v0, "Aborting the animation as no window is opening"

    const-string v1, "ActivityLaunchAnimator"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_9

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_9
    if-eqz p5, :cond_a

    :try_start_2
    invoke-interface/range {p5 .. p5}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_a
    :goto_4
    sget-boolean v0, Lcom/android/systemui/animation/f;->c:Z

    if-eqz v0, :cond_b

    const-string v0, "Calling controller.onLaunchAnimationCancelled() [no window opening]"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-interface {v4, v8}, Lcom/android/systemui/animation/d;->onLaunchAnimationCancelled(Ljava/lang/Boolean;)V

    iget-object v0, v7, Lcom/android/systemui/animation/c;->c:Lcom/android/systemui/animation/e;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Lcom/android/systemui/animation/e;->b()V

    goto/16 :goto_c

    :cond_c
    if-eqz v1, :cond_f

    array-length v0, v1

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_f

    aget-object v3, v1, v2

    iget v6, v3, Landroid/view/RemoteAnimationTarget;->windowType:I

    const/16 v11, 0x7e3

    if-ne v6, v11, :cond_d

    move v6, v10

    goto :goto_6

    :cond_d
    const/4 v6, 0x0

    :goto_6
    if-eqz v6, :cond_e

    move-object v6, v3

    goto :goto_7

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_f
    move-object v6, v8

    :goto_7
    iget-object v0, v5, Landroid/view/RemoteAnimationTarget;->screenSpaceBounds:Landroid/graphics/Rect;

    new-instance v3, Lcom/android/systemui/animation/n;

    iget v12, v0, Landroid/graphics/Rect;->top:I

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    iget v14, v0, Landroid/graphics/Rect;->left:I

    iget v15, v0, Landroid/graphics/Rect;->right:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x30

    move-object v11, v3

    invoke-direct/range {v11 .. v18}, Lcom/android/systemui/animation/n;-><init>(IIIIFFI)V

    iget-object v0, v5, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_10

    iget-object v0, v7, Lcom/android/systemui/animation/c;->b:Lcom/android/launcher3/J0;

    invoke-virtual {v0}, Lcom/android/launcher3/J0;->a()I

    move-result v0

    goto :goto_8

    :cond_10
    iget v0, v5, Landroid/view/RemoteAnimationTarget;->backgroundColor:I

    :goto_8
    invoke-interface {v4}, Lcom/android/systemui/animation/l;->getLaunchContainer()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v13, v7, Lcom/android/systemui/animation/c;->d:Lcom/android/systemui/animation/s;

    invoke-virtual {v13, v1, v3}, Lcom/android/systemui/animation/s;->a(Landroid/view/View;Lcom/android/systemui/animation/n;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v7, Lcom/android/systemui/animation/c;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v1

    goto :goto_9

    :cond_11
    const/4 v1, 0x0

    :goto_9
    iput v1, v3, Lcom/android/systemui/animation/n;->e:F

    iput v1, v3, Lcom/android/systemui/animation/n;->f:F

    iget-object v2, v7, Lcom/android/systemui/animation/c;->a:Lcom/android/systemui/animation/d;

    new-instance v34, Lcom/android/systemui/animation/b;

    move-object/from16 v1, v34

    move-object v11, v3

    move-object/from16 v3, p0

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/animation/b;-><init>(Lcom/android/systemui/animation/d;Lcom/android/systemui/animation/c;Landroid/view/IRemoteAnimationFinishedCallback;Landroid/view/RemoteAnimationTarget;Landroid/view/RemoteAnimationTarget;)V

    invoke-virtual/range {v34 .. v34}, Lcom/android/systemui/animation/b;->isBelowAnimatingWindow()Z

    move-result v1

    xor-int/lit8 v35, v1, 0x1

    invoke-virtual/range {v34 .. v34}, Lcom/android/systemui/animation/b;->isBelowAnimatingWindow()Z

    move-result v1

    xor-int/lit8 v36, v1, 0x1

    invoke-virtual/range {v34 .. v34}, Lcom/android/systemui/animation/b;->createAnimatorState()Lcom/android/systemui/animation/n;

    move-result-object v1

    iget v2, v1, Lcom/android/systemui/animation/n;->a:I

    iget v3, v1, Lcom/android/systemui/animation/n;->b:I

    iget v4, v1, Lcom/android/systemui/animation/n;->c:I

    iget v5, v1, Lcom/android/systemui/animation/n;->d:I

    add-int v6, v4, v5

    int-to-float v6, v6

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v6, v12

    sub-int v4, v5, v4

    iget v5, v1, Lcom/android/systemui/animation/n;->e:F

    iget v15, v1, Lcom/android/systemui/animation/n;->f:F

    new-instance v14, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iget v8, v11, Lcom/android/systemui/animation/n;->a:I

    iput v8, v14, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v8, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iget v10, v11, Lcom/android/systemui/animation/n;->b:I

    iput v10, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v10, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iget v9, v11, Lcom/android/systemui/animation/n;->c:I

    iput v9, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v9, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iget v12, v11, Lcom/android/systemui/animation/n;->d:I

    iput v12, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v12, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    move-object/from16 p4, v14

    iget v14, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move/from16 v17, v15

    iget v15, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v14, v15

    int-to-float v14, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    iput v14, v12, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    new-instance v15, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iget v14, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move-object/from16 p2, v12

    iget v12, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sub-int/2addr v14, v12

    iput v14, v15, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v14, v11, Lcom/android/systemui/animation/n;->e:F

    iget v12, v11, Lcom/android/systemui/animation/n;->f:F

    invoke-virtual/range {v34 .. v34}, Lcom/android/systemui/animation/b;->getLaunchContainer()Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v13, v7, v11}, Lcom/android/systemui/animation/s;->a(Landroid/view/View;Lcom/android/systemui/animation/n;)Z

    move-result v18

    move-object/from16 p5, v9

    new-instance v9, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    move-object/from16 v21, v11

    iget-object v11, v13, Lcom/android/systemui/animation/s;->a:Lcom/android/systemui/animation/o;

    move/from16 v19, v12

    iget-wide v11, v11, Lcom/android/systemui/animation/o;->a:J

    invoke-virtual {v0, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v11, Ly0/e;->m:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v11}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual/range {v34 .. v34}, Lcom/android/systemui/animation/b;->getOpeningWindowSyncView()Landroid/view/View;

    move-result-object v33

    if-eqz v33, :cond_12

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v11

    move-object/from16 v31, v11

    goto :goto_a

    :cond_12
    const/16 v31, 0x0

    :goto_a
    if-eqz v33, :cond_13

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v11

    invoke-virtual/range {v34 .. v34}, Lcom/android/systemui/animation/b;->getLaunchContainer()Landroid/view/ViewGroup;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_13

    const/16 v27, 0x1

    goto :goto_b

    :cond_13
    const/16 v27, 0x0

    :goto_b
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v11

    move-object/from16 v29, v11

    new-instance v12, Lkotlin/jvm/internal/Ref$BooleanRef;

    move-object/from16 v22, p2

    move-object/from16 p1, v12

    move/from16 v26, v19

    invoke-direct/range {p1 .. p1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v16, Lkotlin/jvm/internal/Ref$BooleanRef;

    move-object/from16 v28, v16

    invoke-direct/range {v16 .. v16}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    move-object/from16 p2, v12

    new-instance v12, Lcom/android/systemui/animation/p;

    move-object/from16 v23, p4

    move/from16 v24, v14

    move-object v14, v12

    move-object/from16 v30, v15

    move/from16 v25, v17

    move-object/from16 v15, v34

    move/from16 v16, v18

    move-object/from16 v17, v11

    move-object/from16 v18, v9

    move/from16 v19, v27

    move-object/from16 v20, v31

    invoke-direct/range {v14 .. v20}, Lcom/android/systemui/animation/p;-><init>(Lcom/android/systemui/animation/b;ZLandroid/view/ViewGroupOverlay;Landroid/graphics/drawable/GradientDrawable;ZLandroid/view/ViewOverlay;)V

    invoke-virtual {v0, v12}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v12, Lcom/android/systemui/animation/q;

    move-object/from16 v37, v21

    move-object v11, v12

    move v14, v6

    move-object/from16 v15, v22

    move/from16 v16, v4

    move-object/from16 v17, v30

    move-object/from16 v18, v1

    move/from16 v19, v2

    move-object/from16 v20, v23

    move/from16 v21, v3

    move-object/from16 v22, v8

    move/from16 v23, v5

    move-object/from16 v30, v9

    move-object/from16 v32, v7

    move-object/from16 v38, v10

    move-object/from16 v39, p5

    move-object v1, v12

    move-object/from16 v12, p2

    invoke-direct/range {v11 .. v39}, Lcom/android/systemui/animation/q;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/systemui/animation/s;FLkotlin/jvm/internal/Ref$FloatRef;ILkotlin/jvm/internal/Ref$IntRef;Lcom/android/systemui/animation/n;ILkotlin/jvm/internal/Ref$IntRef;ILkotlin/jvm/internal/Ref$IntRef;FFFFZLkotlin/jvm/internal/Ref$BooleanRef;Landroid/view/ViewGroupOverlay;Landroid/graphics/drawable/GradientDrawable;Landroid/view/ViewOverlay;Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/systemui/animation/b;ZZLcom/android/systemui/animation/n;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    new-instance v1, Lcom/android/systemui/animation/r;

    move-object/from16 v2, p1

    invoke-direct {v1, v2, v0}, Lcom/android/systemui/animation/r;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/animation/ValueAnimator;)V

    move-object/from16 v2, p0

    iput-object v1, v2, Lcom/android/systemui/animation/c;->o:Lcom/android/systemui/animation/r;

    :cond_14
    :goto_c
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
