.class public Lcom/android/launcher3/DropTargetBar;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;
.implements Lcom/android/launcher3/Insettable;


# static fields
.field protected static final DEFAULT_INTERPOLATOR:Landroid/animation/TimeInterpolator;


# instance fields
.field private mCurrentAnimation:Landroid/view/ViewPropertyAnimator;

.field protected mDeferOnDragEnd:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private mDropTargets:[Lcom/android/launcher3/ButtonDropTarget;

.field private final mFadeAnimationEndRunnable:Lcom/android/launcher3/u;

.field private mIsVertical:Z

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private mTempTargets:[Lcom/android/launcher3/ButtonDropTarget;

.field protected mVisible:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Ly0/e;->u:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/launcher3/DropTargetBar;->DEFAULT_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p2, Lcom/android/launcher3/u;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/launcher3/u;-><init>(Lcom/android/launcher3/DropTargetBar;I)V

    iput-object p2, p0, Lcom/android/launcher3/DropTargetBar;->mFadeAnimationEndRunnable:Lcom/android/launcher3/u;

    .line 3
    iput-boolean v0, p0, Lcom/android/launcher3/DropTargetBar;->mVisible:Z

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Lcom/android/launcher3/DropTargetBar;->mIsVertical:Z

    .line 5
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/DropTargetBar;->mLauncher:Lcom/android/launcher3/Launcher;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 7
    new-instance p2, Lcom/android/launcher3/u;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lcom/android/launcher3/u;-><init>(Lcom/android/launcher3/DropTargetBar;I)V

    iput-object p2, p0, Lcom/android/launcher3/DropTargetBar;->mFadeAnimationEndRunnable:Lcom/android/launcher3/u;

    const/4 p2, 0x0

    .line 8
    iput-boolean p2, p0, Lcom/android/launcher3/DropTargetBar;->mVisible:Z

    .line 9
    iput-boolean p3, p0, Lcom/android/launcher3/DropTargetBar;->mIsVertical:Z

    .line 10
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/DropTargetBar;->mLauncher:Lcom/android/launcher3/Launcher;

    return-void
.end method


# virtual methods
.method public final animateToVisibility(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/DropTargetBar;->mVisible:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lcom/android/launcher3/DropTargetBar;->mVisible:Z

    iget-object p1, p0, Lcom/android/launcher3/DropTargetBar;->mCurrentAnimation:Landroid/view/ViewPropertyAnimator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/DropTargetBar;->mCurrentAnimation:Landroid/view/ViewPropertyAnimator;

    :cond_0
    iget-boolean p1, p0, Lcom/android/launcher3/DropTargetBar;->mVisible:Z

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/DropTargetBar;->DEFAULT_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xaf

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/DropTargetBar;->mFadeAnimationEndRunnable:Lcom/android/launcher3/u;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/DropTargetBar;->mCurrentAnimation:Landroid/view/ViewPropertyAnimator;

    :cond_2
    return-void
.end method

.method public final getDropTargets()[Lcom/android/launcher3/ButtonDropTarget;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/DropTargetBar;->mDropTargets:[Lcom/android/launcher3/ButtonDropTarget;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Lcom/android/launcher3/ButtonDropTarget;

    :goto_0
    return-object p0
.end method

.method public final onDragEnd()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/DropTargetBar;->mDeferOnDragEnd:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/DropTargetBar;->animateToVisibility(Z)V

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher3/DropTargetBar;->mDeferOnDragEnd:Z

    :goto_0
    return-void
.end method

.method public final onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/DropTargetBar;->animateToVisibility(Z)V

    return-void
.end method

.method public final onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    new-array v0, v0, [Lcom/android/launcher3/ButtonDropTarget;

    iput-object v0, p0, Lcom/android/launcher3/DropTargetBar;->mDropTargets:[Lcom/android/launcher3/ButtonDropTarget;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/DropTargetBar;->mDropTargets:[Lcom/android/launcher3/ButtonDropTarget;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/ButtonDropTarget;

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/android/launcher3/DropTargetBar;->mDropTargets:[Lcom/android/launcher3/ButtonDropTarget;

    aget-object v1, v1, v0

    iput-object p0, v1, Lcom/android/launcher3/ButtonDropTarget;->mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    new-array v0, v0, [Lcom/android/launcher3/ButtonDropTarget;

    iput-object v0, p0, Lcom/android/launcher3/DropTargetBar;->mTempTargets:[Lcom/android/launcher3/ButtonDropTarget;

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 7

    iget-object p1, p0, Lcom/android/launcher3/DropTargetBar;->mTempTargets:[Lcom/android/launcher3/ButtonDropTarget;

    iget-object p3, p0, Lcom/android/launcher3/DropTargetBar;->mDropTargets:[Lcom/android/launcher3/ButtonDropTarget;

    array-length p5, p3

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p5, :cond_1

    aget-object v3, p3, v1

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    aput-object v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/android/launcher3/DropTargetBar;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p1

    iget-object p3, p0, Lcom/android/launcher3/DropTargetBar;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, p3}, Lcom/android/launcher3/DeviceProfile;->getWorkspaceSpringLoadScale(Landroid/content/Context;)F

    move-result p3

    iget-object p5, p0, Lcom/android/launcher3/DropTargetBar;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p5, p5, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x2

    iget-boolean v3, p1, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v3, :cond_3

    sub-int/2addr p4, p2

    div-int/2addr p4, v1

    goto :goto_1

    :cond_3
    invoke-virtual {p5}, Landroid/view/ViewGroup;->getLeft()I

    move-result p4

    invoke-virtual {p5}, Landroid/view/ViewGroup;->getRight()I

    move-result p5

    add-int/2addr p5, p4

    div-int/2addr p5, v1

    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object p4

    iget p4, p4, Landroid/graphics/Rect;->left:I

    iget-object v4, p1, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr p4, v5

    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    sub-int/2addr v6, v5

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v4

    add-int/2addr v6, p4

    div-int/2addr v6, v1

    sub-int/2addr v6, p5

    int-to-float p4, v6

    mul-float/2addr p4, p3

    float-to-int p4, p4

    add-int/2addr p5, p4

    sub-int p4, p5, p2

    :goto_1
    const/4 p2, 0x1

    if-ne v2, p2, :cond_4

    iget-object p0, p0, Lcom/android/launcher3/DropTargetBar;->mTempTargets:[Lcom/android/launcher3/ButtonDropTarget;

    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    div-int/2addr p1, v1

    sub-int p1, p4, p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    div-int/2addr p2, v1

    add-int/2addr p2, p4

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p3

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/widget/TextView;->layout(IIII)V

    goto :goto_2

    :cond_4
    if-ne v2, v1, :cond_6

    iget p5, p1, Lcom/android/launcher3/DeviceProfile;->dropTargetGapPx:I

    iget-object p0, p0, Lcom/android/launcher3/DropTargetBar;->mTempTargets:[Lcom/android/launcher3/ButtonDropTarget;

    aget-object v2, p0, v0

    aget-object p0, p0, p2

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    sub-int p1, p4, p1

    div-int/2addr p5, v1

    sub-int/2addr p1, p5

    sub-int p2, p4, p5

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p3

    invoke-virtual {v2, p1, v0, p2, p3}, Landroid/widget/TextView;->layout(IIII)V

    add-int/2addr p4, p5

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p1, p4

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p4, v0, p1, p2}, Landroid/widget/TextView;->layout(IIII)V

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->getCellLayoutWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p3

    float-to-int p1, p1

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p3

    sub-int v3, p1, p2

    sub-int/2addr v3, p3

    sub-int/2addr v3, p5

    div-int/2addr p1, v1

    sub-int/2addr p4, p1

    div-int/2addr v3, v1

    add-int/2addr v3, p4

    add-int/2addr p2, v3

    add-int/2addr p5, p2

    add-int/2addr p3, p5

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {v2, v3, v0, p2, p1}, Landroid/widget/TextView;->layout(IIII)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0, p5, v0, p3, p1}, Landroid/widget/TextView;->layout(IIII)V

    :cond_6
    :goto_2
    return-void
.end method

.method public final onMeasure(II)V
    .locals 16

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v4, v0, Lcom/android/launcher3/DropTargetBar;->mTempTargets:[Lcom/android/launcher3/ButtonDropTarget;

    iget-object v5, v0, Lcom/android/launcher3/DropTargetBar;->mDropTargets:[Lcom/android/launcher3/ButtonDropTarget;

    array-length v6, v5

    const/4 v7, 0x0

    move v8, v7

    move v9, v8

    :goto_0
    if-ge v8, v6, :cond_1

    aget-object v10, v5, v8

    invoke-virtual {v10}, Landroid/widget/TextView;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_0

    aput-object v10, v4, v9

    add-int/lit8 v9, v9, 0x1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    const/high16 v5, -0x80000000

    if-ne v9, v4, :cond_2

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget-object v6, v0, Lcom/android/launcher3/DropTargetBar;->mTempTargets:[Lcom/android/launcher3/ButtonDropTarget;

    aget-object v6, v6, v7

    iget-object v8, v0, Lcom/android/launcher3/DropTargetBar;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v8

    iget v8, v8, Lcom/android/launcher3/DeviceProfile;->dropTargetTextSizePx:I

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v6, v4}, Lcom/android/launcher3/ButtonDropTarget;->setTextVisible(Z)V

    invoke-virtual {v6, v4}, Lcom/android/launcher3/ButtonDropTarget;->setIconVisible(Z)V

    invoke-virtual {v6, v5, v3}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {v6}, Lcom/android/launcher3/ButtonDropTarget;->resizeTextToFit()F

    goto/16 :goto_2

    :cond_2
    const/4 v6, 0x2

    if-ne v9, v6, :cond_8

    iget-object v8, v0, Lcom/android/launcher3/DropTargetBar;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v8

    iget v9, v8, Lcom/android/launcher3/DeviceProfile;->dropTargetVerticalPaddingPx:I

    iget v10, v8, Lcom/android/launcher3/DeviceProfile;->dropTargetHorizontalPaddingPx:I

    iget-object v11, v0, Lcom/android/launcher3/DropTargetBar;->mTempTargets:[Lcom/android/launcher3/ButtonDropTarget;

    aget-object v11, v11, v7

    iget v12, v8, Lcom/android/launcher3/DeviceProfile;->dropTargetTextSizePx:I

    int-to-float v12, v12

    invoke-virtual {v11, v7, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v11, v4}, Lcom/android/launcher3/ButtonDropTarget;->setTextVisible(Z)V

    invoke-virtual {v11, v4}, Lcom/android/launcher3/ButtonDropTarget;->setIconVisible(Z)V

    invoke-virtual {v11, v7}, Lcom/android/launcher3/ButtonDropTarget;->setTextMultiLine(Z)V

    invoke-virtual {v11, v10, v9, v10, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v12, v0, Lcom/android/launcher3/DropTargetBar;->mTempTargets:[Lcom/android/launcher3/ButtonDropTarget;

    aget-object v12, v12, v4

    iget v13, v8, Lcom/android/launcher3/DeviceProfile;->dropTargetTextSizePx:I

    int-to-float v13, v13

    invoke-virtual {v12, v7, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v12, v4}, Lcom/android/launcher3/ButtonDropTarget;->setTextVisible(Z)V

    invoke-virtual {v12, v4}, Lcom/android/launcher3/ButtonDropTarget;->setIconVisible(Z)V

    invoke-virtual {v12, v7}, Lcom/android/launcher3/ButtonDropTarget;->setTextMultiLine(Z)V

    invoke-virtual {v12, v10, v9, v10, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    iget v13, v8, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    iget-boolean v14, v8, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v14, :cond_3

    iget v15, v8, Lcom/android/launcher3/DeviceProfile;->dropTargetGapPx:I

    sub-int/2addr v13, v15

    div-int/2addr v13, v6

    goto :goto_1

    :cond_3
    iget v15, v8, Lcom/android/launcher3/DeviceProfile;->dropTargetGapPx:I

    sub-int/2addr v13, v15

    :goto_1
    invoke-static {v13, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    invoke-virtual {v11, v15, v3}, Landroid/widget/TextView;->measure(II)V

    iget-boolean v6, v0, Lcom/android/launcher3/DropTargetBar;->mIsVertical:Z

    if-nez v6, :cond_4

    invoke-virtual {v11, v13}, Lcom/android/launcher3/ButtonDropTarget;->isTextTruncated(I)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v11, v7}, Lcom/android/launcher3/ButtonDropTarget;->setIconVisible(Z)V

    invoke-virtual {v12, v7}, Lcom/android/launcher3/ButtonDropTarget;->setIconVisible(Z)V

    invoke-virtual {v11, v4}, Lcom/android/launcher3/ButtonDropTarget;->setTextMultiLine(Z)V

    div-int/lit8 v6, v9, 0x2

    invoke-virtual {v11, v10, v6, v10, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_4
    if-nez v14, :cond_5

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    iget v8, v8, Lcom/android/launcher3/DeviceProfile;->dropTargetGapPx:I

    add-int/2addr v6, v8

    sub-int/2addr v13, v6

    invoke-static {v13, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    :cond_5
    invoke-virtual {v12, v15, v3}, Landroid/widget/TextView;->measure(II)V

    iget-boolean v3, v0, Lcom/android/launcher3/DropTargetBar;->mIsVertical:Z

    if-nez v3, :cond_6

    invoke-virtual {v12, v13}, Lcom/android/launcher3/ButtonDropTarget;->isTextTruncated(I)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v12, v7}, Lcom/android/launcher3/ButtonDropTarget;->setIconVisible(Z)V

    invoke-virtual {v11, v7}, Lcom/android/launcher3/ButtonDropTarget;->setIconVisible(Z)V

    invoke-virtual {v12, v4}, Lcom/android/launcher3/ButtonDropTarget;->setTextMultiLine(Z)V

    const/4 v3, 0x2

    div-int/2addr v9, v3

    invoke-virtual {v12, v10, v9, v10, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_6
    invoke-virtual {v11}, Lcom/android/launcher3/ButtonDropTarget;->resizeTextToFit()F

    move-result v3

    invoke-virtual {v12}, Lcom/android/launcher3/ButtonDropTarget;->resizeTextToFit()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v11}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    cmpl-float v4, v4, v3

    if-nez v4, :cond_7

    invoke-virtual {v12}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    cmpl-float v4, v4, v3

    if-eqz v4, :cond_8

    :cond_7
    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_8
    :goto_2
    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public final setInsets(Landroid/graphics/Rect;)V
    .locals 7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/launcher3/DropTargetBar;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/launcher3/DropTargetBar;->mIsVertical:Z

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-boolean p1, v1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    iget v2, v1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    if-eqz p1, :cond_0

    iget p1, v1, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v3, p1, 0x2

    sub-int v3, v2, v3

    iget-object v4, v1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v4, v4, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v5, v1, Lcom/android/launcher3/DeviceProfile;->cellWidthPx:I

    mul-int/2addr v5, v4

    sub-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v4, v4, 0x2

    div-int/2addr v3, v4

    add-int/2addr v3, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f070140

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_0
    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v4, v1, Lcom/android/launcher3/DeviceProfile;->dropTargetBarTopMarginPx:I

    add-int/2addr p1, v4

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v4, v1, Lcom/android/launcher3/DeviceProfile;->dropTargetBarBottomMarginPx:I

    add-int/2addr p1, v4

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget p1, v1, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr p1, v3

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-boolean v3, p0, Lcom/android/launcher3/DropTargetBar;->mIsVertical:Z

    if-eqz v3, :cond_1

    sub-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :cond_1
    iget p1, v1, Lcom/android/launcher3/DeviceProfile;->dropTargetBarSizePx:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 p1, 0x31

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object p1, p0, Lcom/android/launcher3/DropTargetBar;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p1

    iget v2, p1, Lcom/android/launcher3/DeviceProfile;->dropTargetHorizontalPaddingPx:I

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->dropTargetVerticalPaddingPx:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/android/launcher3/DropTargetBar;->mDropTargets:[Lcom/android/launcher3/ButtonDropTarget;

    array-length v0, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v0, :cond_2

    aget-object v5, p0, v4

    iget v6, v1, Lcom/android/launcher3/DeviceProfile;->dropTargetTextSizePx:I

    int-to-float v6, v6

    invoke-virtual {v5, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v5}, Lcom/android/launcher3/ButtonDropTarget;->setToolTipLocation()V

    invoke-virtual {v5, v2, p1, v2, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final setup(Lcom/android/launcher3/dragndrop/LauncherDragController;)V
    .locals 3

    invoke-virtual {p1, p0}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/DropTargetBar;->mDropTargets:[Lcom/android/launcher3/ButtonDropTarget;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    iget-object v1, p0, Lcom/android/launcher3/DropTargetBar;->mDropTargets:[Lcom/android/launcher3/ButtonDropTarget;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/android/launcher3/dragndrop/DragController;->addDropTarget(Lcom/android/launcher3/DropTarget;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
