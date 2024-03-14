.class public final Lcom/android/launcher3/taskbar/TaskbarViewController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;


# static fields
.field private static final NO_OP:Lcom/android/launcher3/taskbar/S0;

.field public static final synthetic d:I


# instance fields
.field private final mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

.field private final mDeviceProfileChangeListener:Lcom/android/launcher3/taskbar/R0;

.field private mIconAlignControllerLazy:Lcom/android/launcher3/anim/AnimatorPlaybackController;

.field private mIsHotseatIconOnTopWhenAligned:Z

.field private final mIsRtl:Z

.field private mIsStashed:Z

.field private final mLauncherThemedIconsBackgroundColor:I

.field private final mModelCallbacks:Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;

.field private mOnControllerPreCreateCallback:Ljava/lang/Runnable;

.field private final mStashedHandleHeight:I

.field private final mTaskbarBottomMargin:I

.field private final mTaskbarIconAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

.field private final mTaskbarIconScaleForStash:Lcom/android/launcher3/anim/AnimatedFloat;

.field private final mTaskbarIconTranslationYForHome:Lcom/android/launcher3/anim/AnimatedFloat;

.field private mTaskbarIconTranslationYForSpringOnStash:F

.field private final mTaskbarIconTranslationYForStash:Lcom/android/launcher3/anim/AnimatedFloat;

.field private mTaskbarIconTranslationYForSwipe:F

.field private mTaskbarNavButtonTranslationY:Lcom/android/launcher3/anim/AnimatedFloat;

.field private mTaskbarNavButtonTranslationYForInAppDisplay:Lcom/android/launcher3/anim/AnimatedFloat;

.field private final mTaskbarThemedIconsBackgroundColor:I

.field private final mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

