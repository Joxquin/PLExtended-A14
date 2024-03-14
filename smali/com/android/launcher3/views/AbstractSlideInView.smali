.class public abstract Lcom/android/launcher3/views/AbstractSlideInView;
.super Lcom/android/launcher3/AbstractFloatingView;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;


# static fields
.field protected static final TRANSLATION_SHIFT:Landroid/util/FloatProperty;


# instance fields
.field protected final mActivityContext:Landroid/content/Context;

.field protected final mColorScrim:Landroid/view/View;

.field protected mContent:Landroid/view/ViewGroup;

.field private mContentBackground:Landroid/graphics/drawable/Drawable;

.field private mContentBackgroundParentView:Landroid/view/View;

.field private mDragStartProgress:F

.field protected mFromTranslationShift:F

.field protected mIsBackProgressing:Z

.field protected mNoIntercept:Z

.field protected mOnCloseBeginListener:Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;

.field protected mOnCloseListeners:Ljava/util/List;

.field protected mOpenCloseAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

.field private mScrollDuration:J

.field private mScrollEndProgress:F

.field private mScrollInterpolator:Ly0/d;

.field protected final mSlideInViewScale:Lcom/android/launcher3/anim/AnimatedFloat;

.field protected final mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

.field protected mToTranslationShift:F

.field protected mTranslationShift:F

.field protected final mViewOutlineProvider:Landroid/view/ViewOutlineProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/views/AbstractSlideInView$1;

    invoke-direct {v0}, Lcom/android/launcher3/views/AbstractSlideInView$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/views/AbstractSlideInView;->TRANSLATION_SHIFT:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mTranslationShift:F

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOnCloseListeners:Ljava/util/List;

    new-instance p3, Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v0, Lcom/android/launcher3/views/b;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/views/b;-><init>(Lcom/android/launcher3/views/AbstractSlideInView;I)V

    invoke-direct {p3, v0}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput p2, p3, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    iput-object p3, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSlideInViewScale:Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance p2, Lcom/android/launcher3/views/AbstractSlideInView$2;

    invoke-direct {p2, p0}, Lcom/android/launcher3/views/AbstractSlideInView$2;-><init>(Lcom/android/launcher3/views/AbstractSlideInView;)V

    iput-object p2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    sget-object p2, Ly0/e;->J:Ly0/d;

    iput-object p2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mScrollInterpolator:Ly0/d;

    const-wide/16 p2, 0x12c

    iput-wide p2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mScrollDuration:J

    new-instance p2, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    sget-object p3, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->VERTICAL:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    invoke-direct {p2, p1, p0, p3}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;-><init>(Landroid/content/Context;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;)V

    iput-object p2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    new-instance p2, Lcom/android/launcher3/anim/PendingAnimation;

    const-wide/16 v2, 0x0

    invoke-direct {p2, v2, v3}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    invoke-virtual {p2}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/AbstractSlideInView;->getScrimColor(Landroid/content/Context;)I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_0

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->forceHasOverlappingRendering(Z)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance p1, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    invoke-direct {p1, p3, p3}, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;-><init>(II)V

    iput-boolean v1, p1, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->ignoreInsets:Z

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mColorScrim:Landroid/view/View;

    return-void
.end method

.method private setUpOpenCloseAnimation(FFJ)Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .locals 7

    iput p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mFromTranslationShift:F

    iput p2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mToTranslationShift:F

    new-instance v6, Lcom/android/launcher3/anim/PendingAnimation;

    invoke-direct {v6, p3, p4}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    new-instance p3, Lcom/android/launcher3/views/c;

    invoke-direct {p3, p0}, Lcom/android/launcher3/views/c;-><init>(Lcom/android/launcher3/views/AbstractSlideInView;)V

    invoke-virtual {v6, p3}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addEndListener(Ljava/util/function/Consumer;)V

    sget-object v2, Lcom/android/launcher3/views/AbstractSlideInView;->TRANSLATION_SHIFT:Landroid/util/FloatProperty;

    sget-object v5, Ly0/e;->m:Landroid/view/animation/Interpolator;

    move-object v0, v6

    move-object v1, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, v6}, Lcom/android/launcher3/views/AbstractSlideInView;->onOpenCloseAnimationPending(Lcom/android/launcher3/anim/PendingAnimation;)V

    invoke-virtual {v6}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    return-object p1
