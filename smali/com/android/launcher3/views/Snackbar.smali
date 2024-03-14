.class public final Lcom/android/launcher3/views/Snackbar;
.super Lcom/android/launcher3/AbstractFloatingView;
.source "SourceFile"


# instance fields
.field private final mActivity:Lcom/android/launcher3/views/ActivityContext;

.field private mOnDismissed:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    iput-object v0, p0, Lcom/android/launcher3/views/Snackbar;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    const v0, 0x7f0d0122

    invoke-static {p1, v0, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Runnable;Lcom/android/launcher3/views/Snackbar;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 p0, 0x0

    iput-object p0, p1, Lcom/android/launcher3/views/Snackbar;->mOnDismissed:Ljava/lang/Runnable;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    return-void
.end method

.method public static b(Lcom/android/launcher3/views/Snackbar;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/views/Snackbar;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/launcher3/views/Snackbar;->mOnDismissed:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public static show(Landroid/content/Context;IILjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher3/views/Snackbar;->show(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 3
    move-object v3, v0

    check-cast v3, Lcom/android/launcher3/views/ActivityContext;

    const/4 v4, 0x1

    const/16 v5, 0x80

    invoke-static {v3, v4, v5}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    .line 4
    new-instance v3, Lcom/android/launcher3/views/Snackbar;

    .line 5
    invoke-direct {v3, v0}, Lcom/android/launcher3/views/Snackbar;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    .line 6
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v6, 0x10

    .line 7
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0704b2

    .line 9
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setElevation(F)V

    const v7, 0x7f0704ba

    .line 10
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 11
    invoke-virtual {v3, v7, v7, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const v8, 0x7f080328

    .line 12
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 13
    iput-boolean v4, v3, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    .line 14
    move-object v4, v0

    check-cast v4, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v4}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v8

    .line 15
    invoke-virtual {v8, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 16
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    const/16 v10, 0x51

    .line 17
    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const v10, 0x7f0704b3

    .line 18
    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const v10, 0x7f0704b5

    .line 19
    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const v11, 0x7f0704b8

    .line 20
    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    const v12, 0x7f0704b4

    .line 21
    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    const v13, 0x7f0704b7

    .line 22
    invoke-virtual {v6, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 23
    invoke-interface {v4}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v14

    .line 24
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v15

    const/4 v5, 0x2

    mul-int/2addr v11, v5

    sub-int/2addr v15, v11

    iget v11, v14, Landroid/graphics/Rect;->left:I

    sub-int/2addr v15, v11

    iget v11, v14, Landroid/graphics/Rect;->right:I

    sub-int/2addr v15, v11

    .line 25
    invoke-static {v15, v13}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 26
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v8

    mul-int/2addr v10, v5

    sub-int/2addr v8, v10

    iget v10, v14, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v10

    iget v10, v14, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v10

    .line 27
    invoke-static {v8, v13}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 28
    iput v8, v9, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 29
    invoke-interface {v4}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v4

    .line 30
    iget-boolean v8, v4, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-eqz v8, :cond_0

    .line 31
    iget v8, v4, Lcom/android/launcher3/DeviceProfile;->taskbarHeight:I

    invoke-virtual {v4}, Lcom/android/launcher3/DeviceProfile;->getTaskbarOffsetY()I

    move-result v4

    add-int/2addr v4, v8

    goto :goto_0

    .line 32
    :cond_0
    iget v4, v14, Landroid/graphics/Rect;->bottom:I

    :goto_0
    add-int/2addr v12, v4

    const/4 v4, 0x0

    .line 33
    invoke-virtual {v9, v4, v4, v4, v12}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const v4, 0x7f0a01e6

    .line 34
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 35
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x7f0a0034

    .line 36
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const/4 v10, -0x1

    const/4 v12, 0x0

    if-eq v2, v10, :cond_1

    .line 37
    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v10

    .line 39
    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v10, v13

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v10, v13

    .line 40
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    new-instance v2, Lcom/android/launcher3/views/u;

    move-object/from16 v13, p4

    invoke-direct {v2, v13, v3}, Lcom/android/launcher3/views/u;-><init>(Ljava/lang/Runnable;Lcom/android/launcher3/views/Snackbar;)V

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    .line 42
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setVisibility(I)V

    move v10, v12

    .line 43
    :goto_1
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    add-float/2addr v1, v10

    float-to-int v1, v1

    .line 44
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v1, v2

    mul-int/2addr v7, v5

    add-int/2addr v7, v1

    .line 45
    iget v1, v9, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-le v7, v1, :cond_3

    if-gt v7, v11, :cond_2

    .line 46
    iput v7, v9, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_2

    :cond_2
    const v1, 0x7f0704b1

    .line 47
    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f0704b9

    .line 48
    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 49
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLines(I)V

    .line 50
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    mul-int/lit8 v6, v1, 0x2

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 51
    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v5, 0x0

    .line 52
    invoke-virtual {v4, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 53
    invoke-virtual {v8, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 54
    iget v2, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v2, v1

    iput v2, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 55
    iput v11, v9, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :cond_3
    :goto_2
    move-object/from16 v1, p3

    .line 56
    iput-object v1, v3, Lcom/android/launcher3/views/Snackbar;->mOnDismissed:Ljava/lang/Runnable;

    .line 57
    invoke-virtual {v3, v12}, Landroid/widget/LinearLayout;->setAlpha(F)V

    const v1, 0x3f4ccccd    # 0.8f

    .line 58
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 59
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 60
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 61
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 62
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 63
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 64
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v4, 0xb4

    .line 65
    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Ly0/e;->y:Landroid/view/animation/Interpolator;

    .line 66
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 67
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    const/16 v1, 0xfa0

    const/4 v2, 0x6

    .line 68
    invoke-static {v0, v1, v2}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->getRecommendedTimeoutMillis(Landroid/content/Context;II)I

    move-result v0

    .line 69
    new-instance v1, Lcom/android/launcher3/views/v;

    const/4 v2, 0x0

    invoke-direct {v1, v3, v2}, Lcom/android/launcher3/views/v;-><init>(Lcom/android/launcher3/views/Snackbar;I)V

    int-to-long v4, v0

    invoke-virtual {v3, v1, v4, v5}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public final handleClose(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xb4

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Ly0/e;->u:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/launcher3/views/v;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/views/v;-><init>(Lcom/android/launcher3/views/Snackbar;I)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p1, p0, Lcom/android/launcher3/views/Snackbar;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/launcher3/views/Snackbar;->mOnDismissed:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    :cond_2
    return-void
.end method

.method public final isOfType(I)Z
    .locals 0

    and-int/lit16 p0, p1, 0x80

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/views/Snackbar;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
