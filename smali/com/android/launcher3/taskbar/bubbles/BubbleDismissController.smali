.class public final Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private mAnimator:Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;

.field private mBubbleBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

.field private mDismissView:Lcom/android/wm/shell/common/bubbles/h;

.field private final mDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

.field private mMagneticTarget:Lcom/android/wm/shell/common/magnetictarget/c;

.field private mMagnetizedObject:Lcom/android/wm/shell/common/magnetictarget/d;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/TaskbarDragLayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;->mDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    return-void
.end method

.method public static bridge synthetic a(Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;)Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;->mAnimator:Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;

    return-object p0
.end method

.method public static b(Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;->mMagnetizedObject:Lcom/android/wm/shell/common/magnetictarget/d;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;->mBubbleBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/wm/shell/common/magnetictarget/d;->getUnderlyingObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;->mMagnetizedObject:Lcom/android/wm/shell/common/magnetictarget/d;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/magnetictarget/d;->getUnderlyingObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->getBubble()Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;->mBubbleBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->getBubble()Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->onDismissBubbleWhileDragging(Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;->mMagnetizedObject:Lcom/android/wm/shell/common/magnetictarget/d;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/magnetictarget/d;->getUnderlyingObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;->mBubbleBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->onDismissAllBubblesWhileDragging()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;->mMagnetizedObject:Lcom/android/wm/shell/common/magnetictarget/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/magnetictarget/d;->maybeConsumeMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hideDismissView()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;->mDismissView:Lcom/android/wm/shell/common/bubbles/h;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/common/bubbles/h;->a()V

    return-void
.end method

.method public final init(Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;)V
    .locals 0

    iget-object p1, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;->bubbleBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;->mBubbleBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    return-void
.end method

.method public final setupDismissView(Landroid/view/View;Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;)V
    .locals 10

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;->mDismissView:Lcom/android/wm/shell/common/bubbles/h;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v0, Lcom/android/wm/shell/common/bubbles/h;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/wm/shell/common/bubbles/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;->mDismissView:Lcom/android/wm/shell/common/bubbles/h;

    new-instance v2, Lcom/android/wm/shell/common/bubbles/f;

    invoke-direct {v2}, Lcom/android/wm/shell/common/bubbles/f;-><init>()V

    iput-object v2, v0, Lcom/android/wm/shell/common/bubbles/h;->f:Lcom/android/wm/shell/common/bubbles/f;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700b8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/16 v5, 0x50

    const/4 v6, -0x1

    invoke-direct {v2, v6, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lcom/android/wm/shell/common/bubbles/h;->f:Lcom/android/wm/shell/common/bubbles/f;

    if-nez v2, :cond_1

    sget-object v3, Lcom/android/wm/shell/common/bubbles/h;->m:Ljava/lang/String;

    const-string v5, "The view isn\'t ready. Should be called after `setup`"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v3, 0x0

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v5, v0, Lcom/android/wm/shell/common/bubbles/h;->j:Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v5

    const-string v7, "wm.getCurrentWindowMetrics().getWindowInsets()"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget v2, v2, Lcom/android/wm/shell/common/bubbles/f;->c:I

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v2, v5

    invoke-virtual {v0, v3, v3, v3, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :goto_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v5, LB/c;->a:Ljava/lang/Object;

    const v5, 0x1060028

    invoke-virtual {v2, v5}, Landroid/content/Context;->getColor(I)I

    move-result v2

    const v5, 0x43328000    # 178.5f

    float-to-int v5, v5

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v7

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v8

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v5, v7, v8, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    sget-object v7, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-direct {v5, v7, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Landroid/graphics/drawable/GradientDrawable;->setDither(Z)V

    invoke-virtual {v5, v3}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    iput-object v5, v0, Lcom/android/wm/shell/common/bubbles/h;->k:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v0, Lcom/android/wm/shell/common/bubbles/h;->d:Lcom/android/wm/shell/common/bubbles/e;

    const v5, 0x7f080207

    iput v5, v2, Lcom/android/wm/shell/common/bubbles/e;->d:I

    const v7, 0x7f0700ba

    iput v7, v2, Lcom/android/wm/shell/common/bubbles/e;->e:I

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, v2, Lcom/android/wm/shell/common/bubbles/e;->f:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f080272

    invoke-virtual {v7, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v7, v2, Lcom/android/wm/shell/common/bubbles/e;->e:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v2, v2, Lcom/android/wm/shell/common/bubbles/e;->f:Landroid/widget/ImageView;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v8, 0x11

    invoke-direct {v7, v5, v5, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0700bb

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v7, v0, Lcom/android/wm/shell/common/bubbles/h;->d:Lcom/android/wm/shell/common/bubbles/e;

    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v9, 0x51

    invoke-direct {v8, v2, v2, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lcom/android/wm/shell/common/bubbles/h;->d:Lcom/android/wm/shell/common/bubbles/e;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;->mDismissView:Lcom/android/wm/shell/common/bubbles/h;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;->mDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    invoke-virtual {v4, v0, v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;->mDismissView:Lcom/android/wm/shell/common/bubbles/h;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700bd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setElevation(F)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;->mDismissView:Lcom/android/wm/shell/common/bubbles/h;

    iget-object v0, v0, Lcom/android/wm/shell/common/bubbles/h;->d:Lcom/android/wm/shell/common/bubbles/e;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    new-instance v3, Lcom/android/wm/shell/common/magnetictarget/c;

    invoke-direct {v3, v0, v2}, Lcom/android/wm/shell/common/magnetictarget/c;-><init>(Lcom/android/wm/shell/common/bubbles/e;I)V

    iput-object v3, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;->mMagneticTarget:Lcom/android/wm/shell/common/magnetictarget/c;

    :goto_1
    new-instance v0, Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController$1;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroidx/dynamicanimation/animation/m;->m:Landroidx/dynamicanimation/animation/h;

    sget-object v3, Landroidx/dynamicanimation/animation/m;->n:Landroidx/dynamicanimation/animation/h;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController$1;-><init>(Landroid/content/Context;Landroid/view/View;Landroidx/dynamicanimation/animation/h;Landroidx/dynamicanimation/animation/h;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;->mMagnetizedObject:Lcom/android/wm/shell/common/magnetictarget/d;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/magnetictarget/d;->setHapticsEnabled()V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;->mMagnetizedObject:Lcom/android/wm/shell/common/magnetictarget/d;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/magnetictarget/d;->setFlingToTargetMinVelocity()V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;->mMagneticTarget:Lcom/android/wm/shell/common/magnetictarget/c;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;->mMagnetizedObject:Lcom/android/wm/shell/common/magnetictarget/d;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/magnetictarget/d;->addTarget(Lcom/android/wm/shell/common/magnetictarget/c;)V

    goto :goto_2

    :cond_3
    const-string p1, "BubbleDismissController"

    const-string v0, "Requires MagneticTarget to add target to MagnetizedObject!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;->mMagnetizedObject:Lcom/android/wm/shell/common/magnetictarget/d;

    new-instance v0, Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController$2;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p1, Lcom/android/wm/shell/common/magnetictarget/d;->magnetListener:Lcom/android/wm/shell/common/magnetictarget/a;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;->mDismissView:Lcom/android/wm/shell/common/bubbles/h;

    if-eqz p1, :cond_4

    invoke-virtual {p2, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;->setDismissView(Lcom/android/wm/shell/common/bubbles/h;)V

    iput-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;->mAnimator:Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;

    :cond_4
    return-void
.end method

.method public final showDismissView()V
    .locals 4

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDismissController;->mDismissView:Lcom/android/wm/shell/common/bubbles/h;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/common/bubbles/h;->e:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/common/bubbles/h;->k:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_2

    sget-object v1, Lcom/android/wm/shell/common/bubbles/h;->m:Ljava/lang/String;

    const-string v2, "The view isn\'t ready. Should be called after `setup`"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/wm/shell/common/bubbles/h;->e:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/wm/shell/common/bubbles/h;->l:Lcom/android/wm/shell/common/bubbles/g;

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getAlpha()I

    move-result v2

    const/16 v3, 0xff

    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/wm/shell/common/bubbles/h;->i:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v0, p0, Lcom/android/wm/shell/common/bubbles/h;->g:Lcom/android/wm/shell/animation/l;

    invoke-virtual {v0}, Lcom/android/wm/shell/animation/l;->a()V

    iget-object v0, p0, Lcom/android/wm/shell/common/bubbles/h;->g:Lcom/android/wm/shell/animation/l;

    sget-object v1, Landroidx/dynamicanimation/animation/m;->n:Landroidx/dynamicanimation/animation/h;

    const-string v2, "TRANSLATION_Y"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/common/bubbles/h;->h:Lcom/android/wm/shell/animation/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "config"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, p0}, Lcom/android/wm/shell/animation/l;->g(Landroidx/dynamicanimation/animation/q;FFLcom/android/wm/shell/animation/g;)V

    invoke-virtual {v0}, Lcom/android/wm/shell/animation/l;->h()V

    :goto_0
    return-void
.end method
