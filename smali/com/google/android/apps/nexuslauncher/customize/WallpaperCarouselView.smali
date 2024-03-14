.class public Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field public static final synthetic n:I


# instance fields
.field public final d:Lcom/android/launcher3/util/RunnableList;

.field public final e:I

.field public final f:F

.field public final g:LO1/n;

.field public final h:I

.field public i:LO1/w;

.field public j:LO1/w;

.field public k:LO1/w;

.field public l:LO1/x;

.field public m:Ljava/util/function/Consumer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {p2}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;->d:Lcom/android/launcher3/util/RunnableList;

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0700ce

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;->e:I

    .line 6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0700cd

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;->f:F

    .line 7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070559

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;->h:I

    .line 8
    new-instance p2, LO1/n;

    invoke-direct {p2, p1}, LO1/n;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;->g:LO1/n;

    .line 9
    new-instance p1, Landroid/animation/LayoutTransition;

    invoke-direct {p1}, Landroid/animation/LayoutTransition;-><init>()V

    const/4 p2, 0x4

    .line 10
    invoke-virtual {p1, p2}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 11
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/high16 p3, 0x10e0000

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;->j:LO1/w;

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;->k:LO1/w;

    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;->l:LO1/x;

    new-instance v5, LO1/q;

    const/4 v3, 0x2

    invoke-direct {v5, v3, v0}, LO1/q;-><init>(ILjava/lang/Object;)V

    iget-object v0, v2, LO1/x;->a:LO1/E;

    iget-boolean v2, v0, LO1/E;->d:Z

    if-eqz v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, LO1/E;->d:Z

    iget-object v2, v0, LO1/E;->f:Landroid/animation/Animator;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    :cond_1
    iget-object v2, v0, LO1/E;->g:Lcom/android/launcher3/icons/cache/HandlerRunnable;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/launcher3/icons/cache/HandlerRunnable;->cancel()V

    :cond_2
    iget-object v2, v0, LO1/E;->a:LO1/l;

    iget-object v3, v2, LO1/l;->n:Lcom/android/launcher3/Launcher;

    if-eqz v3, :cond_4

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iget-object v6, v0, LO1/E;->b:LO1/j;

    invoke-virtual {v6, v1, v4}, Lcom/android/launcher3/views/BaseDragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    invoke-direct {v1, v7, v4}, Landroid/graphics/Point;-><init>(II)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v6, v4}, Landroid/widget/FrameLayout;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v6

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getDisplayId()I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/view/WindowManagerGlobal;->mirrorWallpaperSurface(I)Landroid/view/SurfaceControl;

    move-result-object v8

    if-nez v8, :cond_3

    invoke-virtual {v5}, LO1/q;->run()V

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-static {v2}, Landroid/view/SurfaceControl;->mirrorSurface(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl;

    move-result-object v7

    new-instance v2, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Builder;-><init>()V

    const-string v3, "NexusLauncher Screenshot"

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v6

    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-virtual {v2, v8, v6}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v8, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v2, v7, v6}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v7, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    new-instance v15, Lcom/android/launcher3/icons/cache/HandlerRunnable;

    sget-object v14, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v14}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v10

    new-instance v11, LO1/y;

    invoke-direct {v11, v2, v6, v4}, LO1/y;-><init>(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)V

    sget-object v12, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v13, LO1/z;

    invoke-direct {v13, v0, v1, v5}, LO1/z;-><init>(LO1/E;Landroid/graphics/Point;LO1/q;)V

    new-instance v1, LO1/A;

    move-object v3, v1

    move-object v4, v0

    invoke-direct/range {v3 .. v8}, LO1/A;-><init>(LO1/E;LO1/q;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V

    move-object v9, v15

    move-object v2, v14

    move-object v14, v1

    invoke-direct/range {v9 .. v14}, Lcom/android/launcher3/icons/cache/HandlerRunnable;-><init>(Landroid/os/Handler;Ljava/util/function/Supplier;Lcom/android/launcher3/util/LooperExecutor;Ljava/util/function/Consumer;Ljava/lang/Runnable;)V

    iput-object v15, v0, LO1/E;->g:Lcom/android/launcher3/icons/cache/HandlerRunnable;

    invoke-virtual {v2, v15}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 8

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;->h:I

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_5

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, LO1/w;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v7, p0, Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;->j:LO1/w;

    if-ne v7, v5, :cond_3

    if-eqz v2, :cond_1

    move v5, v0

    goto :goto_2

    :cond_1
    move v5, v3

    :goto_2
    iput v5, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eqz v2, :cond_2

    const/4 v5, 0x0

    goto :goto_3

    :cond_2
    const/high16 v5, 0x40000000    # 2.0f

    :goto_3
    iput v5, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_4

    :cond_3
    iput v3, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :goto_4
    if-nez v4, :cond_4

    move v5, v3

    goto :goto_5

    :cond_4
    iget v5, p0, Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;->e:I

    :goto_5
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;->d:Lcom/android/launcher3/util/RunnableList;

    invoke-virtual {p0}, Lcom/android/launcher3/util/RunnableList;->executeAllAndDestroy()V

    return-void
.end method
