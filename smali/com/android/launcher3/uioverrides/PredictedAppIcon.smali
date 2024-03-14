.class public Lcom/android/launcher3/uioverrides/PredictedAppIcon;
.super Lcom/android/launcher3/views/DoubleShadowBubbleTextView;
.source "SourceFile"


# static fields
.field private static final SLOT_MACHINE_TRANSLATION_Y:Landroid/util/FloatProperty;

.field public static final synthetic d:I


# instance fields
.field private final mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

.field mDrawForDrag:Z

.field private final mIconRingPaint:Landroid/graphics/Paint;

.field mIsDrawingDot:Z

.field private mIsPinned:Z

.field private final mNormalizedIconSize:I

.field private mPlateColor:I

.field private final mRingPath:Landroid/graphics/Path;

.field private final mShadowFilter:Landroid/graphics/BlurMaskFilter;

.field private final mShapePath:Landroid/graphics/Path;

.field private mSlotMachineAnim:Landroid/animation/Animator;

.field private mSlotMachineIconTranslationY:F

.field private mSlotMachineIcons:Ljava/util/List;

.field private final mTmpMatrix:Landroid/graphics/Matrix;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/uioverrides/PredictedAppIcon$1;

    invoke-direct {v0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->SLOT_MACHINE_TRANSLATION_Y:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mIsDrawingDot:Z

    .line 5
    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mIconRingPaint:Landroid/graphics/Paint;

    .line 6
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mRingPath:Landroid/graphics/Path;

    .line 7
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    iput-object p3, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 8
    iput-boolean p2, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mIsPinned:Z

    .line 9
    iput-boolean p2, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mDrawForDrag:Z

    .line 10
    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p2}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 11
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getIconSize()I

    move-result p2

    invoke-static {p2}, Lcom/android/launcher3/icons/IconNormalizer;->getNormalizedCircleSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mNormalizedIconSize:I

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0700af

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 13
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    int-to-float p3, p3

    sget-object v1, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, p3, v1}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mShadowFilter:Landroid/graphics/BlurMaskFilter;

    .line 14
    invoke-static {p2, p1}, Lcom/android/launcher3/icons/GraphicsUtils;->getShapePath(ILandroid/content/Context;)Landroid/graphics/Path;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mShapePath:Landroid/graphics/Path;

    return-void
.end method

