.class public final Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mBubbleAnimator:Lcom/android/wm/shell/animation/l;

.field private final mBubbleCapturedScale:F

.field private final mBubbleFocusedScale:F

.field private final mDefaultConfig:Lcom/android/wm/shell/animation/g;

.field private mDismissAnimator:Lcom/android/wm/shell/animation/l;

.field private final mDismissCapturedScale:F

.field private mDismissView:Lcom/android/wm/shell/common/bubbles/h;

.field private final mTranslationConfig:Lcom/android/wm/shell/animation/g;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/wm/shell/animation/g;

    const/high16 v1, 0x43480000    # 200.0f

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/animation/g;-><init>(FF)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;->mDefaultConfig:Lcom/android/wm/shell/animation/g;

    new-instance v1, Lcom/android/wm/shell/animation/g;

    const v3, 0x44bb8000    # 1500.0f

    invoke-direct {v1, v3, v2}, Lcom/android/wm/shell/animation/g;-><init>(FF)V

    iput-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;->mTranslationConfig:Lcom/android/wm/shell/animation/g;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;->mView:Landroid/view/View;

    sget-object v1, Lcom/android/wm/shell/animation/l;->m:Lm3/l;

    invoke-static {p1}, Lcom/android/wm/shell/animation/c;->a(Ljava/lang/Object;)Lcom/android/wm/shell/animation/l;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;->mBubbleAnimator:Lcom/android/wm/shell/animation/l;

    iput-object v0, v1, Lcom/android/wm/shell/animation/l;->i:Lcom/android/wm/shell/animation/g;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f0700bb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    iput v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;->mDismissCapturedScale:F

    instance-of p1, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    if-eqz p1, :cond_0

    const p1, 0x3f8ccccd    # 1.1f

    iput p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;->mBubbleFocusedScale:F

    iput v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;->mBubbleCapturedScale:F

    goto :goto_0

    :cond_0
    const p1, 0x3f99999a    # 1.2f

    iput p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;->mBubbleFocusedScale:F

    const p1, 0x3f666666    # 0.9f

    iput p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;->mBubbleCapturedScale:F

    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;Landroid/graphics/PointF;Ljava/lang/Runnable;ZZ)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p3, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;->resetAnimatedViews(Landroid/graphics/PointF;)V

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;Landroid/graphics/PointF;Ljava/lang/Runnable;ZZ)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p3, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;->resetAnimatedViews(Landroid/graphics/PointF;)V

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private resetAnimatedViews(Landroid/graphics/PointF;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;->mView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget v2, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;->mDismissView:Lcom/android/wm/shell/common/bubbles/h;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/wm/shell/common/bubbles/h;->d:Lcom/android/wm/shell/common/bubbles/e;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;->mDismissView:Lcom/android/wm/shell/common/bubbles/h;

    iget-object p0, p0, Lcom/android/wm/shell/common/bubbles/h;->d:Lcom/android/wm/shell/common/bubbles/e;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final animateDismiss(Landroid/graphics/PointF;Lcom/android/launcher3/taskbar/bubbles/c;)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;->mDismissView:Lcom/android/wm/shell/common/bubbles/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    add-float/2addr v2, v0

    sget-object v0, Landroidx/dynamicanimation/animation/m;->n:Landroidx/dynamicanimation/animation/h;

    iget-object v3, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;->mBubbleAnimator:Lcom/android/wm/shell/animation/l;

    invoke-virtual {v3, v0, v2}, Lcom/android/wm/shell/animation/l;->f(Landroidx/dynamicanimation/animation/h;F)V

    sget-object v0, Landroidx/dynamicanimation/animation/m;->p:Landroidx/dynamicanimation/animation/h;

    invoke-virtual {v3, v0, v1}, Lcom/android/wm/shell/animation/l;->f(Landroidx/dynamicanimation/animation/h;F)V

    sget-object v0, Landroidx/dynamicanimation/animation/m;->q:Landroidx/dynamicanimation/animation/h;

    invoke-virtual {v3, v0, v1}, Lcom/android/wm/shell/animation/l;->f(Landroidx/dynamicanimation/animation/h;F)V

    sget-object v0, Landroidx/dynamicanimation/animation/m;->u:Landroidx/dynamicanimation/animation/h;

    invoke-virtual {v3, v0, v1}, Lcom/android/wm/shell/animation/l;->f(Landroidx/dynamicanimation/animation/h;F)V

    new-instance v0, LZ0/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, LZ0/l;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;Landroid/graphics/PointF;Lcom/android/launcher3/taskbar/bubbles/c;I)V

    iget-object p0, v3, Lcom/android/wm/shell/animation/l;->g:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/android/wm/shell/animation/l;->h()V

    return-void