.field private final mThemedIconsBackgroundProgress:Lcom/android/launcher3/anim/AnimatedFloat;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/taskbar/S0;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/S0;-><init>()V

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->NO_OP:Lcom/android/launcher3/taskbar/S0;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/TaskbarView;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v4, Lcom/android/launcher3/taskbar/Q0;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lcom/android/launcher3/taskbar/Q0;-><init>(Lcom/android/launcher3/taskbar/TaskbarViewController;I)V

    invoke-direct {v3, v4}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconScaleForStash:Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v3, Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v4, Lcom/android/launcher3/taskbar/Q0;

    const/4 v6, 0x1

    invoke-direct {v4, v0, v6}, Lcom/android/launcher3/taskbar/Q0;-><init>(Lcom/android/launcher3/taskbar/TaskbarViewController;I)V

    invoke-direct {v3, v4}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconTranslationYForHome:Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v3, Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v4, Lcom/android/launcher3/taskbar/Q0;

    const/4 v7, 0x2

    invoke-direct {v4, v0, v7}, Lcom/android/launcher3/taskbar/Q0;-><init>(Lcom/android/launcher3/taskbar/TaskbarViewController;I)V

    invoke-direct {v3, v4}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconTranslationYForStash:Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v3, Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v4, Lcom/android/launcher3/taskbar/Q0;

    const/4 v8, 0x3

    invoke-direct {v4, v0, v8}, Lcom/android/launcher3/taskbar/Q0;-><init>(Lcom/android/launcher3/taskbar/TaskbarViewController;I)V

    invoke-direct {v3, v4}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mThemedIconsBackgroundProgress:Lcom/android/launcher3/anim/AnimatedFloat;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mIconAlignControllerLazy:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    sget-object v3, Lcom/android/launcher3/taskbar/TaskbarViewController;->NO_OP:Lcom/android/launcher3/taskbar/S0;

    iput-object v3, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mOnControllerPreCreateCallback:Ljava/lang/Runnable;

    new-instance v3, Lcom/android/launcher3/taskbar/R0;

    invoke-direct {v3, v0}, Lcom/android/launcher3/taskbar/R0;-><init>(Lcom/android/launcher3/taskbar/TaskbarViewController;)V

    iput-object v3, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mDeviceProfileChangeListener:Lcom/android/launcher3/taskbar/R0;

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iput-object v2, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    new-instance v3, Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v4, 0x4

    const/4 v9, 0x7

    invoke-direct {v3, v9, v2, v4}, Lcom/android/launcher3/util/MultiValueAlpha;-><init>(ILandroid/view/View;I)V

    iput-object v3, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    invoke-virtual {v3}, Lcom/android/launcher3/util/MultiValueAlpha;->setUpdateVisibility()V

    const-string v3, "context"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v3, Lcom/android/launcher3/taskbar/TaskbarModelCallbacksFactory;

    const v4, 0x7f130234

    invoke-static {v4, v1, v3}, Lcom/android/launcher3/util/ResourceBasedOverride$Overrides;->getObject(ILandroid/content/Context;Ljava/lang/Class;)Lcom/android/launcher3/util/ResourceBasedOverride;

    move-result-object v3

    const-string v4, "getObject(\n             \u2026tory_class,\n            )"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/android/launcher3/taskbar/TaskbarModelCallbacksFactory;

    invoke-virtual {v3, v1, v2}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacksFactory;->create(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/TaskbarView;)Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;

    move-result-object v3

    iput-object v3, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mModelCallbacks:Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->taskbarBottomMargin:I

    iput v3, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarBottomMargin:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070538

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mStashedHandleHeight:I

    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/icons/ThemedIconDrawable;->getColors(Landroid/content/Context;)[I

    move-result-object v3

    aget v3, v3, v5

    iput v3, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mLauncherThemedIconsBackgroundColor:I

    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/Utilities;->isDarkTheme(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iput v3, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarThemedIconsBackgroundColor:I

    goto/16 :goto_7

    :cond_0
    new-array v1, v8, [F

    sget-object v4, LE/a;->a:Ljava/lang/ThreadLocal;

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v8

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v4, v4

    const/high16 v9, 0x437f0000    # 255.0f

    div-float/2addr v4, v9

    int-to-float v8, v8

    div-float/2addr v8, v9

    int-to-float v3, v3

    div-float/2addr v3, v9

    invoke-static {v8, v3}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-static {v4, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-static {v8, v3}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v4, v11}, Ljava/lang/Math;->min(FF)F

    move-result v11

    sub-float v12, v10, v11

    add-float v13, v10, v11

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    cmpl-float v11, v10, v11

    const/4 v15, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    if-nez v11, :cond_1

    move v8, v15

    move v12, v8

    goto :goto_1

    :cond_1
    cmpl-float v11, v10, v4

    if-nez v11, :cond_2

    sub-float/2addr v8, v3

    div-float/2addr v8, v12

    const/high16 v3, 0x40c00000    # 6.0f

    rem-float/2addr v8, v3

    goto :goto_0

    :cond_2
    cmpl-float v10, v10, v8

    if-nez v10, :cond_3

    sub-float/2addr v3, v4

    div-float/2addr v3, v12

    add-float v8, v3, v14

    goto :goto_0

    :cond_3
    sub-float/2addr v4, v8

    div-float/2addr v4, v12

    const/high16 v3, 0x40800000    # 4.0f

    add-float v8, v4, v3

    :goto_0
    mul-float v3, v13, v14

    sub-float/2addr v3, v9

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float v3, v9, v3

    div-float/2addr v12, v3

    :goto_1
    const/high16 v3, 0x42700000    # 60.0f

    mul-float/2addr v8, v3

    const/high16 v4, 0x43b40000    # 360.0f

    rem-float/2addr v8, v4

    cmpg-float v10, v8, v15

    if-gez v10, :cond_4

    add-float/2addr v8, v4

    :cond_4
    cmpg-float v10, v8, v15

    if-gez v10, :cond_5

    move v4, v15

    goto :goto_2

    :cond_5
    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    :goto_2
    aput v4, v1, v5

    cmpg-float v4, v12, v15

    if-gez v4, :cond_6

    move v4, v15

    goto :goto_3

    :cond_6
    invoke-static {v12, v9}, Ljava/lang/Math;->min(FF)F

    move-result v4

    :goto_3
    aput v4, v1, v6

    cmpg-float v4, v13, v15

    if-gez v4, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {v13, v9}, Ljava/lang/Math;->min(FF)F

    move-result v15

    :goto_4
    aput v15, v1, v7

    const v4, 0x3e99999a    # 0.3f

    aput v4, v1, v7

    aget v7, v1, v5

    aget v1, v1, v6

    const v6, -0x41333334    # -0.39999998f

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float v6, v9, v6

    mul-float/2addr v6, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v6

    sub-float/2addr v4, v1

    div-float v1, v7, v3

    rem-float/2addr v1, v14

    sub-float/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float/2addr v9, v1

    mul-float/2addr v9, v6

    float-to-int v1, v7

    div-int/lit8 v1, v1, 0x3c

    packed-switch v1, :pswitch_data_0

    move v1, v5

    move v3, v1

    goto/16 :goto_6

    :pswitch_0
    add-float/2addr v6, v4

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    mul-float v3, v4, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-float/2addr v9, v4

    mul-float/2addr v9, v1

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_6

    :pswitch_1
    const/high16 v1, 0x437f0000    # 255.0f

    add-float/2addr v9, v4

    mul-float/2addr v9, v1

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-float v9, v4, v1

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-float/2addr v6, v4

    mul-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_5

    :pswitch_2
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v3, v4, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-float/2addr v9, v4

    mul-float/2addr v9, v1

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-float/2addr v6, v4

    mul-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v1

    :goto_5
    move/from16 v16, v5

    move v5, v3

    move/from16 v3, v16

    goto :goto_6

    :pswitch_3
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v3, v4, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-float/2addr v6, v4

    mul-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-float/2addr v9, v4

    mul-float/2addr v9, v1

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_6

    :pswitch_4
    const/high16 v1, 0x437f0000    # 255.0f

    add-float/2addr v9, v4

    mul-float/2addr v9, v1

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-float/2addr v6, v4

    mul-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_6

    :pswitch_5
    const/high16 v1, 0x437f0000    # 255.0f

    add-float/2addr v6, v4

    mul-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-float/2addr v9, v4

    mul-float/2addr v9, v1

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    :goto_6
    invoke-static {v5}, LE/a;->i(I)I

    move-result v4

    invoke-static {v3}, LE/a;->i(I)I

    move-result v3

    invoke-static {v1}, LE/a;->i(I)I

    move-result v1

    invoke-static {v4, v3, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarThemedIconsBackgroundColor:I

    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mIsRtl:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic a(Lcom/android/launcher3/taskbar/TaskbarViewController;IILandroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p3

    const/4 v0, 0x0

    cmpl-float p3, p3, v0

    if-lez p3, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setTaskbarWindowHeight(I)V

    return-void
.end method

.method public static b(Lcom/android/launcher3/taskbar/TaskbarViewController;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconScaleForStash:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v0, v0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/taskbar/TaskbarViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->updateTranslationY()V

    return-void
.end method

.method public static bridge synthetic d(Lcom/android/launcher3/taskbar/TaskbarViewController;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/android/launcher3/taskbar/TaskbarViewController;)Lcom/android/launcher3/taskbar/TaskbarControllers;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/android/launcher3/taskbar/TaskbarViewController;)Lcom/android/launcher3/taskbar/TaskbarView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    return-object p0
.end method

.method private updateTranslationY()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconTranslationYForHome:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v0, v0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconTranslationYForStash:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v1, v1, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconTranslationYForSwipe:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconTranslationYForSpringOnStash:F

    add-float/2addr v0, v1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public final addOneTimePreDrawListener(Lcom/android/launcher3/taskbar/P0;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-static {p0, p1}, Landroidx/core/view/s;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final addRevealAnimToIsStashed(Landroid/animation/AnimatorSet;ZJLandroid/view/animation/Interpolator;Z)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iget-object v6, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v6, v6, Lcom/android/launcher3/taskbar/TaskbarControllers;->stashedHandleViewController:Lcom/android/launcher3/taskbar/StashedHandleViewController;

    invoke-virtual {v6, v5}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->getStashedHandleBounds(Landroid/graphics/Rect;)V

    iget-object v6, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    int-to-float v9, v7

    div-float/2addr v8, v9

    invoke-virtual {v6}, Lcom/android/launcher3/taskbar/TaskbarView;->getIconTouchSize()I

    move-result v9

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    :goto_0
    if-ltz v10, :cond_a

    invoke-virtual {v6, v10}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v6}, Lcom/android/launcher3/taskbar/TaskbarView;->getQsb()Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    if-ne v12, v13, :cond_0

    move v13, v11

    goto :goto_1

    :cond_0
    move v13, v14

    :goto_1
    new-instance v15, Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v11

    move-object/from16 v16, v6

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-direct {v15, v14, v14, v11, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v15}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    iget v11, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mStashedHandleHeight:I

    const/4 v14, 0x2

    div-int/2addr v11, v14

    sub-int v14, v6, v11

    add-int/2addr v6, v11

    if-eqz v13, :cond_2

    iget-boolean v11, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mIsRtl:Z

    if-eqz v11, :cond_1

    iget v11, v15, Landroid/graphics/Rect;->right:I

    int-to-float v0, v11

    sub-float/2addr v0, v8

    float-to-int v0, v0

    goto :goto_2

    :cond_1
    iget v0, v15, Landroid/graphics/Rect;->left:I

    int-to-float v11, v0

    add-float/2addr v11, v8

    float-to-int v11, v11

    goto :goto_2

    :cond_2
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v8

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v0, v11

    float-to-int v0, v0

    iget v11, v15, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v0

    move/from16 v17, v11

    iget v11, v15, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v0

    move/from16 v0, v17

    :goto_2
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v14, v11, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v0, 0x0

    if-eqz v13, :cond_3

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v6, v11

    goto :goto_3

    :cond_3
    const/high16 v11, 0x40000000    # 2.0f

    move v6, v0

    :goto_3
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v14, v11

    new-instance v11, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;

    invoke-direct {v11, v6, v14, v15, v1}, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;-><init>(FFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v11, v12, v1, v0}, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->b(Landroid/view/View;ZF)Landroid/animation/ValueAnimator;

    move-result-object v1

    if-eqz p6, :cond_4

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getListeners()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v11, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    if-eqz v13, :cond_5

    invoke-virtual {v12}, Landroid/view/View;->getX()F

    move-result v1

    goto :goto_5

    :cond_5
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    :goto_5
    iget v6, v5, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    int-to-float v11, v10

    mul-float/2addr v11, v8

    add-float/2addr v11, v6

    cmpl-float v6, v1, v11

    if-lez v6, :cond_6

    iget v6, v5, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    add-int/lit8 v11, v7, -0x1

    sub-int/2addr v11, v10

    int-to-float v11, v11

    mul-float/2addr v11, v8

    sub-float/2addr v6, v11

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v1, v11

    sub-float/2addr v1, v6

    neg-float v1, v1

    goto :goto_6

    :cond_6
    sub-float v1, v11, v1

    :goto_6
    const/4 v6, 0x1

    if-eqz p2, :cond_7

    new-array v11, v6, [F

    const/4 v13, 0x0

    aput v1, v11, v13

    move-object v14, v11

    const/4 v11, 0x2

    goto :goto_7

    :cond_7
    const/4 v11, 0x2

    const/4 v13, 0x0

    new-array v14, v11, [F

    aput v1, v14, v13

    aput v0, v14, v6

    :goto_7
    if-eqz p2, :cond_8

    new-array v0, v6, [F

    aput v9, v0, v13

    goto :goto_8

    :cond_8
    new-array v1, v11, [F

    aput v9, v1, v13

    aput v0, v1, v6

    move-object v0, v1

    :goto_8
    instance-of v1, v12, Lcom/android/launcher3/Reorderable;

    if-eqz v1, :cond_9

    check-cast v12, Lcom/android/launcher3/Reorderable;

    invoke-interface {v12}, Lcom/android/launcher3/Reorderable;->getTranslateDelegate()Lcom/android/launcher3/util/MultiTranslateDelegate;

    move-result-object v1

    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Lcom/android/launcher3/util/MultiTranslateDelegate;->getTranslationX(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v11

    sget-object v12, Lcom/android/launcher3/util/MultiPropertyFactory;->MULTI_PROPERTY_VALUE:Landroid/util/FloatProperty;

    invoke-static {v11, v12, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v1, v6}, Lcom/android/launcher3/util/MultiTranslateDelegate;->getTranslationY(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v6

    invoke-static {v6, v12, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v0, Lcom/android/launcher3/taskbar/V0;

    const/4 v6, 0x1

    invoke-direct {v0, v6, v1}, Lcom/android/launcher3/taskbar/V0;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/android/launcher3/anim/AnimatorListeners;->forEndCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_9

    :cond_9
    move-object/from16 v1, p1

    const/4 v6, 0x1

    sget-object v11, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_X:Landroid/util/FloatProperty;

    invoke-static {v12, v11, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    sget-object v11, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    invoke-static {v12, v11, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v0, Lcom/android/launcher3/taskbar/V0;

    const/4 v11, 0x2

    invoke-direct {v0, v11, v12}, Lcom/android/launcher3/taskbar/V0;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/android/launcher3/anim/AnimatorListeners;->forEndCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_9
    add-int/lit8 v10, v10, -0x1

    move-object/from16 v0, p0

    move v11, v6

    move-object/from16 v6, v16

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method public final announceForAccessibility$1()V
    .locals 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x40

    goto :goto_0

    :cond_0
    const/16 v0, 0x80

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object p0

    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public final areIconsVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

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

.method public final commitRunningAppsToUI()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mModelCallbacks:Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->commitRunningAppsToUI()V

    return-void
.end method

.method public final dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "TaskbarViewController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ALPHA_INDEX_HOME"

    const-string v3, "ALPHA_INDEX_KEYGUARD"

    const-string v4, "ALPHA_INDEX_STASH"

    const-string v5, "ALPHA_INDEX_RECENTS_DISABLED"

    const-string v6, "ALPHA_INDEX_NOTIFICATION_EXPANDED"

    const-string v7, "ALPHA_INDEX_ASSISTANT_INVOKED"

    const-string v8, "ALPHA_INDEX_IME_BUTTON_NAV"

    const-string v9, "ALPHA_INDEX_SMALL_SCREEN"

    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    const-string v4, "mTaskbarIconAlpha"

    invoke-virtual {v3, v0, p2, v4, v2}, Lcom/android/launcher3/util/MultiPropertyFactory;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {p1, v1}, Ls/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mModelCallbacks:Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final getAllAppsButtonView()Lcom/android/launcher3/views/IconButtonView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarView;->getAllAppsButtonView()Lcom/android/launcher3/views/IconButtonView;

    move-result-object p0

    return-object p0
.end method

.method public final getFirstIconMatch(Ljava/util/function/Predicate;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/android/launcher3/util/ItemInfoMatcher;->a:I

    new-instance v0, Lcom/android/launcher3/util/n;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Lcom/android/launcher3/util/n;-><init>(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    filled-new-array {p1, v0}, [Ljava/util/function/Predicate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarView;->getFirstMatch([Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final getIconLayoutBounds()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarView;->getIconLayoutBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public final getIconViews()[Landroid/view/View;
    .locals 4

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final getTaskbarIconAlpha()Lcom/android/launcher3/util/MultiValueAlpha;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    return-object p0
.end method

.method public final getTaskbarIconScaleForStash()Lcom/android/launcher3/anim/AnimatedFloat;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconScaleForStash:Lcom/android/launcher3/anim/AnimatedFloat;

    return-object p0
.end method

.method public final getTaskbarIconTranslationYForStash()Lcom/android/launcher3/anim/AnimatedFloat;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconTranslationYForStash:Lcom/android/launcher3/anim/AnimatedFloat;

    return-object p0
.end method

.method public final init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .locals 4

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;-><init>(Lcom/android/launcher3/taskbar/TaskbarViewController;)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/taskbar/TaskbarView;->init(Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;)V

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/taskbar/TaskbarManager;->isPhoneMode(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070535

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->taskbarHeight:I

    :goto_0
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconScaleForStash:Lcom/android/launcher3/anim/AnimatedFloat;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/android/launcher3/anim/AnimatedFloat;->updateValue(F)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mModelCallbacks:Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isUserSetupComplete()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/launcher3/LauncherModel;->addCallbacksAndLoad(Lcom/android/launcher3/model/BgDataModel$Callbacks;)Z

    :cond_1
    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->getTaskbarNavButtonTranslationY()Lcom/android/launcher3/anim/AnimatedFloat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarNavButtonTranslationY:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->getTaskbarNavButtonTranslationYForInAppDisplay()Lcom/android/launcher3/anim/AnimatedFloat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarNavButtonTranslationYForInAppDisplay:Lcom/android/launcher3/anim/AnimatedFloat;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mDeviceProfileChangeListener:Lcom/android/launcher3/taskbar/R0;

    invoke-interface {v1, p1}, Lcom/android/launcher3/views/ActivityContext;->addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    sget-boolean p1, Lcom/android/launcher3/taskbar/TaskbarManager;->FLAG_HIDE_NAVBAR_WINDOW:Z

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object p0

    invoke-static {v1}, Lcom/android/launcher3/taskbar/TaskbarManager;->isPhoneButtonNavMode(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v2, 0x0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->animateToValue(F)Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_3
    return-void
.end method

.method public final isEventOverAnyItem(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarView;->isEventOverAnyItem(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    move-object v3, p1

    check-cast v3, Lcom/android/launcher3/taskbar/z0;

    invoke-virtual {v3, v1, v2}, Lcom/android/launcher3/taskbar/z0;->evaluate(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mModelCallbacks:Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherModel;->removeCallbacks(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mDeviceProfileChangeListener:Lcom/android/launcher3/taskbar/R0;

    invoke-interface {v0, p0}, Lcom/android/launcher3/views/ActivityContext;->removeOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->unregisterListeners()V

    return-void
.end method

.method public final onRotationChanged(Lcom/android/launcher3/DeviceProfile;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarUIController;->isIconAlignedWithHotseat()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcom/android/launcher3/DeviceProfile;->taskbarHeight:I

    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->getTaskbarOffsetY()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setTaskbarWindowHeight(I)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarNavButtonTranslationY:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->getTaskbarOffsetY()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/AnimatedFloat;->updateValue(F)V

    return-void
.end method

.method public final setClickAndLongClickListenersForIcon(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarView;->setClickAndLongClickListenersForIcon(Landroid/view/View;)V

    return-void
.end method

.method public final setDeferUpdatesForSUW(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mModelCallbacks:Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->setDeferUpdatesForSUW(Z)V

    return-void
.end method

.method public final setLauncherIconAlignment(FLcom/android/launcher3/DeviceProfile;)V
    .locals 29

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v3, v3, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarUIController;->isHotseatIconOnTopWhenAligned()Z

    move-result v3

    iget-object v4, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v4, v4, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v4}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isStashed()Z

    move-result v4

    iget-object v5, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mIconAlignControllerLazy:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v5, :cond_0

    iget-boolean v5, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mIsHotseatIconOnTopWhenAligned:Z

    if-ne v5, v3, :cond_0

    iget-boolean v5, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mIsStashed:Z

    if-eq v5, v4, :cond_18

    :cond_0
    iput-boolean v3, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mIsHotseatIconOnTopWhenAligned:Z

    iput-boolean v4, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mIsStashed:Z

    new-instance v3, Lcom/android/launcher3/anim/PendingAnimation;

    const-wide/16 v4, 0x64

    invoke-direct {v3, v4, v5}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    iget-object v4, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {v4}, Lcom/android/launcher3/taskbar/TaskbarManager;->isPhoneButtonNavMode(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v2

    goto/16 :goto_e

    :cond_1
    iget-object v5, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mOnControllerPreCreateCallback:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    invoke-virtual {v4}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v5

    invoke-virtual {v2, v4}, Lcom/android/launcher3/DeviceProfile;->getHotseatLayoutPadding(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v14

    iget v8, v2, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v8, v8

    iget v9, v5, Lcom/android/launcher3/DeviceProfile;->taskbarIconSize:I

    int-to-float v9, v9

    div-float v15, v8, v9

    iget v13, v2, Lcom/android/launcher3/DeviceProfile;->hotseatBorderSpace:I

    iget v8, v2, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    iget v9, v14, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    iget v9, v14, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    iget v9, v2, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    add-int/lit8 v10, v9, -0x1

    mul-int/2addr v10, v13

    sub-int/2addr v8, v10

    div-int v12, v8, v9

    iget-object v8, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v8, v8, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    invoke-virtual {v8}, Lcom/android/launcher3/taskbar/TaskbarUIController;->isIconAlignedWithHotseat()Z

    move-result v16

    iget-boolean v8, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mIsHotseatIconOnTopWhenAligned:Z

    if-eqz v8, :cond_2

    sget-object v8, Ly0/e;->m:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_2
    sget-object v8, Ly0/e;->f:Ly0/a;

    :goto_0
    move-object v11, v8

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/DeviceProfile;->getTaskbarOffsetY()I

    move-result v10

    sget-object v9, Lcom/android/launcher3/anim/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    neg-int v8, v10

    int-to-float v8, v8

    iget-object v7, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconTranslationYForHome:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-virtual {v3, v7, v9, v8, v11}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    iget-object v7, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarNavButtonTranslationY:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-virtual {v3, v7, v9, v8, v11}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    iget-object v7, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarNavButtonTranslationYForInAppDisplay:Lcom/android/launcher3/anim/AnimatedFloat;

    int-to-float v8, v10

    invoke-virtual {v3, v7, v9, v8, v11}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    iget-object v7, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/launcher3/Utilities;->isDarkTheme(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mThemedIconsBackgroundProgress:Lcom/android/launcher3/anim/AnimatedFloat;

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    sget-object v19, Ly0/e;->m:Landroid/view/animation/Interpolator;

    move-object/from16 v20, v8

    move-object v8, v3

    move-object/from16 v21, v9

    move-object/from16 v9, v20

    move/from16 v20, v10

    move-object/from16 v10, v21

    move-object/from16 v21, v11

    move/from16 v11, v17

    move/from16 v22, v12

    move/from16 v12, v18

    move/from16 v17, v13

    move-object/from16 v13, v19

    invoke-virtual/range {v8 .. v13}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    goto :goto_1

    :cond_3
    move/from16 v20, v10

    move-object/from16 v21, v11

    move/from16 v22, v12

    move/from16 v17, v13

    :goto_1
    invoke-virtual {v4}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDefaultTaskbarWindowHeight()I

    move-result v8

    iget v9, v5, Lcom/android/launcher3/DeviceProfile;->taskbarHeight:I

    add-int v9, v9, v20

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    new-instance v10, Lcom/android/launcher3/taskbar/T0;

    invoke-direct {v10, v0, v9, v8}, Lcom/android/launcher3/taskbar/T0;-><init>(Lcom/android/launcher3/taskbar/TaskbarViewController;II)V

    invoke-virtual {v3, v10}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addOnFrameListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v12, 0x0

    :goto_2
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v8

    if-ge v12, v8, :cond_17

    invoke-virtual {v7, v12}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v7}, Lcom/android/launcher3/taskbar/TaskbarView;->getAllAppsButtonView()Lcom/android/launcher3/views/IconButtonView;

    move-result-object v8

    const/4 v9, 0x1

    if-ne v11, v8, :cond_4

    move v8, v9

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    :goto_3
    invoke-virtual {v7}, Lcom/android/launcher3/taskbar/TaskbarView;->getTaskbarDividerView()Lcom/android/launcher3/views/IconButtonView;

    move-result-object v10

    if-ne v11, v10, :cond_5

    goto :goto_4

    :cond_5
    const/4 v9, 0x0

    :goto_4
    iget-boolean v10, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mIsHotseatIconOnTopWhenAligned:Z

    move/from16 v18, v12

    const v12, 0x3f570a3d    # 0.84f

    if-nez v10, :cond_6

    sget-object v9, Ly0/e;->m:Landroid/view/animation/Interpolator;

    const v10, 0x3f4ccccd    # 0.8f

    invoke-static {v10, v6, v9}, Ly0/e;->b(FFLandroid/view/animation/Interpolator;)Ly0/b;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v3, v11, v10, v9}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    goto :goto_6

    :cond_6
    if-eqz v8, :cond_7

    sget-object v10, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_ALL_APPS_BUTTON_IN_HOTSEAT:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v10}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v10

    if-eqz v10, :cond_8

    :cond_7
    if-eqz v9, :cond_b

    sget-object v9, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_TASKBAR_PINNING:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v9}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v9

    if-eqz v9, :cond_b

    :cond_8
    if-nez v16, :cond_9

    iget-boolean v9, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mIsHotseatIconOnTopWhenAligned:Z

    if-eqz v9, :cond_9

    iget-boolean v9, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mIsStashed:Z

    if-eqz v9, :cond_9

    sget-object v9, Ly0/e;->m:Landroid/view/animation/Interpolator;

    const/4 v10, 0x0

    invoke-static {v10, v10, v9}, Ly0/e;->b(FFLandroid/view/animation/Interpolator;)Ly0/b;

    move-result-object v9

    invoke-virtual {v3, v11, v10, v9}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    goto :goto_6

    :cond_9
    const/4 v10, 0x0

    if-eqz v16, :cond_a

    sget-object v9, Ly0/e;->m:Landroid/view/animation/Interpolator;

    const v13, 0x3e2e147b    # 0.17f

    invoke-static {v10, v13, v9}, Ly0/e;->b(FFLandroid/view/animation/Interpolator;)Ly0/b;

    move-result-object v9

    goto :goto_5

    :cond_a
    sget-object v9, Ly0/e;->m:Landroid/view/animation/Interpolator;

    const v13, 0x3f3851ec    # 0.72f

    invoke-static {v13, v12, v9}, Ly0/e;->b(FFLandroid/view/animation/Interpolator;)Ly0/b;

    move-result-object v9

    :goto_5
    invoke-virtual {v3, v11, v10, v9}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    :cond_b
    :goto_6
    invoke-virtual {v7}, Lcom/android/launcher3/taskbar/TaskbarView;->getQsb()Landroid/view/View;

    move-result-object v9

    const/4 v13, 0x3

    iget v10, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarBottomMargin:I

    const/high16 v20, 0x40000000    # 2.0f

    if-ne v11, v9, :cond_12

    invoke-virtual {v11}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v23

    if-eqz v23, :cond_c

    iget v8, v2, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v9, v14, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    add-int v8, v8, v17

    int-to-float v8, v8

    iget v9, v2, Lcom/android/launcher3/DeviceProfile;->hotseatQsbWidth:I

    int-to-float v9, v9

    div-float v9, v9, v20

    add-float/2addr v9, v8

    goto :goto_7

    :cond_c
    iget v8, v14, Landroid/graphics/Rect;->left:I

    sub-int v8, v8, v17

    int-to-float v8, v8

    iget v9, v2, Lcom/android/launcher3/DeviceProfile;->hotseatQsbWidth:I

    int-to-float v9, v9

    div-float v9, v9, v20

    sub-float v9, v8, v9

    :goto_7
    move/from16 v24, v9

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v9

    add-int/2addr v9, v8

    int-to-float v8, v9

    div-float v25, v8, v20

    iget v8, v2, Lcom/android/launcher3/DeviceProfile;->hotseatQsbWidth:I

    iget v9, v5, Lcom/android/launcher3/DeviceProfile;->taskbarIconSize:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    div-float v8, v8, v20

    int-to-float v9, v9

    iget v12, v2, Lcom/android/launcher3/DeviceProfile;->hotseatQsbVisualHeight:I

    int-to-float v12, v12

    div-float v12, v9, v12

    sget-object v20, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    const/high16 v26, 0x3f800000    # 1.0f

    move v9, v8

    move-object v8, v3

    move v6, v9

    move-object v9, v11

    move v2, v10

    move-object/from16 v10, v20

    move-object/from16 v27, v7

    move-object v7, v11

    move v11, v12

    const v1, 0x3f570a3d    # 0.84f

    move/from16 v12, v26

    move v1, v13

    move-object/from16 v13, v21

    invoke-virtual/range {v8 .. v13}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    if-eqz v23, :cond_d

    neg-float v6, v6

    :cond_d
    move v11, v6

    sub-float v12, v24, v25

    instance-of v6, v7, Lcom/android/launcher3/Reorderable;

    if-eqz v6, :cond_e

    move-object v6, v7

    check-cast v6, Lcom/android/launcher3/Reorderable;

    invoke-interface {v6}, Lcom/android/launcher3/Reorderable;->getTranslateDelegate()Lcom/android/launcher3/util/MultiTranslateDelegate;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/launcher3/util/MultiTranslateDelegate;->getTranslationX(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v9

    sget-object v13, Lcom/android/launcher3/util/MultiPropertyFactory;->MULTI_PROPERTY_VALUE:Landroid/util/FloatProperty;

    move-object v8, v3

    move-object v10, v13

    move-object/from16 v28, v13

    move-object/from16 v13, v21

    invoke-virtual/range {v8 .. v13}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    invoke-virtual {v6, v1}, Lcom/android/launcher3/util/MultiTranslateDelegate;->getTranslationY(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v1

    int-to-float v2, v2

    move-object/from16 v6, v21

    move-object/from16 v8, v28

    invoke-virtual {v3, v1, v8, v2, v6}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    goto :goto_8

    :cond_e
    move-object/from16 v6, v21

    sget-object v10, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_X:Landroid/util/FloatProperty;

    move-object v8, v3

    move-object v9, v7

    move-object v13, v6

    invoke-virtual/range {v8 .. v13}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    int-to-float v2, v2

    invoke-virtual {v3, v7, v1, v2, v6}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    :goto_8
    iget-boolean v1, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mIsHotseatIconOnTopWhenAligned:Z

    if-eqz v1, :cond_11

    sget-object v10, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_ALPHA:Landroid/util/FloatProperty;

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    if-eqz v16, :cond_f

    sget-object v1, Ly0/e;->m:Landroid/view/animation/Interpolator;

    const v2, 0x3eb33333    # 0.35f

    const/4 v8, 0x0

    invoke-static {v8, v2, v1}, Ly0/e;->b(FFLandroid/view/animation/Interpolator;)Ly0/b;

    move-result-object v1

    :goto_9
    move-object v13, v1

    goto :goto_a

    :cond_f
    const/4 v8, 0x0

    invoke-virtual {v4}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isQsbInline:Z

    if-eqz v1, :cond_10

    sget-object v1, Ly0/e;->m:Landroid/view/animation/Interpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v8, v2, v1}, Ly0/e;->b(FFLandroid/view/animation/Interpolator;)Ly0/b;

    move-result-object v1

    goto :goto_9

    :cond_10
    const/high16 v2, 0x3f800000    # 1.0f

    sget-object v1, Ly0/e;->m:Landroid/view/animation/Interpolator;

    const v8, 0x3f570a3d    # 0.84f

    invoke-static {v8, v2, v1}, Ly0/e;->b(FFLandroid/view/animation/Interpolator;)Ly0/b;

    move-result-object v1

    goto :goto_9

    :goto_a
    move-object v8, v3

    move-object v9, v7

    invoke-virtual/range {v8 .. v13}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    :cond_11
    new-instance v1, Lcom/android/launcher3/taskbar/U0;

    invoke-direct {v1, v7}, Lcom/android/launcher3/taskbar/U0;-><init>(Landroid/view/View;)V

    invoke-virtual {v3, v1}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addOnFrameListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move/from16 v10, v22

    goto/16 :goto_d

    :cond_12
    move-object/from16 v27, v7

    move v2, v10

    move-object v7, v11

    move v1, v13

    move-object/from16 v6, v21

    if-eqz v8, :cond_14

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v8

    if-eqz v8, :cond_13

    iget v8, v5, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    goto :goto_b

    :cond_13
    const/4 v8, -0x1

    goto :goto_b

    :cond_14
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v8, :cond_16

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/model/data/ItemInfo;

    iget v8, v8, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    :goto_b
    iget v9, v14, Landroid/graphics/Rect;->left:I

    move/from16 v10, v22

    add-int v12, v10, v17

    mul-int/2addr v12, v8

    add-int/2addr v12, v9

    int-to-float v8, v12

    int-to-float v9, v10

    div-float v9, v9, v20

    add-float/2addr v9, v8

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v11

    add-int/2addr v11, v8

    int-to-float v8, v11

    div-float v8, v8, v20

    sub-float/2addr v9, v8

    instance-of v8, v7, Lcom/android/launcher3/Reorderable;

    if-eqz v8, :cond_15

    move-object v11, v7

    check-cast v11, Lcom/android/launcher3/Reorderable;

    invoke-interface {v11}, Lcom/android/launcher3/Reorderable;->getTranslateDelegate()Lcom/android/launcher3/util/MultiTranslateDelegate;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/android/launcher3/util/MultiTranslateDelegate;->getTranslationX(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v11

    sget-object v12, Lcom/android/launcher3/util/MultiPropertyFactory;->MULTI_PROPERTY_VALUE:Landroid/util/FloatProperty;

    invoke-virtual {v3, v11, v12, v9, v6}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    invoke-virtual {v8, v1}, Lcom/android/launcher3/util/MultiTranslateDelegate;->getTranslationY(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v1

    int-to-float v2, v2

    invoke-virtual {v3, v1, v12, v2, v6}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    goto :goto_c

    :cond_15
    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_X:Landroid/util/FloatProperty;

    invoke-virtual {v3, v7, v1, v9, v6}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    int-to-float v2, v2

    invoke-virtual {v3, v7, v1, v2, v6}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    :goto_c
    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    invoke-virtual {v3, v7, v1, v15, v6}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    goto :goto_d

    :cond_16
    move/from16 v10, v22

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported view found in createIconAlignmentController, v="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TaskbarViewController"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    add-int/lit8 v12, v18, 0x1

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v21, v6

    move/from16 v22, v10

    move-object/from16 v7, v27

    const/high16 v6, 0x3f800000    # 1.0f

    goto/16 :goto_2

    :cond_17
    invoke-virtual {v3}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v2

    new-instance v1, Lcom/android/launcher3/taskbar/V0;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lcom/android/launcher3/taskbar/V0;-><init>(ILjava/lang/Object;)V

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mOnControllerPreCreateCallback:Ljava/lang/Runnable;

    :goto_e
    iput-object v2, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mIconAlignControllerLazy:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    :cond_18
    iget-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mIconAlignControllerLazy:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    const/4 v1, 0x0

    cmpg-float v1, v2, v1

    if-lez v1, :cond_19

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_1a

    :cond_19
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mIconAlignControllerLazy:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    :cond_1a
    return-void
.end method

.method public final setRecentsButtonDisabled(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object p0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->setValue(F)V

    return-void
.end method

.method public final setTranslationYForStash(F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconTranslationYForSpringOnStash:F

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->updateTranslationY()V

    return-void
.end method

.method public final setTranslationYForSwipe(F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconTranslationYForSwipe:F

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->updateTranslationY()V

    return-void
.end method

.method public final updateIconsBackground()V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mThemedIconsBackgroundProgress:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v0, v0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mLauncherThemedIconsBackgroundColor:I

    iget v2, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarThemedIconsBackgroundColor:I

    invoke-static {v1, v2, v0}, LE/a;->d(IIF)I

    move-result v0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    new-array v2, v1, [Landroid/view/View;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v3, v1, :cond_2

    aget-object p0, v2, v3

    instance-of v4, p0, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;

    if-eqz v4, :cond_1

    check-cast p0, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getIcon()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getIcon()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher3/icons/ThemedIconDrawable;

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getIcon()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/icons/ThemedIconDrawable;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/icons/ThemedIconDrawable;->changeBackgroundColor(I)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final updateRunningApps()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mModelCallbacks:Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->updateRunningApps()V

    return-void
.end method
