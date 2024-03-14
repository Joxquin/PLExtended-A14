.class public Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# static fields
.field private static final CLOSE_OUTLINE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final CLOSE_TRANSLATION_Y_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final OPEN_OUTLINE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final OPEN_TRANSLATION_X_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final OPEN_TRANSLATION_Y_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mContent:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mDisplayingRecentTasks:Z

.field private mIsRtl:Z

.field private mNoRecentItemsPane:Landroid/view/View;

.field private mOpenAnimation:Landroid/animation/AnimatorSet;

.field private final mOutlineAnimationProgress:Lcom/android/launcher3/anim/AnimatedFloat;

.field private mOutlineRadius:I

.field private mScrollView:Landroid/widget/HorizontalScrollView;

.field private mSpacing:I

.field private mTaskViewHeight:I

.field private mViewCallbacks:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$ViewCallbacks;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Ly0/e;->c:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->OPEN_OUTLINE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    sget-object v1, Ly0/e;->b:Landroid/view/animation/Interpolator;

    sput-object v1, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->CLOSE_OUTLINE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    sget-object v2, Ly0/e;->a:Landroid/view/animation/Interpolator;

    sput-object v2, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->OPEN_TRANSLATION_X_INTERPOLATOR:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->OPEN_TRANSLATION_Y_INTERPOLATOR:Landroid/view/animation/Interpolator;

    sput-object v1, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->CLOSE_TRANSLATION_Y_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance p1, Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance p2, Lcom/android/launcher3/taskbar/j;

    invoke-direct {p2, p0}, Lcom/android/launcher3/taskbar/j;-><init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;)V

    invoke-direct {p1, p2}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mOutlineAnimationProgress:Lcom/android/launcher3/anim/AnimatedFloat;

    return-void
.end method

.method public static A(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;IZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mDisplayingRecentTasks:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->getTaskAt(I)Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mIsRtl:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2, v1}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->scrollRightTo(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;ZZ)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2, v1}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->scrollLeftTo(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;ZZ)V

    :goto_0
    return-void
.end method