.end method

.method public final animateDismissCaptured()V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;->mBubbleAnimator:Lcom/android/wm/shell/animation/l;

    invoke-virtual {v0}, Lcom/android/wm/shell/animation/l;->a()V

    sget-object v1, Landroidx/dynamicanimation/animation/m;->p:Landroidx/dynamicanimation/animation/h;

    iget v2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;->mBubbleCapturedScale:F

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/animation/l;->f(Landroidx/dynamicanimation/animation/h;F)V

    sget-object v3, Landroidx/dynamicanimation/animation/m;->q:Landroidx/dynamicanimation/animation/h;

    invoke-virtual {v0, v3, v2}, Lcom/android/wm/shell/animation/l;->f(Landroidx/dynamicanimation/animation/h;F)V

    sget-object v2, Landroidx/dynamicanimation/animation/m;->u:Landroidx/dynamicanimation/animation/h;

    iget v4, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;->mDismissCapturedScale:F

    invoke-virtual {v0, v2, v4}, Lcom/android/wm/shell/animation/l;->f(Landroidx/dynamicanimation/animation/h;F)V

    invoke-virtual {v0}, Lcom/android/wm/shell/animation/l;->h()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;->mDismissAnimator:Lcom/android/wm/shell/animation/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/wm/shell/animation/l;->a()V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;->mDismissAnimator:Lcom/android/wm/shell/animation/l;

    invoke-virtual {p0, v1, v4}, Lcom/android/wm/shell/animation/l;->f(Landroidx/dynamicanimation/animation/h;F)V

    invoke-virtual {p0, v3, v4}, Lcom/android/wm/shell/animation/l;->f(Landroidx/dynamicanimation/animation/h;F)V

    invoke-virtual {p0}, Lcom/android/wm/shell/animation/l;->h()V

    :cond_0
    return-void
.end method

.method public final animateDismissReleased()V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;->mBubbleAnimator:Lcom/android/wm/shell/animation/l;

    invoke-virtual {v0}, Lcom/android/wm/shell/animation/l;->a()V

    sget-object v1, Landroidx/dynamicanimation/animation/m;->p:Landroidx/dynamicanimation/animation/h;

    iget v2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;->mBubbleFocusedScale:F

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/animation/l;->f(Landroidx/dynamicanimation/animation/h;F)V

    sget-object v3, Landroidx/dynamicanimation/animation/m;->q:Landroidx/dynamicanimation/animation/h;

    invoke-virtual {v0, v3, v2}, Lcom/android/wm/shell/animation/l;->f(Landroidx/dynamicanimation/animation/h;F)V

    sget-object v2, Landroidx/dynamicanimation/animation/m;->u:Landroidx/dynamicanimation/animation/h;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v4}, Lcom/android/wm/shell/animation/l;->f(Landroidx/dynamicanimation/animation/h;F)V

    invoke-virtual {v0}, Lcom/android/wm/shell/animation/l;->h()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;->mDismissAnimator:Lcom/android/wm/shell/animation/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/wm/shell/animation/l;->a()V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;->mDismissAnimator:Lcom/android/wm/shell/animation/l;

    invoke-virtual {p0, v1, v4}, Lcom/android/wm/shell/animation/l;->f(Landroidx/dynamicanimation/animation/h;F)V

    invoke-virtual {p0, v3, v4}, Lcom/android/wm/shell/animation/l;->f(Landroidx/dynamicanimation/animation/h;F)V

    invoke-virtual {p0}, Lcom/android/wm/shell/animation/l;->h()V

    :cond_0
    return-void