.end method


# virtual methods
.method public final addOnCloseListener(Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOnCloseListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final animateSlideInViewToNoScale()V
    .locals 2

    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSlideInViewScale:Lcom/android/launcher3/anim/AnimatedFloat;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public final attachToContainer()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mColorScrim:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mColorScrim:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContentBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContentBackgroundParentView:Landroid/view/View;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContentBackgroundParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContentBackgroundParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContentBackgroundParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget-boolean v5, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mIsBackProgressing:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3f666666    # 0.9f

    div-float v6, v5, v6

    sub-float/2addr v6, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v6, v5

    float-to-int v5, v6

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContentBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getIdleInterpolator()Landroid/view/animation/Interpolator;
    .locals 0

    sget-object p0, Ly0/e;->u:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public final getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object p0

    return-object p0
.end method

.method public getScrimColor(Landroid/content/Context;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getShiftRange()F
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public final handleClose(JZ)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOnCloseBeginListener:Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/views/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/launcher3/views/a;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p3, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->pause()V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/AbstractSlideInView;->setTranslationShift(F)V

    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->onCloseComplete()V

    return-void

    :cond_1
    iget-object p3, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {p3}, Lcom/android/launcher3/touch/BaseSwipeDetector;->isIdleState()Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p3, 0x0

    invoke-direct {p0, p3, v0, p1, p2}, Lcom/android/launcher3/views/AbstractSlideInView;->setUpOpenCloseAnimation(FFJ)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getIdleInterpolator()Landroid/view/animation/Interpolator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mScrollInterpolator:Ly0/d;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-wide p2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mScrollDuration:J

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {p2}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object p2

    const/4 p3, 0x2

    new-array p3, p3, [F

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result v0

    aput v0, p3, v2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mScrollEndProgress:F

    aput v1, p3, v0

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    :goto_0
    new-instance p2, Lcom/android/launcher3/views/b;

    invoke-direct {p2, p0, v2}, Lcom/android/launcher3/views/b;-><init>(Lcom/android/launcher3/views/AbstractSlideInView;I)V

    invoke-static {p2}, Lcom/android/launcher3/anim/AnimatorListeners;->forEndCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public isEventOverContent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onBackCancelled()V
    .locals 0

    invoke-super {p0}, Landroid/window/OnBackAnimationCallback;->onBackCancelled()V

    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->animateSlideInViewToNoScale()V

    return-void
.end method

.method public onBackInvoked()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher3/AbstractFloatingView;->onBackInvoked()V

    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->animateSlideInViewToNoScale()V

    return-void
.end method

.method public onBackProgressed(Landroid/window/BackEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/window/BackEvent;->getProgress()F

    move-result p1

    sget-object v0, Ly0/e;->t:Landroid/view/animation/Interpolator;

    check-cast v0, Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mIsBackProgressing:Z

    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSlideInViewScale:Lcom/android/launcher3/anim/AnimatedFloat;

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    const v0, 0x3dccccd0    # 0.100000024f

    mul-float/2addr p1, v0

    const v0, 0x3f666666    # 0.9f

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/AnimatedFloat;->updateValue(F)V

    return-void
.end method

.method public onCloseComplete()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mColorScrim:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mColorScrim:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOnCloseListeners:Ljava/util/List;

    new-instance v0, Lcom/android/launcher3/views/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/views/a;-><init>(I)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mNoIntercept:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/touch/BaseSwipeDetector;->isIdleState()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->setDetectableScrollConditions(IZ)V

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/touch/BaseSwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/touch/BaseSwipeDetector;->isDraggingOrSettling()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/AbstractSlideInView;->isEventOverContent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-nez p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public final onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/touch/BaseSwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/touch/BaseSwipeDetector;->isIdleState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/AbstractSlideInView;->isEventOverContent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :cond_1
    return v1
.end method

.method public final onDrag(F)Z
    .locals 3

    iget v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mDragStartProgress:F

    iget v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mToTranslationShift:F

    iget v2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mFromTranslationShift:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getShiftRange()F

    move-result v2

    div-float/2addr p1, v2

    mul-float/2addr p1, v1

    add-float/2addr p1, v0

    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onDragEnd(F)V
    .locals 7

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_0

    const v0, 0x3e99999a    # 0.3f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/touch/BaseSwipeDetector;->isFling(F)Z

    move-result v1

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    cmpl-float v1, p1, v4

    if-gtz v1, :cond_2

    :cond_1
    iget v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mTranslationShift:F

    cmpl-float v0, v1, v0

    if-lez v0, :cond_4

    :cond_2
    invoke-static {p1}, Ly0/e;->c(F)Ly0/d;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mScrollInterpolator:Ly0/d;

    iget v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mTranslationShift:F

    sub-float v0, v3, v0

    invoke-static {p1, v0}, Lcom/android/launcher3/touch/BaseSwipeDetector;->calculateDuration(FF)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mScrollDuration:J

    iget p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mToTranslationShift:F

    cmpl-float p1, p1, v4

    if-nez p1, :cond_3

    move v3, v4

    :cond_3
    iput v3, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mScrollEndProgress:F

    invoke-virtual {p0, v2}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v1, Ly0/e;->z:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget-object v5, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v5}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result v5

    const/4 v6, 0x0

    aput v5, v1, v6

    iget v5, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mToTranslationShift:F

    cmpl-float v5, v5, v4

    if-nez v5, :cond_5

    goto :goto_1

    :cond_5
    move v3, v4

    :goto_1
    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mTranslationShift:F

    invoke-static {p1, p0}, Lcom/android/launcher3/touch/BaseSwipeDetector;->calculateDuration(FF)J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_2
    return-void
.end method

.method public onDragStart(ZF)V
    .locals 2

    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->pause()V

    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mDragStartProgress:F

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    const/4 p2, 0x0

    const-wide/16 v0, 0x12c

    invoke-direct {p0, p2, p1, v0, v1}, Lcom/android/launcher3/views/AbstractSlideInView;->setUpOpenCloseAnimation(FFJ)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    iput p2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mDragStartProgress:F

    :goto_0
    return-void
.end method

.method public onOpenCloseAnimationPending(Lcom/android/launcher3/anim/PendingAnimation;)V
    .locals 0

    return-void
.end method

.method public onScaleProgressChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSlideInViewScale:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v0, v0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    iget-boolean v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mIsBackProgressing:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    iget-boolean v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mIsBackProgressing:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public final setContentBackgroundWithParent(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContentBackground:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContentBackgroundParentView:Landroid/view/View;

    return-void
.end method

.method public final setOnCloseBeginListener(Lcom/android/launcher3/taskbar/allapps/d;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOnCloseBeginListener:Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;

    return-void
.end method

.method public setTranslationShift(F)V
    .locals 2

    iput p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mTranslationShift:F

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getShiftRange()F

    move-result v1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mColorScrim:Landroid/view/View;

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mTranslationShift:F

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public final setUpDefaultOpenAnimation()Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .locals 4

    const-wide/16 v0, 0x12c

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/launcher3/views/AbstractSlideInView;->setUpOpenCloseAnimation(FFJ)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v1, Ly0/e;->n:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method public final setUpOpenAnimation(J)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/launcher3/views/AbstractSlideInView;->setUpOpenCloseAnimation(FFJ)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    return-void
.end method
