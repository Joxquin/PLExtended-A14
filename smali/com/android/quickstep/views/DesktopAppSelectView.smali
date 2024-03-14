.class public Lcom/android/quickstep/views/DesktopAppSelectView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field private static final HIDE_DURATION:I = 0x53

.field private static final SHOW_CONTAINER_ALPHA_DURATION:I = 0x53

.field private static final SHOW_CONTAINER_SCALE_DURATION:I = 0x14d

.field private static final SHOW_CONTENT_ALPHA_DELAY:I = 0x43

.field private static final SHOW_CONTENT_ALPHA_DURATION:I = 0x53

.field private static final SHOW_INITIAL_HEIGHT_DP:I = 0x7


# instance fields
.field private mCloseButton:Landroid/view/View;

.field private mHideAnimation:Landroid/animation/Animator;

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private mOnCloseCallback:Ljava/lang/Runnable;

.field private mShowAnimation:Landroid/animation/AnimatorSet;

.field private mText:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/views/DesktopAppSelectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/quickstep/views/DesktopAppSelectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/quickstep/views/DesktopAppSelectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/views/DesktopAppSelectView;->mLauncher:Lcom/android/launcher3/Launcher;

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/views/DesktopAppSelectView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/DesktopAppSelectView;->lambda$show$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/quickstep/views/DesktopAppSelectView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/DesktopAppSelectView;->lambda$onFinishInflate$0(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/android/quickstep/views/DesktopAppSelectView;)Lcom/android/launcher3/Launcher;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/DesktopAppSelectView;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/android/quickstep/views/DesktopAppSelectView;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/views/DesktopAppSelectView;->mHideAnimation:Landroid/animation/Animator;

    return-void
.end method

.method public static bridge synthetic e(Lcom/android/quickstep/views/DesktopAppSelectView;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/views/DesktopAppSelectView;->mShowAnimation:Landroid/animation/AnimatorSet;

    return-void
.end method

.method private synthetic lambda$onFinishInflate$0(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/android/quickstep/views/DesktopAppSelectView;->mHideAnimation:Landroid/animation/Animator;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/views/DesktopAppSelectView;->hide()V

    iget-object p0, p0, Lcom/android/quickstep/views/DesktopAppSelectView;->mOnCloseCallback:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$show$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public static show(Lcom/android/launcher3/Launcher;Ljava/lang/Runnable;)Lcom/android/quickstep/views/DesktopAppSelectView;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object p0

    const/4 v1, 0x0

    const v2, 0x7f0d0066

    .line 3
    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/DesktopAppSelectView;

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/DesktopAppSelectView;->setOnCloseClickCallback(Ljava/lang/Runnable;)V

    .line 5
    invoke-direct {p0}, Lcom/android/quickstep/views/DesktopAppSelectView;->show()V

    return-object p0
.end method

.method private show()V
    .locals 11

    .line 6
    iget-object v0, p0, Lcom/android/quickstep/views/DesktopAppSelectView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 8
    iget-object v0, p0, Lcom/android/quickstep/views/DesktopAppSelectView;->mText:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 9
    iget-object v0, p0, Lcom/android/quickstep/views/DesktopAppSelectView;->mCloseButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    const/high16 v0, 0x40e00000    # 7.0f

    .line 10
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->dpToPx(F)I

    move-result v0

    .line 11
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070130

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v0, v0

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 12
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 13
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setPivotY(F)V

    const/16 v0, 0xff

    .line 14
    filled-new-array {v1, v0}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 15
    new-instance v2, Lcom/android/quickstep/views/b;

    invoke-direct {v2, p0}, Lcom/android/quickstep/views/b;-><init>(Lcom/android/quickstep/views/DesktopAppSelectView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v2, 0x53

    .line 16
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 17
    sget-object v4, Ly0/e;->m:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 18
    sget-object v5, Landroid/widget/LinearLayout;->SCALE_Y:Landroid/util/Property;

    const/4 v6, 0x1

    new-array v7, v6, [F

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v7, v1

    invoke-static {p0, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v9, 0x14d

    .line 19
    invoke-virtual {v5, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 20
    sget-object v7, Ly0/e;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 21
    iget-object v7, p0, Lcom/android/quickstep/views/DesktopAppSelectView;->mText:Landroid/view/View;

    sget-object v9, Landroid/widget/LinearLayout;->ALPHA:Landroid/util/Property;

    new-array v10, v6, [F

    aput v8, v10, v1

    invoke-static {v7, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 22
    iget-object v9, p0, Lcom/android/quickstep/views/DesktopAppSelectView;->mCloseButton:Landroid/view/View;

    sget-object v10, Landroid/widget/LinearLayout;->ALPHA:Landroid/util/Property;

    new-array v6, v6, [F

    aput v8, v6, v1

    invoke-static {v9, v10, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 23
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 24
    filled-new-array {v7, v1}, [Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v7, 0x43

    .line 25
    invoke-virtual {v6, v7, v8}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 26
    invoke-virtual {v6, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 27
    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 28
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/quickstep/views/DesktopAppSelectView;->mShowAnimation:Landroid/animation/AnimatorSet;

    .line 29
    new-instance v2, Lcom/android/quickstep/views/DesktopAppSelectView$1;

    invoke-direct {v2, p0}, Lcom/android/quickstep/views/DesktopAppSelectView$1;-><init>(Lcom/android/quickstep/views/DesktopAppSelectView;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 30
    iget-object v1, p0, Lcom/android/quickstep/views/DesktopAppSelectView;->mShowAnimation:Landroid/animation/AnimatorSet;

    filled-new-array {v0, v5, v6}, [Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 31
    iget-object p0, p0, Lcom/android/quickstep/views/DesktopAppSelectView;->mShowAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 4

    iget-object v0, p0, Lcom/android/quickstep/views/DesktopAppSelectView;->mShowAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    sget-object v0, Landroid/widget/LinearLayout;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/views/DesktopAppSelectView;->mHideAnimation:Landroid/animation/Animator;

    const-wide/16 v1, 0x53

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    sget-object v1, Ly0/e;->m:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/quickstep/views/DesktopAppSelectView;->mHideAnimation:Landroid/animation/Animator;

    new-instance v1, Lcom/android/quickstep/views/DesktopAppSelectView$2;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/DesktopAppSelectView$2;-><init>(Lcom/android/quickstep/views/DesktopAppSelectView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/quickstep/views/DesktopAppSelectView;->mHideAnimation:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0127

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/views/DesktopAppSelectView;->mText:Landroid/view/View;

    const v0, 0x7f0a00e5

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/views/DesktopAppSelectView;->mCloseButton:Landroid/view/View;

    new-instance v1, Lcom/android/quickstep/views/c;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/c;-><init>(Lcom/android/quickstep/views/DesktopAppSelectView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnCloseClickCallback(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/views/DesktopAppSelectView;->mOnCloseCallback:Ljava/lang/Runnable;

    return-void
.end method