.method public static createIcon(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Lcom/android/launcher3/uioverrides/PredictedAppIcon;
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00ce

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;

    invoke-virtual {v0, v2, p1, v2}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->applyFromWorkspaceItem(ILcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->getItemOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getFocusHandler()Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-object v0
.end method

.method private getOutlineOffsetY()I
    .locals 2

    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mDisplay:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->folderIconOffsetYPx:I

    add-int/2addr v0, p0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget p0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mNormalizedIconSize:I

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static synthetic o(Lcom/android/launcher3/uioverrides/PredictedAppIcon;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mSlotMachineIcons:Ljava/util/List;

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mSlotMachineAnim:Landroid/animation/Animator;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mSlotMachineIconTranslationY:F

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public static synthetic p(Lcom/android/launcher3/uioverrides/PredictedAppIcon;Lcom/android/launcher3/icons/BitmapInfo;)Lcom/android/launcher3/icons/FastBitmapDrawable;
    .locals 1

    iget-object p0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p0}, Lcom/android/launcher3/icons/BitmapInfo;->newIcon(ILandroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Lcom/android/launcher3/uioverrides/PredictedAppIcon;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mPlateColor:I

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public static bridge synthetic r(Lcom/android/launcher3/uioverrides/PredictedAppIcon;)Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mShapePath:Landroid/graphics/Path;

    return-object p0
.end method

.method public static bridge synthetic s(Lcom/android/launcher3/uioverrides/PredictedAppIcon;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mSlotMachineIconTranslationY:F

    return p0
.end method

.method public static bridge synthetic t(Lcom/android/launcher3/uioverrides/PredictedAppIcon;F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mSlotMachineIconTranslationY:F

    return-void
.end method

.method public static u(Lcom/android/launcher3/uioverrides/PredictedAppIcon;)I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget p0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mNormalizedIconSize:I

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private updateRingPath()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    iget-object v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mRingPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mNormalizedIconSize:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->getOutlineOffsetY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mRingPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mShapePath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mNormalizedIconSize:I

    int-to-float v0, v0

    const v1, 0x3dc28f5c    # 0.095f

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getIconSize()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f4f5c29    # 0.81f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sget v2, Lcom/android/launcher3/icons/BaseIconFactory;->d:I

    const v2, 0x3ee353f8    # 0.444f

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mNormalizedIconSize:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    iget-object v2, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mTmpMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mNormalizedIconSize:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mRingPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mShapePath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    :cond_2
    return-void
.end method

.method public static bridge synthetic v(Lcom/android/launcher3/uioverrides/PredictedAppIcon;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->getOutlineOffsetY()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final applyFromWorkspaceItem(ILcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    iget-object v2, p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mIsPinned:Z

    if-nez v3, :cond_2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mSlotMachineAnim:Landroid/animation/Animator;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/animation/Animator;->end()V

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v0

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mSlotMachineIcons:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getIcon()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lb1/b;

    invoke-direct {v3, p0}, Lb1/b;-><init>(Lcom/android/launcher3/uioverrides/PredictedAppIcon;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mSlotMachineIcons:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lb1/c;

    invoke-direct {v4, v3}, Lb1/c;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getIconSize()I

    move-result v2

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->getOutlineOffsetY()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    neg-float v2, v2

    iget-object v3, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mSlotMachineIcons:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v3, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->getOutlineOffsetY()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float v5, v2, v5

    const v6, 0x3f51eb85    # 0.82f

    invoke-static {v6, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    filled-new-array {v3, v5, v2}, [Landroid/animation/Keyframe;

    move-result-object v2

    aget-object v3, v2, v4

    sget-object v4, Ly0/e;->y:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    aget-object v3, v2, v0

    invoke-virtual {v3, v4}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v3, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->SLOT_MACHINE_TRANSLATION_Y:Landroid/util/FloatProperty;

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    filled-new-array {v2}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mSlotMachineAnim:Landroid/animation/Animator;

    new-instance v3, Lb1/d;

    invoke-direct {v3, p0}, Lb1/d;-><init>(Lcom/android/launcher3/uioverrides/PredictedAppIcon;)V

    invoke-static {v3}, Lcom/android/launcher3/anim/AnimatorListeners;->forEndCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mSlotMachineAnim:Landroid/animation/Animator;

    goto :goto_1

    :cond_2
    :goto_0
    move-object v2, v1

    :goto_1
    invoke-virtual {p0, p2, v1}, Lcom/android/launcher3/BubbleTextView;->applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/graphics/PreloadIconDrawable;)V

    iget v3, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mPlateColor:I

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getIcon()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/icons/FastBitmapDrawable;->isThemed()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_2

    :cond_3
    const/4 v4, 0x3

    new-array v4, v4, [F

    iget-object v5, p0, Lcom/android/launcher3/BubbleTextView;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    iget v5, v5, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->appColor:I

    sget-object v6, LE/a;->a:Ljava/lang/ThreadLocal;

    sget-object v6, LD/p;->k:LD/p;

    invoke-static {v5, v6, v1, v4}, LD/a;->b(ILD/p;[F[F)V

    invoke-static {v5}, LD/b;->b(I)F

    move-result v1

    aput v1, v4, v0

    const/4 v0, 0x0

    aget v0, v4, v0

    const/high16 v1, 0x42100000    # 36.0f

    const/high16 v4, 0x42aa0000    # 85.0f

    invoke-static {v0, v1, v4}, LD/a;->d(FFF)I

    move-result v0

    :goto_2
    if-nez p3, :cond_4

    iput v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mPlateColor:I

    :cond_4
    iget-boolean v1, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mIsPinned:Z

    if-eqz v1, :cond_5

    iget-object p2, p2, Lcom/android/launcher3/model/data/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p2, p2, Lcom/android/launcher3/model/data/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const v4, 0x7f1300ec

    invoke-virtual {v1, v4, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_3
    if-eqz p3, :cond_7

    new-instance p2, Landroid/animation/ArgbEvaluator;

    invoke-direct {p2}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p3, v0}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p2

    new-instance p3, Lb1/a;

    invoke-direct {p3, p0}, Lb1/a;-><init>(Lcom/android/launcher3/uioverrides/PredictedAppIcon;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    if-eqz v2, :cond_6

    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_6
    invoke-virtual {p0, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    int-to-long p1, p1

    const-wide/16 v0, 0x32

    mul-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const-wide/16 p1, 0x168

    invoke-virtual {p0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_7
    return-void
.end method

.method public final drawDotIfNecessary(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mIsDrawingDot:Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    const v2, 0x3dc28f5c    # 0.095f

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const v1, 0x3f9851ec    # 1.19f

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-super {p0, p1}, Lcom/android/launcher3/BubbleTextView;->drawDotIfNecessary(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mIsDrawingDot:Z

    return-void
.end method

.method public final getIconBounds(Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/launcher3/BubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mIsPinned:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mIsDrawingDot:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getIconSize()I

    move-result p0

    int-to-float p0, p0

    const v0, 0x3dc28f5c    # 0.095f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    invoke-virtual {p1, p0, p0}, Landroid/graphics/Rect;->inset(II)V

    :cond_0
    return-void
.end method

.method public final getSourceVisualDragBounds(Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/launcher3/BubbleTextView;->getSourceVisualDragBounds(Landroid/graphics/Rect;)V

    iget-boolean p0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mIsPinned:Z

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    const v0, 0x3dc28f5c    # 0.095f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    invoke-virtual {p1, p0, p0}, Landroid/graphics/Rect;->inset(II)V

    :cond_0
    return-void
.end method

.method public final isPinned()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mIsPinned:Z

    return p0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mSlotMachineAnim:Landroid/animation/Animator;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-boolean v3, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mIsPinned:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mDrawForDrag:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mIconRingPaint:Landroid/graphics/Paint;

    const/high16 v4, -0x67000000

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mIconRingPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mShadowFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    iget-object v3, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mRingPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mIconRingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v3, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mIconRingPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mPlateColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mIconRingPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    iget-object v3, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mRingPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mIconRingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_1
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mRingPath:Landroid/graphics/Path;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3dc28f5c    # 0.095f

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    const v3, 0x3f4f5c29    # 0.81f

    invoke-virtual {p1, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getIconSize()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getIconSize()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v3

    iget v3, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mSlotMachineIconTranslationY:F

    add-float/2addr v4, v3

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mSlotMachineIcons:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getIconSize()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getIconSize()I

    move-result v5

    invoke-virtual {v3, v2, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getIconSize()I

    move-result v3

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->getOutlineOffsetY()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_2

    :cond_4
    invoke-super {p0, p1}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->onDraw(Landroid/graphics/Canvas;)V

    :cond_5
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/BubbleTextView;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->updateRingPath()V

    return-void
.end method

.method public final pin(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mIsPinned:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mIsPinned:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v1}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->applyFromWorkspaceItem(ILcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    sget-object p1, Lcom/android/launcher3/touch/ItemLongClickListener;->INSTANCE_WORKSPACE:Lcom/android/launcher3/touch/j;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    iput-boolean v0, p1, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->canReorder:Z

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public final prepareDrawDragView()Lcom/android/launcher3/util/SafeCloseable;
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mDrawForDrag:Z

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    invoke-super {p0}, Lcom/android/launcher3/BubbleTextView;->prepareDrawDragView()Lcom/android/launcher3/util/SafeCloseable;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/uioverrides/b;

    check-cast v0, Lcom/android/launcher3/k;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/uioverrides/b;-><init>(Lcom/android/launcher3/uioverrides/PredictedAppIcon;Lcom/android/launcher3/k;)V

    return-object v1
.end method

.method public final setIconDisabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/launcher3/BubbleTextView;->setIconDisabled(Z)V

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mIconRingPaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getDisabledColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public final setItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->isDisabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->setIconDisabled(Z)V

    return-void
.end method

.method public final setTag(Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->updateRingPath()V

    return-void
.end method
