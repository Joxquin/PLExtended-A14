.class public final Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private final mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

.field private final mBubbleBarAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

.field private mBubbleBarClickListener:LZ0/h;

.field private mBubbleBarController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;

.field private final mBubbleBarScale:Lcom/android/launcher3/anim/AnimatedFloat;

.field private mBubbleBarSwipeUpTranslationY:F

.field private final mBubbleBarTranslationY:Lcom/android/launcher3/anim/AnimatedFloat;

.field private mBubbleClickListener:LZ0/h;

.field private mBubbleDragController:Lcom/android/launcher3/taskbar/bubbles/BubbleDragController;

.field private mBubbleStashController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;

.field private mHiddenForNoBubbles:Z

.field private mHiddenForSysui:Z

.field private final mIconSize:I

.field private final mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

.field private mTaskbarInsetsController:Lcom/android/launcher3/taskbar/TaskbarInsetsController;

.field private mTaskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v1, LZ0/j;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LZ0/j;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;I)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBubbleBarScale:Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v0, Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v1, LZ0/j;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, LZ0/j;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;I)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBubbleBarTranslationY:Lcom/android/launcher3/anim/AnimatedFloat;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    new-instance v0, Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v1, 0x4

    invoke-direct {v0, v2, p2, v1}, Lcom/android/launcher3/util/MultiValueAlpha;-><init>(ILandroid/view/View;I)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBubbleBarAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    invoke-virtual {v0}, Lcom/android/launcher3/util/MultiValueAlpha;->setUpdateVisibility()V

    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700c0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mIconSize:I

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->taskbarHeight:I

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method public static b(Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->getBubble()Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;

    move-result-object p1

    if-nez p1, :cond_0

    const-string v0, "BubbleBarViewController"

    const-string v1, "bubble click listener, bubble was null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBubbleBarController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->getSelectedBubbleKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->setExpanded(Z)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBubbleStashController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->stashBubbleBar()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBubbleBarController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->showAndSelectBubble(Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;)V

    :goto_0
    return-void
.end method

.method public static c(Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBubbleBarTranslationY:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v0, v0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    iget v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBubbleBarSwipeUpTranslationY:F

    add-float/2addr v0, v1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mTaskbarInsetsController:Lcom/android/launcher3/taskbar/TaskbarInsetsController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->onTaskbarOrBubblebarWindowHeightOrInsetsChanged()V

    return-void
.end method

.method public static e(Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBubbleBarScale:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v0, v0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    return-void
.end method


# virtual methods
.method public final addBubble(Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;)V
    .locals 4

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;->getView()Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mIconSize:I

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;->getView()Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBubbleClickListener:LZ0/h;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBubbleDragController:Lcom/android/launcher3/taskbar/bubbles/BubbleDragController;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;->getView()Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->getBubble()Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$1;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleDragController;Lcom/android/launcher3/taskbar/bubbles/BubbleView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :cond_1
    const-string p0, "BubbleBarViewController"

    const-string p1, "addBubble, bubble was null!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final getBubbleBarAlpha()Lcom/android/launcher3/util/MultiValueAlpha;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBubbleBarAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    return-object p0
.end method

.method public final getBubbleBarBounds()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->getBubbleBarBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public final getBubbleBarScale()Lcom/android/launcher3/anim/AnimatedFloat;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBubbleBarScale:Lcom/android/launcher3/anim/AnimatedFloat;

    return-object p0
.end method

.method public final getBubbleBarTranslationY()Lcom/android/launcher3/anim/AnimatedFloat;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBubbleBarTranslationY:Lcom/android/launcher3/anim/AnimatedFloat;

    return-object p0
.end method

.method public final getHorizontalMargin()I
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout$LayoutParams;->getMarginEnd()I

    move-result p0

    return p0
.end method

.method public final hasBubbles()Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBubbleBarController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->getSelectedBubbleKey()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final init(Lcom/android/launcher3/taskbar/TaskbarControllers;Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;)V
    .locals 2

    iget-object v0, p2, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;->bubbleStashController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBubbleStashController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;

    iget-object v0, p2, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;->bubbleBarController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBubbleBarController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;

    iget-object p2, p2, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;->bubbleDragController:Lcom/android/launcher3/taskbar/bubbles/BubbleDragController;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBubbleDragController:Lcom/android/launcher3/taskbar/bubbles/BubbleDragController;

    iget-object p2, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mTaskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarInsetsController:Lcom/android/launcher3/taskbar/TaskbarInsetsController;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mTaskbarInsetsController:Lcom/android/launcher3/taskbar/TaskbarInsetsController;

    new-instance p1, LZ0/g;

    invoke-direct {p1, p0}, LZ0/g;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;)V

    iget-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-interface {p2, p1}, Lcom/android/launcher3/views/ActivityContext;->addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p2

    iget p2, p2, Lcom/android/launcher3/DeviceProfile;->taskbarHeight:I

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBubbleBarScale:Lcom/android/launcher3/anim/AnimatedFloat;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Lcom/android/launcher3/anim/AnimatedFloat;->updateValue(F)V

    new-instance p2, LZ0/h;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, LZ0/h;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;I)V

    iput-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBubbleClickListener:LZ0/h;

    new-instance p2, LZ0/h;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, LZ0/h;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;I)V

    iput-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBubbleBarClickListener:LZ0/h;

    iget-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBubbleDragController:Lcom/android/launcher3/taskbar/bubbles/BubbleDragController;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    new-instance v1, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$2;

    invoke-direct {v1, p2, p1, v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$2;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleDragController;Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;Landroid/graphics/PointF;)V

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBubbleBarClickListener:LZ0/h;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, LZ0/i;

    invoke-direct {p2, p0}, LZ0/i;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public final isBubbleBarVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isEventOverAnyItem(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->isEventOverAnyItem(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final isExpanded()Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->isExpanded()Z

    move-result p0

    return p0
.end method

.method public final isHiddenForNoBubbles()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mHiddenForNoBubbles:Z

    return p0
.end method

.method public final onDismissAllBubblesWhileDragging()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {p0}, Lcom/android/quickstep/SystemUiProxy;->removeAllBubbles()V

    return-void
.end method

.method public final onDismissBubbleWhileDragging(Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/SystemUiProxy;->removeBubble(Ljava/lang/String;)V

    return-void
.end method

.method public final onDragEnd()V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->setDraggedBubble(Lcom/android/launcher3/taskbar/bubbles/BubbleView;)V

    return-void
.end method

.method public final onDragRelease(Lcom/android/launcher3/taskbar/bubbles/BubbleView;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->getBubble()Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->getBubble()Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;->getKey()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {p0, p1, v0}, Lcom/android/quickstep/SystemUiProxy;->onBubbleDrag(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onDragStart(Lcom/android/launcher3/taskbar/bubbles/BubbleView;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->getBubble()Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->getBubble()Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v2, v0, v1}, Lcom/android/quickstep/SystemUiProxy;->onBubbleDrag(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->setDraggedBubble(Lcom/android/launcher3/taskbar/bubbles/BubbleView;)V

    return-void
.end method

.method public final removeBubble(Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->getView()Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final reorderBubbles(Ljava/util/List;)V
    .locals 1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, LZ0/d;

    invoke-direct {v0}, LZ0/d;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, LZ0/k;

    invoke-direct {v0}, LZ0/k;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->reorder(Ljava/util/List;)V

    return-void
.end method

.method public final setExpanded(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->isExpanded()Z

    move-result v1

    if-eq p1, v1, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->setExpanded(Z)V

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {p0}, Lcom/android/quickstep/SystemUiProxy;->collapseBubbles()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBubbleBarController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->showSelectedBubble()V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mTaskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateAndAnimateTransientTaskbar(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setExpandedFromSysui(Z)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBubbleStashController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->stashBubbleBar()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBubbleStashController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->showBubbleBar(Z)V

    :goto_0
    return-void
.end method

.method public final setHiddenForBubbles(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mHiddenForNoBubbles:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mHiddenForNoBubbles:Z

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mHiddenForSysui:Z

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->setExpanded(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setHiddenForSysui(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mHiddenForSysui:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mHiddenForSysui:Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    if-nez p1, :cond_0

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mHiddenForNoBubbles:Z

    if-nez p0, :cond_0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    invoke-virtual {v1, v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->setExpanded(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setTranslationYForSwipe(F)V
    .locals 1

    iput p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBubbleBarSwipeUpTranslationY:F

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBubbleBarTranslationY:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v0, v0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    add-float/2addr v0, p1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

.method public final setUpdateSelectedBubbleAfterCollapse(LZ0/b;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->setUpdateSelectedBubbleAfterCollapse(LZ0/b;)V

    return-void
.end method

.method public final updateSelectedBubble(Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;->getView()Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->setSelectedBubble(Lcom/android/launcher3/taskbar/bubbles/BubbleView;)V

    return-void
.end method
