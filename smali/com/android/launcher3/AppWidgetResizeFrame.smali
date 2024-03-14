.class public Lcom/android/launcher3/AppWidgetResizeFrame;
.super Lcom/android/launcher3/AbstractFloatingView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# static fields
.field public static final synthetic d:I

.field private static final sTmpRect:Landroid/graphics/Rect;

.field private static final sTmpRect2:Landroid/graphics/Rect;


# instance fields
.field private final logInstanceId:Lcom/android/launcher3/logging/InstanceId;

.field private final mBackgroundPadding:I

.field private final mBaselineX:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

.field private final mBaselineY:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

.field private mBottomBorderActive:Z

.field private mBottomTouchRegionAdjustment:I

.field private mCellLayout:Lcom/android/launcher3/CellLayout;

.field private mDeltaX:I

.field private mDeltaXAddOn:I

.field private final mDeltaXRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

.field private mDeltaY:I

.field private mDeltaYAddOn:I

.field private final mDeltaYRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

.field private final mDirectionVector:[I

.field private final mDragAcrossTwoPanelOpacityMargin:F

.field private final mDragHandles:[Landroid/view/View;

.field private mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

.field private final mDragLayerRelativeCoordinateHelper:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

.field private final mFirstFrameAnimatorHelper:Lcom/android/launcher3/FirstFrameAnimatorHelper;

.field private mHorizontalResizeActive:Z

.field private final mLastDirectionVector:[I

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private mLeftBorderActive:Z

.field private mMaxHSpan:I

.field private mMaxVSpan:I

.field private mMinHSpan:I

.field private mMinVSpan:I

.field private mReconfigureButton:Landroid/widget/ImageButton;

.field private mRightBorderActive:Z

.field private mRunningHInc:I

.field private mRunningVInc:I

.field private final mStateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

.field private final mSystemGestureExclusionRects:Ljava/util/List;

.field private final mTempRange1:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

.field private final mTempRange2:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

.field private mTopBorderActive:Z

.field private mTopTouchRegionAdjustment:I

.field private final mTouchTargetWidth:I

.field private mVerticalResizeActive:Z

.field private mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

.field private mXDown:I

.field private mYDown:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/AppWidgetResizeFrame;->sTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/AppWidgetResizeFrame;->sTmpRect2:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/AppWidgetResizeFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/AppWidgetResizeFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x4

    new-array p3, p2, [Landroid/view/View;

    .line 4
    iput-object p3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    .line 5
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mSystemGestureExclusionRects:Ljava/util/List;

    const/4 p3, 0x2

    new-array v0, p3, [I

    .line 6
    iput-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDirectionVector:[I

    new-array v0, p3, [I

    .line 7
    iput-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLastDirectionVector:[I

    .line 8
    new-instance v0, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-direct {v0}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange1:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    .line 9
    new-instance v0, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-direct {v0}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange2:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    .line 10
    new-instance v0, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-direct {v0}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaXRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    .line 11
    new-instance v0, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-direct {v0}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBaselineX:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    .line 12
    new-instance v0, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-direct {v0}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaYRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    .line 13
    new-instance v0, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-direct {v0}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBaselineY:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    .line 14
    new-instance v0, Lcom/android/launcher3/logging/InstanceIdSequence;

    invoke-direct {v0}, Lcom/android/launcher3/logging/InstanceIdSequence;-><init>()V

    invoke-virtual {v0}, Lcom/android/launcher3/logging/InstanceIdSequence;->newInstanceId()Lcom/android/launcher3/logging/InstanceId;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopTouchRegionAdjustment:I

    .line 16
    iput v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomTouchRegionAdjustment:I

    .line 17
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 18
    invoke-static {p0}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->createFor(Landroid/view/View;)Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mStateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    .line 19
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070465

    .line 20
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBackgroundPadding:I

    mul-int/2addr p1, p3

    .line 21
    iput p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTouchTargetWidth:I

    .line 22
    new-instance p1, Lcom/android/launcher3/FirstFrameAnimatorHelper;

    invoke-direct {p1, p0}, Lcom/android/launcher3/FirstFrameAnimatorHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mFirstFrameAnimatorHelper:Lcom/android/launcher3/FirstFrameAnimatorHelper;

    :goto_0
    if-ge v0, p2, :cond_0

    .line 23
    iget-object p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mSystemGestureExclusionRects:Ljava/util/List;

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 24
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070466

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragAcrossTwoPanelOpacityMargin:F

    .line 25
    new-instance p1, Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    iget-object p2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 26
    iget-object p2, p2, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    .line 27
    invoke-direct {p1, p2}, Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragLayerRelativeCoordinateHelper:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/AppWidgetResizeFrame;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/AppWidgetResizeFrame;->snapToWidget(Z)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/AppWidgetResizeFrame;)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/android/launcher3/util/PendingRequestArgs;->forWidgetInfo(ILcom/android/launcher3/widget/WidgetAddFlowHandler;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/PendingRequestArgs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V

    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppWidgetHolder()Lcom/android/launcher3/widget/LauncherWidgetHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result p0

    const/16 v2, 0xd

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->startConfigActivity(Lcom/android/launcher3/BaseDraggingActivity;II)V

    return-void
.end method

.method public static c(Lcom/android/launcher3/AppWidgetResizeFrame;)V
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mReconfigureButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070577

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    new-instance v3, Lcom/android/launcher3/views/ArrowTipView;

    iget-object v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v3, v4, v2}, Lcom/android/launcher3/views/ArrowTipView;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f1301a4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mReconfigureButton:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    invoke-virtual {v3, v4, v6, v0, v1}, Lcom/android/launcher3/views/ArrowTipView;->showAroundRect(Ljava/lang/String;ILandroid/graphics/Rect;I)Lcom/android/launcher3/views/ArrowTipView;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "launcher.reconfigurable_widget_education_tip_seen"

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/AppWidgetResizeFrame;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/AppWidgetResizeFrame;->snapToWidget(Z)V

    return-void
.end method

.method private getSnappedRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->getScaleToFit()F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v1, v2, p1}, Lcom/android/launcher3/views/BaseDragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBackgroundPadding:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, v1

    iget v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBackgroundPadding:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget p0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBackgroundPadding:I

    sub-int/2addr v1, p0

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, p0

    iput v1, p1, Landroid/graphics/Rect;->left:I

    iput v3, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v0

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private handleTouchDown(Landroid/view/MotionEvent;)Z
    .locals 9

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v0

    sub-int v0, v1, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    sub-int v3, p1, v3

    iget v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTouchTargetWidth:I

    const/4 v5, 0x1

    if-ge v0, v4, :cond_0

    iget-boolean v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mHorizontalResizeActive:Z

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    iput-boolean v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLeftBorderActive:Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    iget v6, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTouchTargetWidth:I

    sub-int/2addr v4, v6

    if-le v0, v4, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mHorizontalResizeActive:Z

    if-eqz v0, :cond_1

    move v0, v5

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRightBorderActive:Z

    iget v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopTouchRegionAdjustment:I

    add-int/2addr v6, v0

    if-ge v3, v6, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mVerticalResizeActive:Z

    if-eqz v0, :cond_2

    move v0, v5

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopBorderActive:Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    iget v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTouchTargetWidth:I

    sub-int/2addr v0, v4

    iget v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomTouchRegionAdjustment:I

    add-int/2addr v0, v4

    if-le v3, v0, :cond_3

    iget-boolean v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mVerticalResizeActive:Z

    if-eqz v0, :cond_3

    move v0, v5

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomBorderActive:Z

    iget-boolean v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-nez v3, :cond_5

    iget-boolean v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-nez v4, :cond_5

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    move v0, v2

    goto :goto_5

    :cond_5
    :goto_4
    move v0, v5

    :goto_5
    const/4 v4, 0x2

    if-eqz v0, :cond_a

    iget-object v6, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    aget-object v6, v6, v2

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    if-eqz v3, :cond_6

    move v3, v7

    goto :goto_6

    :cond_6
    move v3, v8

    :goto_6
    invoke-virtual {v6, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    aget-object v3, v3, v4

    iget-boolean v6, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v6, :cond_7

    move v6, v7

    goto :goto_7

    :cond_7
    move v6, v8

    :goto_7
    invoke-virtual {v3, v6}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    aget-object v3, v3, v5

    iget-boolean v6, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v6, :cond_8

    move v6, v7

    goto :goto_8

    :cond_8
    move v6, v8

    :goto_8
    invoke-virtual {v3, v6}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    const/4 v6, 0x3

    aget-object v3, v3, v6

    iget-boolean v6, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v6, :cond_9

    goto :goto_9

    :cond_9
    move v7, v8

    :goto_9
    invoke-virtual {v3, v7}, Landroid/view/View;->setAlpha(F)V

    :cond_a
    iget-boolean v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaXRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v7

    iget v8, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/2addr v8, v4

    sub-int/2addr v7, v8

    iput v6, v3, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    iput v7, v3, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    goto :goto_a

    :cond_b
    iget-boolean v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaXRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iget v6, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/2addr v6, v4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v8

    sub-int/2addr v7, v8

    iput v6, v3, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    iput v7, v3, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    goto :goto_a

    :cond_c
    iget-object v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaXRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iput v2, v3, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    iput v2, v3, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    :goto_a
    iget-object v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBaselineX:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v7

    iput v6, v3, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    iput v7, v3, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    iget-boolean v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaYRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v7

    iget v8, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/2addr v8, v4

    sub-int/2addr v7, v8

    iput v6, v3, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    iput v7, v3, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    goto :goto_b

    :cond_d
    iget-boolean v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaYRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iget v6, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/2addr v6, v4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    sub-int/2addr v6, v4

    iget-object v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v7

    sub-int/2addr v4, v7

    iput v6, v3, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    iput v4, v3, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    goto :goto_b

    :cond_e
    iget-object v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaYRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iput v2, v3, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    iput v2, v3, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    :goto_b
    iget-object v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBaselineY:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v6

    iput v4, v3, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    iput v6, v3, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    if-eqz v0, :cond_f

    iput v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mXDown:I

    iput p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mYDown:I

    return v5

    :cond_f
    return v2
.end method

.method private resizeWidgetIfNeeded(Z)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHostView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iget v4, v3, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iget-object v2, v2, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v5, v2, Landroid/graphics/Point;->x:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v3, v3, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v3, v2

    int-to-float v2, v3

    iget v3, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaX:I

    iget v5, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaXAddOn:I

    add-int/2addr v3, v5

    int-to-float v3, v3

    div-float/2addr v3, v4

    iget v4, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRunningHInc:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3f28f5c3    # 0.66f

    cmpl-float v4, v4, v5

    const/4 v6, 0x0

    if-lez v4, :cond_1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move v10, v3

    goto :goto_0

    :cond_1
    move v10, v6

    :goto_0
    iget v3, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaY:I

    iget v4, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaYAddOn:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRunningVInc:I

    int-to-float v2, v2

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_1

    :cond_2
    move v2, v6

    :goto_1
    if-nez p1, :cond_3

    if-nez v10, :cond_3

    if-nez v2, :cond_3

    return-void

    :cond_3
    iget-object v3, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDirectionVector:[I

    aput v6, v3, v6

    const/4 v4, 0x1

    aput v6, v3, v4

    move-object v5, v1

    check-cast v5, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    iget v1, v5, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    iget v3, v5, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    iget-boolean v7, v5, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->useTmpCoords:Z

    if-eqz v7, :cond_4

    invoke-virtual {v5}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getTmpCellX()I

    move-result v7

    goto :goto_2

    :cond_4
    invoke-virtual {v5}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v7

    :goto_2
    iget-boolean v8, v5, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->useTmpCoords:Z

    if-eqz v8, :cond_5

    invoke-virtual {v5}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getTmpCellY()I

    move-result v8

    goto :goto_3

    :cond_5
    invoke-virtual {v5}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v8

    :goto_3
    move v15, v8

    iget-object v8, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange1:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    add-int/2addr v1, v7

    iput v7, v8, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    iput v1, v8, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    iget-boolean v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLeftBorderActive:Z

    iget-boolean v9, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRightBorderActive:Z

    iget v11, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mMinHSpan:I

    iget v12, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mMaxHSpan:I

    iget-object v7, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iget v13, v7, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget-object v14, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange2:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    move-object v7, v8

    move v8, v1

    invoke-virtual/range {v7 .. v14}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->applyDeltaAndBound(ZZIIIILcom/android/launcher3/AppWidgetResizeFrame$IntRange;)I

    move-result v9

    iget-object v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange2:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iget v10, v1, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    iget v7, v1, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    sub-int v8, v7, v10

    const/4 v7, -0x1

    if-eqz v9, :cond_7

    iget-object v11, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDirectionVector:[I

    iget-boolean v12, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v12, :cond_6

    move v12, v7

    goto :goto_4

    :cond_6
    move v12, v4

    :goto_4
    aput v12, v11, v6

    :cond_7
    iget-object v11, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange1:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    add-int/2addr v3, v15

    iput v15, v11, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    iput v3, v11, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    iget-boolean v12, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopBorderActive:Z

    iget-boolean v13, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomBorderActive:Z

    iget v15, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mMinVSpan:I

    iget v3, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mMaxVSpan:I

    iget-object v14, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iget v14, v14, Lcom/android/launcher3/CellLayout;->mCountY:I

    move/from16 v17, v14

    move v14, v2

    move/from16 v16, v3

    move-object/from16 v18, v1

    invoke-virtual/range {v11 .. v18}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->applyDeltaAndBound(ZZIIIILcom/android/launcher3/AppWidgetResizeFrame$IntRange;)I

    move-result v11

    iget-object v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange2:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iget v12, v1, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    iget v1, v1, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    sub-int v13, v1, v12

    if-eqz v11, :cond_9

    iget-object v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDirectionVector:[I

    iget-boolean v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v2, :cond_8

    goto :goto_5

    :cond_8
    move v7, v4

    :goto_5
    aput v7, v1, v4

    :cond_9
    if-nez p1, :cond_a

    if-nez v11, :cond_a

    if-nez v9, :cond_a

    return-void

    :cond_a
    if-eqz p1, :cond_b

    iget-object v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDirectionVector:[I

    iget-object v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLastDirectionVector:[I

    aget v3, v2, v6

    aput v3, v1, v6

    aget v2, v2, v4

    aput v2, v1, v4

    goto :goto_6

    :cond_b
    iget-object v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLastDirectionVector:[I

    iget-object v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDirectionVector:[I

    aget v3, v2, v6

    aput v3, v1, v6

    aget v2, v2, v4

    aput v2, v1, v4

    :goto_6
    iget-object v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iget-object v6, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iget-object v7, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDirectionVector:[I

    move v2, v10

    move v3, v12

    move v4, v8

    move-object v14, v5

    move v5, v13

    move v15, v8

    move/from16 v8, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher3/CellLayout;->createAreaForResize(IIIILandroid/view/View;[IZ)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mStateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    if-eqz v1, :cond_d

    iget v2, v14, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    if-ne v2, v15, :cond_c

    iget v2, v14, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    if-eq v2, v13, :cond_d

    :cond_c
    iget-object v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f13025e

    invoke-virtual {v2, v4, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->announce(Ljava/lang/CharSequence;)V

    :cond_d
    invoke-virtual {v14, v10}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setTmpCellX(I)V

    invoke-virtual {v14, v12}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setTmpCellY(I)V

    iput v15, v14, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    iput v13, v14, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    iget v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRunningVInc:I

    add-int/2addr v1, v11

    iput v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRunningVInc:I

    iget v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRunningHInc:I

    add-int/2addr v1, v9

    iput v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRunningHInc:I

    if-nez p1, :cond_e

    iget-object v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iget-object v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, v2, v15, v13}, Lcom/android/launcher3/widget/util/WidgetSizes;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Landroid/content/Context;II)V

    :cond_e
    iget-object v0, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->requestLayout()V

    return-void
.end method

.method public static showForWidget(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;)V

    iget-object v1, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d0041

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppWidgetResizeFrame;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getClipToOutline()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->getEnforcedCornerRadius()F

    move-result v2

    const v4, 0x7f0a03e5

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    instance-of v5, v4, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :cond_0
    iput-object p1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iput-object p0, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    iput-object v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget v2, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    iput v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mMinHSpan:I

    iget v2, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    iput v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mMinVSpan:I

    iget v2, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->maxSpanX:I

    iput v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mMaxHSpan:I

    iget v2, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->maxSpanY:I

    iput v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mMaxVSpan:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object p1

    iget v2, p0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    iget v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mMinVSpan:I

    iget v6, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    if-ge v2, v6, :cond_1

    iget v6, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mMaxVSpan:I

    if-le v6, v5, :cond_1

    if-ge v2, v6, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    iput-boolean v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mVerticalResizeActive:Z

    const/16 v6, 0x8

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    aget-object v2, v2, v5

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    const/4 v7, 0x3

    aget-object v2, v2, v7

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget v2, p0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_3

    iget v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mMinHSpan:I

    iget p1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    if-ge v2, p1, :cond_3

    iget p1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mMaxHSpan:I

    if-le p1, v5, :cond_3

    if-ge v2, p1, :cond_3

    move p1, v5

    goto :goto_1

    :cond_3
    move p1, v3

    :goto_1
    iput-boolean p1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mHorizontalResizeActive:Z

    if-nez p1, :cond_4

    iget-object p1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    aget-object p1, p1, v3

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    aget-object p1, p1, v4

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    const p1, 0x7f0a03e3

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mReconfigureButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v2, :cond_6

    sget-boolean v2, Lcom/android/launcher3/Utilities;->ATLEAST_P:Z

    if-eqz v2, :cond_5

    iget p0, p0, Landroid/appwidget/AppWidgetProviderInfo;->widgetFeatures:I

    goto :goto_2

    :cond_5
    move p0, v3

    :goto_2
    and-int/2addr p0, v5

    if-eqz p0, :cond_6

    move p0, v5

    goto :goto_3

    :cond_6
    move p0, v3

    :goto_3
    if-eqz p0, :cond_9

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object p0, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mReconfigureButton:Landroid/widget/ImageButton;

    new-instance p1, Lcom/android/launcher3/d;

    invoke-direct {p1, v0}, Lcom/android/launcher3/d;-><init>(Lcom/android/launcher3/AppWidgetResizeFrame;)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "launcher.reconfigurable_widget_education_tip_seen"

    invoke-interface {p0, p1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_7

    invoke-static {}, Lcom/android/launcher3/Utilities;->isRunningInTestHarness()Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_7
    move v3, v5

    :cond_8
    if-nez v3, :cond_9

    new-instance p0, Lcom/android/launcher3/b;

    invoke-direct {p0, v0, v4}, Lcom/android/launcher3/b;-><init>(Lcom/android/launcher3/AppWidgetResizeFrame;I)V

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_9
    iget-object p0, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    iget-object p1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getCellPosMapper()Lcom/android/launcher3/celllayout/CellPosMapper;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher3/celllayout/CellPosMapper;->mapModelToPresenter(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    move-result-object v2

    iget v3, v2, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellX:I

    invoke-virtual {p0, v3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setCellX(I)V

    iget v3, v2, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellX:I

    invoke-virtual {p0, v3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setTmpCellX(I)V

    iget v2, v2, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellY:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setCellY(I)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setTmpCellY(I)V

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v2, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v2, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    iput-boolean v5, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->isLockedToGrid:Z

    iget-object p0, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iget-object v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    iget-object p0, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    iget-object v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    invoke-interface {p0, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_WIDGET_RESIZE_STARTED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    invoke-virtual {v0, v0}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    iput-boolean v5, p0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->customPosition:Z

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iput-boolean v5, v0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    new-instance p0, Lcom/android/launcher3/b;

    invoke-direct {p0, v0, v5}, Lcom/android/launcher3/b;-><init>(Lcom/android/launcher3/AppWidgetResizeFrame;I)V

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private snapToWidget(Z)V
    .locals 13

    sget-object v0, Lcom/android/launcher3/AppWidgetResizeFrame;->sTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getSnappedRectRelativeToDragLayer(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x0

    if-gez v0, :cond_0

    neg-int v5, v0

    iput v5, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopTouchRegionAdjustment:I

    goto :goto_0

    :cond_0
    iput v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopTouchRegionAdjustment:I

    :goto_0
    add-int v5, v0, v2

    iget-object v6, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    if-le v5, v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    neg-int v5, v5

    iput v5, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomTouchRegionAdjustment:I

    goto :goto_1

    :cond_1
    iput v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomTouchRegionAdjustment:I

    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    iget-object v6, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher3/Workspace;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/Workspace;

    iget-object v7, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/Workspace;->getScreenPair(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/CellLayout;

    move-result-object v6

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    move-object v9, v6

    const/4 v6, 0x1

    const/4 v7, 0x4

    const/high16 v8, 0x3f800000    # 1.0f

    if-nez p1, :cond_5

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v3, v5, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    iput v0, v5, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    :goto_3
    if-ge v4, v7, :cond_3

    iget-object p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    aget-object p1, p1, v4

    invoke-virtual {p1, v8}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    if-eqz v9, :cond_4

    iget-object v8, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/launcher3/AppWidgetResizeFrame;->updateInvalidResizeEffect(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout;FFLandroid/animation/AnimatorSet;)V

    :cond_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    goto/16 :goto_5

    :cond_5
    sget-object p1, Lcom/android/launcher3/LauncherAnimUtils;->LAYOUT_WIDTH:Landroid/util/IntProperty;

    iget v10, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    filled-new-array {v10, v1}, [I

    move-result-object v1

    invoke-static {p1, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->LAYOUT_HEIGHT:Landroid/util/IntProperty;

    iget v10, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    filled-new-array {v10, v2}, [I

    move-result-object v2

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/views/BaseDragLayer;->LAYOUT_X:Landroid/util/Property;

    iget v10, v5, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    filled-new-array {v10, v3}, [I

    move-result-object v3

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/views/BaseDragLayer;->LAYOUT_Y:Landroid/util/Property;

    iget v10, v5, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    filled-new-array {v10, v0}, [I

    move-result-object v0

    invoke-static {v3, v0}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    filled-new-array {p1, v1, v2, v0}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mFirstFrameAnimatorHelper:Lcom/android/launcher3/FirstFrameAnimatorHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener;

    invoke-direct {v1, v0}, Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener;-><init>(Lcom/android/launcher3/FirstFrameAnimatorHelper;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/launcher3/c;

    invoke-direct {v0, p0}, Lcom/android/launcher3/c;-><init>(Lcom/android/launcher3/AppWidgetResizeFrame;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move p1, v4

    :goto_4
    if-ge p1, v7, :cond_6

    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mFirstFrameAnimatorHelper:Lcom/android/launcher3/FirstFrameAnimatorHelper;

    iget-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    aget-object v2, v2, p1

    sget-object v3, Landroid/widget/LinearLayout;->ALPHA:Landroid/util/Property;

    new-array v5, v6, [F

    aput v8, v5, v4

    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener;

    invoke-direct {v3, v1}, Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener;-><init>(Lcom/android/launcher3/FirstFrameAnimatorHelper;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_6
    if-eqz v9, :cond_7

    iget-object v8, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    move-object v7, p0

    move-object v12, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/launcher3/AppWidgetResizeFrame;->updateInvalidResizeEffect(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout;FFLandroid/animation/AnimatorSet;)V

    :cond_7
    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :goto_5
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestFocus()Z

    return-void
.end method

.method private updateInvalidResizeEffect(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout;FFLandroid/animation/AnimatorSet;)V
    .locals 7

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz p5, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mFirstFrameAnimatorHelper:Lcom/android/launcher3/FirstFrameAnimatorHelper;

    sget-object v6, Landroid/widget/LinearLayout;->ALPHA:Landroid/util/Property;

    new-array v3, v3, [F

    aput p3, v3, v1

    invoke-static {v4, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener;

    invoke-direct {v4, v5}, Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener;-><init>(Lcom/android/launcher3/FirstFrameAnimatorHelper;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p5, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    :cond_0
    invoke-virtual {v4, p3}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz p5, :cond_2

    iget-object p3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mFirstFrameAnimatorHelper:Lcom/android/launcher3/FirstFrameAnimatorHelper;

    sget-object v0, Lcom/android/launcher3/CellLayout;->SPRING_LOADED_PROGRESS:Landroid/util/FloatProperty;

    new-array v2, v3, [F

    aput p4, v2, v1

    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener;

    invoke-direct {v4, p3}, Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener;-><init>(Lcom/android/launcher3/FirstFrameAnimatorHelper;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p5, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object p0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mFirstFrameAnimatorHelper:Lcom/android/launcher3/FirstFrameAnimatorHelper;

    new-array p3, v3, [F

    aput p4, p3, v1

    invoke-static {p2, v0, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener;

    invoke-direct {v0, p0}, Lcom/android/launcher3/FirstFrameAnimatorHelper$MyListener;-><init>(Lcom/android/launcher3/FirstFrameAnimatorHelper;)V

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p5, p3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_2

    :cond_2
    invoke-virtual {p1, p4}, Lcom/android/launcher3/CellLayout;->setSpringLoadedProgress(F)V

    invoke-virtual {p2, p4}, Lcom/android/launcher3/CellLayout;->setSpringLoadedProgress(F)V

    :goto_2
    const/4 p0, 0x0

    cmpl-float p0, p4, p0

    if-lez p0, :cond_3

    move v1, v3

    :cond_3
    if-eqz p5, :cond_4

    new-instance p0, Lcom/android/launcher3/AppWidgetResizeFrame$1;

    invoke-direct {p0, p1, v1, p2}, Lcom/android/launcher3/AppWidgetResizeFrame$1;-><init>(Lcom/android/launcher3/CellLayout;ZLcom/android/launcher3/CellLayout;)V

    invoke-virtual {p5, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v1}, Lcom/android/launcher3/CellLayout;->setIsDragOverlapping(Z)V

    invoke-virtual {p2, v1}, Lcom/android/launcher3/CellLayout;->setIsDragOverlapping(Z)V

    :goto_3
    return-void
.end method


# virtual methods
.method public final handleClose(Z)V
    .locals 0

    iget-object p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final isOfType(I)Z
    .locals 0

    and-int/lit8 p0, p1, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher3/AppWidgetResizeFrame;->handleTouchDown(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v1

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mReconfigureButton:Landroid/widget/ImageButton;

    sget-object v2, Lcom/android/launcher3/AppWidgetResizeFrame;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    return v0
.end method

.method public final onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    if-eq v0, p1, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mXDown:I

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mYDown:I

    sub-int/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/AppWidgetResizeFrame;->visualizeResizeForDelta(II)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mXDown:I

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mYDown:I

    sub-int/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/AppWidgetResizeFrame;->visualizeResizeForDelta(II)V

    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iget v2, v1, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v3, v0, Landroid/graphics/Point;->x:I

    add-int/2addr v2, v3

    iget v1, v1, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v0

    iget v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRunningHInc:I

    mul-int/2addr v0, v2

    iput v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaXAddOn:I

    iget v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRunningVInc:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaYAddOn:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaX:I

    iput v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaY:I

    new-instance v1, Lcom/android/launcher3/b;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/b;-><init>(Lcom/android/launcher3/AppWidgetResizeFrame;I)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    iput v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mYDown:I

    iput v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mXDown:I

    :goto_0
    return p1

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/launcher3/AppWidgetResizeFrame;->handleTouchDown(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/AppWidgetResizeFrame;->resizeWidgetIfNeeded(Z)V

    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {v0, p0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_WIDGET_RESIZE_COMPLETED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p0, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void
.end method

.method public final onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    const v1, 0x7f0a03e6

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    const v1, 0x7f0a03e8

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    const v1, 0x7f0a03e7

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    const v1, 0x7f0a03e4

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 p1, 0x15

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eq p2, p1, :cond_1

    const/16 p1, 0x16

    if-eq p2, p1, :cond_1

    const/16 p1, 0x13

    if-eq p2, p1, :cond_1

    const/16 p1, 0x14

    if-eq p2, p1, :cond_1

    const/16 p1, 0x7a

    if-eq p2, p1, :cond_1

    const/16 p1, 0x7b

    if-eq p2, p1, :cond_1

    const/16 p1, 0x5c

    if-eq p2, p1, :cond_1

    const/16 p1, 0x5d

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, p3

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    iget-object p0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->requestFocus()Z

    return p3

    :cond_2
    return v0
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    sget-boolean p1, Lcom/android/launcher3/Utilities;->ATLEAST_Q:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    const/4 p2, 0x4

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    aget-object p2, p2, p1

    iget-object p3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mSystemGestureExclusionRects:Ljava/util/List;

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p5

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    invoke-virtual {p3, p4, p5, v0, p2}, Landroid/graphics/Rect;->set(IIII)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mSystemGestureExclusionRects:Ljava/util/List;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setSystemGestureExclusionRects(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public final visualizeResizeForDelta(II)V
    .locals 7

    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaXRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iget v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    iget v0, v0, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    invoke-static {p1, v1, v0}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaX:I

    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaYRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iget v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    iget v0, v0, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    invoke-static {p2, v1, v0}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaY:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaXRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iget v2, v1, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    iget v1, v1, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    invoke-static {p1, v2, v1}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaX:I

    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBaselineX:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iget-boolean v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLeftBorderActive:Z

    iget-boolean v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRightBorderActive:Z

    iget-object v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange1:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {v1, v2, v3, p1, v4}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->applyDelta(ZZILcom/android/launcher3/AppWidgetResizeFrame$IntRange;)V

    iget-object p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange1:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iget v1, p1, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    iput v1, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    iget p1, p1, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaYRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iget v1, p1, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    iget p1, p1, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    invoke-static {p2, v1, p1}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaY:I

    iget-object p2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBaselineY:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iget-boolean v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopBorderActive:Z

    iget-boolean v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomBorderActive:Z

    iget-object v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange1:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {p2, v1, v2, p1, v3}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->applyDelta(ZZILcom/android/launcher3/AppWidgetResizeFrame$IntRange;)V

    iget-object p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange1:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iget p2, p1, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    iput p2, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    iget p1, p1, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/launcher3/AppWidgetResizeFrame;->resizeWidgetIfNeeded(Z)V

    sget-object p1, Lcom/android/launcher3/AppWidgetResizeFrame;->sTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/android/launcher3/AppWidgetResizeFrame;->getSnappedRectRelativeToDragLayer(Landroid/graphics/Rect;)V

    iget-boolean p2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget v1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, v1

    iget v1, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    sub-int/2addr p2, v1

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :cond_0
    iget-boolean p2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p2

    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v1

    iget v1, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    sub-int/2addr p2, v1

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :cond_1
    iget-boolean p2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz p2, :cond_2

    iget p2, p1, Landroid/graphics/Rect;->left:I

    iput p2, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    :cond_2
    iget-boolean p2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz p2, :cond_3

    iget p2, p1, Landroid/graphics/Rect;->top:I

    iput p2, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    :cond_3
    iget-object p2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Lcom/android/launcher3/Workspace;

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/Workspace;

    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {p2, v0}, Lcom/android/launcher3/Workspace;->getScreenPair(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/CellLayout;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragLayerRelativeCoordinateHelper:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;->viewToRect(Landroid/view/View;Landroid/graphics/Rect;)V

    sget-object v0, Lcom/android/launcher3/AppWidgetResizeFrame;->sTmpRect2:Landroid/graphics/Rect;

    const v1, 0x7f0a03e5

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v1, v2, :cond_4

    iget v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaX:I

    if-gez v1, :cond_4

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->left:I

    if-ge v2, v5, :cond_4

    iget p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragAcrossTwoPanelOpacityMargin:F

    int-to-float p2, v1

    add-float/2addr p2, p1

    goto :goto_0

    :cond_4
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p2

    if-le v1, p2, :cond_5

    iget p2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaX:I

    if-lez p2, :cond_5

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    if-le v0, p1, :cond_5

    iget p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragAcrossTwoPanelOpacityMargin:F

    int-to-float p2, p2

    sub-float p2, p1, p2

    :goto_0
    div-float/2addr p2, p1

    goto :goto_1

    :cond_5
    move p2, v4

    :goto_1
    const/high16 p1, 0x3f000000    # 0.5f

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    sub-float p2, v4, p2

    invoke-static {v4, p2}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    const/4 v6, 0x0

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/AppWidgetResizeFrame;->updateInvalidResizeEffect(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout;FFLandroid/animation/AnimatorSet;)V

    :cond_6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method
