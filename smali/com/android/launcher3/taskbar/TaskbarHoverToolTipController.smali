.class public final Lcom/android/launcher3/taskbar/TaskbarHoverToolTipController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# static fields
.field protected static final HOVER_TOOL_TIP_REVEAL_START_DELAY:I = 0x190


# instance fields
.field private final mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private final mHideHoverToolTipRunnable:Lcom/android/launcher3/taskbar/g0;

.field private final mHoverToolTipHandler:Landroid/os/Handler;

.field private final mHoverToolTipView:Lcom/android/launcher3/views/ArrowTipView;

.field private final mHoverView:Landroid/view/View;

.field private final mRevealHoverToolTipRunnable:Lcom/android/launcher3/taskbar/g0;

.field private final mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

.field private final mToolTipText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/TaskbarView;Landroid/view/View;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarHoverToolTipController;->mHoverToolTipHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/launcher3/taskbar/g0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/taskbar/g0;-><init>(Lcom/android/launcher3/taskbar/TaskbarHoverToolTipController;I)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarHoverToolTipController;->mRevealHoverToolTipRunnable:Lcom/android/launcher3/taskbar/g0;

    new-instance v0, Lcom/android/launcher3/taskbar/g0;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcom/android/launcher3/taskbar/g0;-><init>(Lcom/android/launcher3/taskbar/TaskbarHoverToolTipController;I)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarHoverToolTipController;->mHideHoverToolTipRunnable:Lcom/android/launcher3/taskbar/g0;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarHoverToolTipController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarHoverToolTipController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    iput-object p3, p0, Lcom/android/launcher3/taskbar/TaskbarHoverToolTipController;->mHoverView:Landroid/view/View;

    instance-of p2, p3, Lcom/android/launcher3/BubbleTextView;

    if-eqz p2, :cond_0

    check-cast p3, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarHoverToolTipController;->mToolTipText:Ljava/lang/String;

    goto :goto_0

    :cond_0
    instance-of p2, p3, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz p2, :cond_1

    check-cast p3, Lcom/android/launcher3/folder/FolderIcon;

    iget-object p2, p3, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object p2, p2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarHoverToolTipController;->mToolTipText:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarHoverToolTipController;->mToolTipText:Ljava/lang/String;

    :goto_0
    new-instance p2, Landroid/view/ContextThemeWrapper;

    const p3, 0x7f14001b

    invoke-direct {p2, p1, p3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance p1, Lcom/android/launcher3/views/ArrowTipView;

    invoke-direct {p1, p2, v1, v1}, Lcom/android/launcher3/views/ArrowTipView;-><init>(Landroid/content/Context;ZI)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarHoverToolTipController;->mHoverToolTipView:Lcom/android/launcher3/views/ArrowTipView;

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    sget-object p3, Lcom/android/launcher3/views/ArrowTipView;->TEXT_ALPHA:Landroid/util/IntProperty;

    filled-new-array {v1}, [I

    move-result-object v0

    invoke-static {p1, p3, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v3, Ly0/e;->m:Landroid/view/animation/Interpolator;

    const/4 v4, 0x0

    const v5, 0x3ea8f5c3    # 0.33f

    invoke-static {v4, v5, v3}, Ly0/e;->b(FFLandroid/view/animation/Interpolator;)Ly0/b;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v2, [F

    aput v4, v7, v1

    invoke-static {p1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const v7, 0x3f28f5c3    # 0.66f

    invoke-static {v5, v7, v3}, Ly0/e;->b(FFLandroid/view/animation/Interpolator;)Ly0/b;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v8, v2, [F

    aput v4, v8, v1

    invoke-static {p1, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    sget-object v8, Ly0/e;->j:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    filled-new-array {v0, v6, v7}, [Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v6, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const-wide/16 v6, 0x96

    invoke-virtual {p2, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/views/ArrowTipView;->setCustomCloseAnimation(Landroid/animation/AnimatorSet;)V

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    const/16 v0, 0xff

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {p1, p3, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p3

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v5, v0, v3}, Ly0/e;->b(FFLandroid/view/animation/Interpolator;)Ly0/b;

    move-result-object v6

    invoke-virtual {p3, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v2, [F

    aput v0, v7, v1

    invoke-static {p1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    sget-object v7, Ly0/e;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    aput v0, v2, v1

    invoke-static {p1, v7, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const v1, 0x3dcccccd    # 0.1f

    invoke-static {v1, v5, v3}, Ly0/e;->b(FFLandroid/view/animation/Interpolator;)Ly0/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    filled-new-array {v6, p3, v0}, [Landroid/animation/Animator;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0x190

    invoke-virtual {p2, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/views/ArrowTipView;->setCustomOpenAnimation(Landroid/animation/AnimatorSet;)V

    new-instance p2, Lcom/android/launcher3/taskbar/h0;

    invoke-direct {p2, p0}, Lcom/android/launcher3/taskbar/h0;-><init>(Lcom/android/launcher3/taskbar/TaskbarHoverToolTipController;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setScaleY(F)V

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method public static a(Lcom/android/launcher3/taskbar/TaskbarHoverToolTipController;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarHoverToolTipController;->mHoverView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarHoverToolTipController;->mToolTipText:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->getIconVisible()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarHoverToolTipController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setTaskbarWindowFullscreen(Z)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarHoverToolTipController;->mHoverView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getViewBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarHoverToolTipController;->mHoverToolTipView:Lcom/android/launcher3/views/ArrowTipView;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarHoverToolTipController;->mToolTipText:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarHoverToolTipController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result p0

    invoke-virtual {v1, v2, v0, p0}, Lcom/android/launcher3/views/ArrowTipView;->showAtLocation(Ljava/lang/String;II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static b(Lcom/android/launcher3/taskbar/TaskbarHoverToolTipController;)V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarHoverToolTipController;->mHoverToolTipView:Lcom/android/launcher3/views/ArrowTipView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/taskbar/TaskbarHoverToolTipController;II)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarHoverToolTipController;->mHoverToolTipView:Lcom/android/launcher3/views/ArrowTipView;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setPivotY(F)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarHoverToolTipController;->mHoverToolTipView:Lcom/android/launcher3/views/ArrowTipView;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarHoverToolTipController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result p0

    sub-int/2addr p2, p1

    sub-int/2addr p0, p2

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setY(F)V

    return-void
.end method


# virtual methods
.method public final onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarHoverToolTipController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const v0, 0x3fffdf

    invoke-static {p1, v0}, Lcom/android/launcher3/AbstractFloatingView;->hasOpenView(Lcom/android/launcher3/views/ActivityContext;I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarHoverToolTipController;->mHoverToolTipHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0xa

    const/16 v2, 0x40

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarHoverToolTipController;->mHoverToolTipHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarHoverToolTipController;->mRevealHoverToolTipRunnable:Lcom/android/launcher3/taskbar/g0;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarHoverToolTipController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const/4 p2, 0x2

    invoke-static {p1, v4, p2}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->getRecommendedTimeoutMillis(Landroid/content/Context;II)I

    move-result p1

    iget-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarHoverToolTipController;->mHoverToolTipHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarHoverToolTipController;->mHideHoverToolTipRunnable:Lcom/android/launcher3/taskbar/g0;

    int-to-long v5, p1

    invoke-virtual {p2, v0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarHoverToolTipController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0, v2, v4}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setAutohideSuspendFlag(IZ)V

    return v3

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 p2, 0x9

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarHoverToolTipController;->mHoverToolTipHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarHoverToolTipController;->mRevealHoverToolTipRunnable:Lcom/android/launcher3/taskbar/g0;

    const-wide/16 v0, 0x190

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarHoverToolTipController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setAutohideSuspendFlag(IZ)V

    return v3

    :cond_2
    return v4
.end method