.method public static B(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->scrollLeftTo(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;ZZ)V

    return-void
.end method

.method public static C(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->scrollRightTo(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;ZZ)V

    return-void
.end method

.method public static bridge synthetic D()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->OPEN_OUTLINE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public static r(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;)V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mViewCallbacks:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$ViewCallbacks;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$ViewCallbacks;->this$0:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;

    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->h(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->closeQuickSwitchView(Z)V

    return-void
.end method

.method public static s(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mViewCallbacks:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$ViewCallbacks;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$ViewCallbacks;->this$0:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->h(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->closeQuickSwitchView(Z)V

    return-void
.end method

.method private scrollLeftTo(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;ZZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mDisplayingRecentTasks:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->shouldScroll(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;Z)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mSpacing:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_0
    sub-int/2addr v0, p1

    if-eqz p3, :cond_3

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :goto_1
    return-void
.end method

.method private scrollRightTo(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;ZZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mDisplayingRecentTasks:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->shouldScroll(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;Z)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mSpacing:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_0
    add-int/2addr v0, p1

    if-eqz p3, :cond_3

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :goto_1
    return-void
.end method

.method private shouldScroll(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;Z)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mSpacing:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    add-int/2addr v2, v1

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-gt v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    iget v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mSpacing:I

    sub-int/2addr p1, v0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result p0

    if-ge p1, p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v1

    :goto_1
    if-eqz p0, :cond_2

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    return v1
.end method

.method public static bridge synthetic t(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mIsRtl:Z

    return p0
.end method

.method public static bridge synthetic u(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mOpenAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public static bridge synthetic v(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;)Lcom/android/launcher3/anim/AnimatedFloat;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mOutlineAnimationProgress:Lcom/android/launcher3/anim/AnimatedFloat;

    return-object p0
.end method

.method public static bridge synthetic w(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mOutlineRadius:I

    return p0
.end method

.method public static bridge synthetic x(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;)Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$ViewCallbacks;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mViewCallbacks:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$ViewCallbacks;

    return-object p0
.end method

.method public static bridge synthetic y(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mOpenAnimation:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public static z(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;I)V
    .locals 13

    iget-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mOpenAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mOpenAnimation:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mOutlineAnimationProgress:Lcom/android/launcher3/anim/AnimatedFloat;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x14d

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mOpenAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    sget-object v0, Landroid/view/ViewGroup;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {p0, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v4, 0x53

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v6, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mOpenAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mDisplayingRecentTasks:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mScrollView:Landroid/widget/HorizontalScrollView;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mNoRecentItemsPane:Landroid/view/View;

    :goto_0
    sget-object v6, Landroid/view/ViewGroup;->TRANSLATION_X:Landroid/util/Property;

    new-array v7, v3, [F

    const/high16 v8, 0x42000000    # 32.0f

    invoke-static {v8}, Lcom/android/launcher3/Utilities;->dpToPx(F)I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    const/4 v9, 0x0

    aput v8, v7, v9

    const/4 v8, 0x1

    const/4 v10, 0x0

    aput v10, v7, v8

    invoke-static {v0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v11, 0x1f4

    invoke-virtual {v6, v11, v12}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    sget-object v7, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->OPEN_TRANSLATION_X_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v7, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mOpenAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    sget-object v6, Landroid/view/ViewGroup;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v3, [F

    const/high16 v11, 0x42200000    # 40.0f

    invoke-static {v11}, Lcom/android/launcher3/Utilities;->dpToPx(F)I

    move-result v11

    neg-int v11, v11

    int-to-float v11, v11

    aput v11, v7, v9

    aput v10, v7, v8

    invoke-static {v0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    sget-object v1, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->OPEN_TRANSLATION_Y_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mOpenAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    sget-object v1, Landroid/view/ViewGroup;->ALPHA:Landroid/util/Property;

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {v1, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mOpenAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mOpenAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$3;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$3;-><init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;ILandroid/view/View;Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mOpenAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final animateFocusMove(II)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mDisplayingRecentTasks:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->getTaskAt(I)Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->getFocusAnimator(Z)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->getTaskAt(I)Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->getFocusAnimator(Z)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_2
    new-instance v2, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$4;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$4;-><init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;II)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public final applyLoadPlan(Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;Ljava/util/List;IZILcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$ViewCallbacks;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    iput-object v1, v0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mViewCallbacks:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$ViewCallbacks;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07022a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x6

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v8, v5

    move v7, v6

    :goto_0
    const/4 v9, 0x1

    if-ge v7, v4, :cond_5

    add-int/lit8 v10, v4, -0x1

    if-ne v7, v10, :cond_0

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    move v9, v6

    :goto_1
    iget-object v10, v0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v11, 0x7f0d0087

    invoke-virtual {v3, v11, v10, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v11

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/widget/ConstraintLayout;->setId(I)V

    new-instance v11, Lcom/android/launcher3/taskbar/l;

    invoke-direct {v11, v0, v7}, Lcom/android/launcher3/taskbar/l;-><init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;I)V

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v11, Landroidx/constraintlayout/widget/d;

    iget v12, v0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mTaskViewHeight:I

    invoke-direct {v11, v2, v12}, Landroidx/constraintlayout/widget/d;-><init>(II)V

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    iput v8, v11, Landroidx/constraintlayout/widget/d;->s:I

    goto :goto_2

    :cond_1
    iput v6, v11, Landroidx/constraintlayout/widget/d;->t:I

    :goto_2
    iput v6, v11, Landroidx/constraintlayout/widget/d;->i:I

    iput v6, v11, Landroidx/constraintlayout/widget/d;->l:I

    iget v8, v0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mSpacing:I

    invoke-virtual {v11, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    if-eqz v9, :cond_2

    iput v6, v11, Landroidx/constraintlayout/widget/d;->v:I

    iget v8, v0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mSpacing:I

    invoke-virtual {v11, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, v11, Landroidx/constraintlayout/widget/d;->E:F

    :cond_2
    move-object/from16 v12, p2

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/quickstep/util/GroupTask;

    iget-object v9, v8, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v8, v8, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz p4, :cond_3

    iget-object v13, v0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mViewCallbacks:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$ViewCallbacks;

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$$ExternalSyntheticLambda3;

    invoke-direct {v14, v13}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$ViewCallbacks;)V

    goto :goto_3

    :cond_3
    move-object v14, v5

    :goto_3
    if-eqz p4, :cond_4

    iget-object v13, v0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mViewCallbacks:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$ViewCallbacks;

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$$ExternalSyntheticLambda3;

    invoke-direct {v15, v13}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$ViewCallbacks;)V

    goto :goto_4

    :cond_4
    move-object v15, v5

    :goto_4
    invoke-virtual {v10, v9, v8, v14, v15}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->setThumbnails(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$$ExternalSyntheticLambda3;Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$$ExternalSyntheticLambda3;)V

    iget-object v8, v0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v8, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v7, v7, 0x1

    move-object v8, v10

    goto/16 :goto_0

    :cond_5
    move-object/from16 v12, p2

    if-lez p3, :cond_7

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "count"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Landroid/icu/text/MessageFormat;

    const v7, 0x7f13019c

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v5, v1, v7}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v5, v4}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v4, 0x7f0d0086

    invoke-virtual {v3, v4, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;

    new-instance v4, Lcom/android/launcher3/taskbar/k;

    invoke-direct {v4, v0}, Lcom/android/launcher3/taskbar/k;-><init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0a0372

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroidx/constraintlayout/widget/d;

    iget v4, v0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mTaskViewHeight:I

    invoke-direct {v1, v2, v4}, Landroidx/constraintlayout/widget/d;-><init>(II)V

    if-nez v8, :cond_6

    iput v6, v1, Landroidx/constraintlayout/widget/d;->t:I

    goto :goto_5

    :cond_6
    iput v6, v1, Landroidx/constraintlayout/widget/d;->v:I

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v2

    iput v2, v1, Landroidx/constraintlayout/widget/d;->s:I

    :goto_5
    iput v6, v1, Landroidx/constraintlayout/widget/d;->i:I

    iput v6, v1, Landroidx/constraintlayout/widget/d;->l:I

    iget v2, v0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mSpacing:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget v2, v0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mSpacing:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v2, v0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v9

    iput-boolean v1, v0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mDisplayingRecentTasks:Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$1;

    move/from16 v3, p5

    invoke-direct {v2, v0, v3}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$1;-><init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public final getCloseAnimation()Landroid/animation/Animator;
    .locals 11

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mOutlineAnimationProgress:Lcom/android/launcher3/anim/AnimatedFloat;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v3, 0x14d

    invoke-virtual {v1, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    sget-object v5, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->CLOSE_OUTLINE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    sget-object v1, Landroid/view/ViewGroup;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v6, v5, [F

    fill-array-data v6, :array_0

    invoke-static {p0, v1, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v6, 0x43

    invoke-virtual {v1, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    const-wide/16 v6, 0x53

    invoke-virtual {v1, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mDisplayingRecentTasks:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mScrollView:Landroid/widget/HorizontalScrollView;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mNoRecentItemsPane:Landroid/view/View;

    :goto_0
    sget-object v8, Landroid/view/ViewGroup;->TRANSLATION_Y:Landroid/util/Property;

    new-array v9, v5, [F

    const/4 v10, 0x0

    aput v2, v9, v10

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->dpToPx(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v10, 0x1

    aput v2, v9, v10

    invoke-static {v1, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    sget-object v3, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->CLOSE_TRANSLATION_Y_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    sget-object v2, Landroid/view/ViewGroup;->ALPHA:Landroid/util/Property;

    new-array v3, v5, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v1, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$2;-><init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final getTaskAt(I)Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mDisplayingRecentTasks:Z

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public final onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x7f0a0261

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mNoRecentItemsPane:Landroid/view/View;

    const v0, 0x7f0a02c8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mScrollView:Landroid/widget/HorizontalScrollView;

    const v0, 0x7f0a00ef

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070227

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mTaskViewHeight:I

    const v1, 0x7f07022c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mSpacing:I

    const v1, 0x7f07022b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mOutlineRadius:I

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mIsRtl:Z

    return-void
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 10

    iget-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mViewCallbacks:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$ViewCallbacks;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    iget-boolean v3, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mIsRtl:Z

    iget-boolean v4, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mDisplayingRecentTasks:Z

    const/16 v5, 0x15

    const/16 v6, 0x6f

    const/16 v7, 0x16

    const/16 v8, 0x44

    const/16 v9, 0x3d

    if-eq p1, v9, :cond_0

    if-eq p1, v7, :cond_0

    if-eq p1, v5, :cond_0

    if-eq p1, v8, :cond_0

    if-eq p1, v6, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$ViewCallbacks;->this$0:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;

    if-eq p1, v8, :cond_d

    if-ne p1, v6, :cond_1

    goto/16 :goto_5

    :cond_1
    if-nez v4, :cond_2

    :goto_0
    move v0, v2

    goto/16 :goto_7

    :cond_2
    if-ne p1, v9, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    if-nez v4, :cond_5

    :cond_3
    if-ne p1, v7, :cond_4

    if-nez v3, :cond_5

    :cond_4
    if-ne p1, v5, :cond_6

    if-nez v3, :cond_6

    :cond_5
    move v3, v1

    goto :goto_1

    :cond_6
    move v3, v2

    :goto_1
    invoke-static {v0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->c(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;)Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController$ControllerCallbacks;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController$ControllerCallbacks;->this$0:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;

    invoke-static {v4}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->e(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v4}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->d(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;)I

    move-result v4

    if-nez v4, :cond_7

    move v4, v2

    goto :goto_2

    :cond_7
    move v4, v1

    :goto_2
    add-int/2addr v5, v4

    invoke-static {v0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->d(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;)I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_9

    if-le v5, v1, :cond_8

    move v3, v1

    goto :goto_4

    :cond_8
    move v3, v2

    goto :goto_4

    :cond_9
    if-eqz v3, :cond_b

    invoke-static {v0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->d(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;)I

    move-result v3

    if-nez v3, :cond_a

    sub-int/2addr v5, v1

    goto :goto_3

    :cond_a
    invoke-static {v0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->d(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;)I

    move-result v3

    add-int/lit8 v5, v3, -0x1

    :goto_3
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_4

    :cond_b
    invoke-static {v0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->d(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;)I

    move-result v3

    add-int/2addr v3, v1

    rem-int/2addr v3, v5

    :goto_4
    invoke-static {v0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->d(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;)I

    move-result v4

    if-ne v4, v3, :cond_c

    goto :goto_6

    :cond_c
    invoke-static {v0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->e(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;)Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

    move-result-object v4

    invoke-static {v0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->d(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;)I

    move-result v0

    invoke-virtual {v4, v0, v3}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->animateFocusMove(II)V

    goto :goto_6

    :cond_d
    :goto_5
    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController;->closeQuickSwitchView(Z)V

    :goto_6
    move v0, v1

    :goto_7
    if-nez v0, :cond_10

    :cond_e
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_8

    :cond_f
    move v1, v2

    :cond_10
    :goto_8
    return v1
.end method