.end method

.method public final animateFocused()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;->mBubbleAnimator:Lcom/android/wm/shell/animation/l;

    invoke-virtual {v0}, Lcom/android/wm/shell/animation/l;->a()V

    sget-object v1, Landroidx/dynamicanimation/animation/m;->p:Landroidx/dynamicanimation/animation/h;

    iget p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;->mBubbleFocusedScale:F

    invoke-virtual {v0, v1, p0}, Lcom/android/wm/shell/animation/l;->f(Landroidx/dynamicanimation/animation/h;F)V

    sget-object v1, Landroidx/dynamicanimation/animation/m;->q:Landroidx/dynamicanimation/animation/h;

    invoke-virtual {v0, v1, p0}, Lcom/android/wm/shell/animation/l;->f(Landroidx/dynamicanimation/animation/h;F)V

    invoke-virtual {v0}, Lcom/android/wm/shell/animation/l;->h()V

    return-void
.end method

.method public final animateToInitialState(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/android/launcher3/taskbar/bubbles/c;)V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;->mBubbleAnimator:Lcom/android/wm/shell/animation/l;

    invoke-virtual {v0}, Lcom/android/wm/shell/animation/l;->a()V

    sget-object v1, Landroidx/dynamicanimation/animation/m;->p:Landroidx/dynamicanimation/animation/h;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/animation/l;->f(Landroidx/dynamicanimation/animation/h;F)V

    sget-object v1, Landroidx/dynamicanimation/animation/m;->q:Landroidx/dynamicanimation/animation/h;

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/animation/l;->f(Landroidx/dynamicanimation/animation/h;F)V

    sget-object v1, Landroidx/dynamicanimation/animation/m;->m:Landroidx/dynamicanimation/animation/h;

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p2, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;->mTranslationConfig:Lcom/android/wm/shell/animation/g;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/wm/shell/animation/l;->g(Landroidx/dynamicanimation/animation/q;FFLcom/android/wm/shell/animation/g;)V

    sget-object v1, Landroidx/dynamicanimation/animation/m;->n:Landroidx/dynamicanimation/animation/h;

    iget v2, p1, Landroid/graphics/PointF;->y:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2, p2, v4}, Lcom/android/wm/shell/animation/l;->g(Landroidx/dynamicanimation/animation/q;FFLcom/android/wm/shell/animation/g;)V

    new-instance p2, LZ0/l;

    const/4 v1, 0x1

    invoke-direct {p2, p0, p1, p3, v1}, LZ0/l;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;Landroid/graphics/PointF;Lcom/android/launcher3/taskbar/bubbles/c;I)V

    iget-object p0, v0, Lcom/android/wm/shell/animation/l;->g:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/android/wm/shell/animation/l;->h()V

    return-void
.end method

.method public final setDismissView(Lcom/android/wm/shell/common/bubbles/h;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;->mDismissView:Lcom/android/wm/shell/common/bubbles/h;

    iget-object p1, p1, Lcom/android/wm/shell/common/bubbles/h;->d:Lcom/android/wm/shell/common/bubbles/e;

    sget-object v0, Lcom/android/wm/shell/animation/l;->m:Lm3/l;

    invoke-static {p1}, Lcom/android/wm/shell/animation/c;->a(Ljava/lang/Object;)Lcom/android/wm/shell/animation/l;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;->mDismissAnimator:Lcom/android/wm/shell/animation/l;

    const-string v0, "defaultSpring"

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;->mDefaultConfig:Lcom/android/wm/shell/animation/g;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p0, p1, Lcom/android/wm/shell/animation/l;->i:Lcom/android/wm/shell/animation/g;

    return-void
.end method
