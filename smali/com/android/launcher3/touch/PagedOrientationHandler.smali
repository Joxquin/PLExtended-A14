.class public interface abstract Lcom/android/launcher3/touch/PagedOrientationHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CANVAS_TRANSLATE:Lcom/android/launcher3/touch/k;

.field public static final LANDSCAPE:Lcom/android/launcher3/touch/LandscapePagedViewHandler;

.field public static final MATRIX_POST_TRANSLATE:Lcom/android/launcher3/touch/k;

.field public static final PORTRAIT:Lcom/android/launcher3/touch/PortraitPagedViewHandler;

.field public static final SEASCAPE:Lcom/android/launcher3/touch/SeascapePagedViewHandler;

.field public static final VIEW_SCROLL_BY:Lcom/android/launcher3/touch/k;

.field public static final VIEW_SCROLL_TO:Lcom/android/launcher3/touch/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/touch/PortraitPagedViewHandler;

    invoke-direct {v0}, Lcom/android/launcher3/touch/PortraitPagedViewHandler;-><init>()V

    sput-object v0, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PortraitPagedViewHandler;

    new-instance v0, Lcom/android/launcher3/touch/LandscapePagedViewHandler;

    invoke-direct {v0}, Lcom/android/launcher3/touch/LandscapePagedViewHandler;-><init>()V

    sput-object v0, Lcom/android/launcher3/touch/PagedOrientationHandler;->LANDSCAPE:Lcom/android/launcher3/touch/LandscapePagedViewHandler;

    new-instance v0, Lcom/android/launcher3/touch/SeascapePagedViewHandler;

    invoke-direct {v0}, Lcom/android/launcher3/touch/SeascapePagedViewHandler;-><init>()V

    sput-object v0, Lcom/android/launcher3/touch/PagedOrientationHandler;->SEASCAPE:Lcom/android/launcher3/touch/SeascapePagedViewHandler;

    new-instance v0, Lcom/android/launcher3/touch/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/touch/k;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/touch/PagedOrientationHandler;->VIEW_SCROLL_BY:Lcom/android/launcher3/touch/k;

    new-instance v0, Lcom/android/launcher3/touch/k;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/touch/k;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/touch/PagedOrientationHandler;->VIEW_SCROLL_TO:Lcom/android/launcher3/touch/k;

    new-instance v0, Lcom/android/launcher3/touch/k;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/launcher3/touch/k;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/touch/PagedOrientationHandler;->CANVAS_TRANSLATE:Lcom/android/launcher3/touch/k;

    new-instance v0, Lcom/android/launcher3/touch/k;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/launcher3/touch/k;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/touch/PagedOrientationHandler;->MATRIX_POST_TRANSLATE:Lcom/android/launcher3/touch/k;

    return-void
.end method


# virtual methods
.method public abstract adjustFloatingIconStartVelocity(Landroid/graphics/PointF;)V
.end method

.method public abstract fixBoundsForHomeAnimStartRect(Landroid/graphics/RectF;Lcom/android/launcher3/DeviceProfile;)V
.end method

.method public abstract getCenterForPage(Landroid/view/View;Landroid/graphics/Rect;)I
.end method

.method public abstract getChildBounds(Landroid/view/View;IIZ)Lcom/android/launcher3/touch/PagedOrientationHandler$ChildBounds;
.end method

.method public abstract getChildStart(Landroid/view/View;)I
.end method

.method public abstract getClearAllSidePadding(Lcom/android/quickstep/views/RecentsView;Z)I
.end method

.method public abstract getDefaultSplitPosition(Lcom/android/launcher3/DeviceProfile;)I
.end method

.method public abstract getDegreesRotated()F
.end method

.method public abstract getDistanceToBottomOfRect(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)I
.end method

.method public abstract getDwbLayoutTranslations(IILcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;Lcom/android/launcher3/DeviceProfile;[Landroid/view/View;ILandroid/view/View;)Landroid/util/Pair;
.end method

.method public abstract getEnd(Landroid/graphics/RectF;)F
.end method

.method public abstract getFinalSplitPlaceholderBounds(ILcom/android/launcher3/DeviceProfile;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
.end method

.method public abstract getFloatingTaskOffscreenTranslationTarget(Lcom/android/quickstep/views/FloatingTaskView;Landroid/graphics/RectF;ILcom/android/launcher3/DeviceProfile;)F
.end method

.method public abstract getFloatingTaskPrimaryTranslation(Landroid/view/View;Lcom/android/launcher3/DeviceProfile;)Ljava/lang/Float;
.end method

.method public abstract getInitialSplitPlaceholderBounds(IILcom/android/launcher3/DeviceProfile;ILandroid/graphics/Rect;)V
.end method

.method public abstract getMeasuredSize(Landroid/view/View;)I
.end method

.method public abstract getPrimaryDirection(Landroid/view/MotionEvent;I)F
.end method

.method public abstract getPrimaryScale(Landroid/view/View;)F
.end method

.method public abstract getPrimaryScroll(Landroid/view/View;)I
.end method

.method public abstract getPrimarySize(Landroid/graphics/RectF;)F
.end method

.method public abstract getPrimarySize(Landroid/view/View;)I
.end method

.method public abstract getPrimaryValue(FF)F
.end method

.method public abstract getPrimaryValue(II)I
.end method

.method public abstract getPrimaryValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract getPrimaryVelocity(Landroid/view/VelocityTracker;I)F
.end method

.method public abstract getPrimaryViewTranslate()Landroid/util/FloatProperty;
.end method

.method public abstract getRecentsRtlSetting(Landroid/content/res/Resources;)Z
.end method

.method public abstract getRotation()I
.end method

.method public abstract getScrollOffsetEnd(Landroid/view/View;Landroid/graphics/Rect;)I
.end method

.method public abstract getScrollOffsetStart(Landroid/view/View;Landroid/graphics/Rect;)I
.end method

.method public abstract getSecondaryDimension(Landroid/view/View;)I
.end method

.method public abstract getSecondaryTranslationDirectionFactor()I
.end method

.method public abstract getSecondaryValue(FF)F
.end method

.method public abstract getSecondaryValue(II)I
.end method

.method public abstract getSecondaryValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract getSecondaryViewTranslate()Landroid/util/FloatProperty;
.end method

.method public abstract getSplitPositionOptions(Lcom/android/launcher3/DeviceProfile;)Ljava/util/List;
.end method

.method public abstract getSplitSelectTaskOffset(Landroid/util/FloatProperty;Landroid/util/FloatProperty;Lcom/android/launcher3/DeviceProfile;)Landroid/util/Pair;
.end method

.method public abstract getSplitTranslationDirectionFactor(ILcom/android/launcher3/DeviceProfile;)I
.end method

.method public abstract getStart(Landroid/graphics/RectF;)F
.end method

.method public abstract getTaskDragDisplacementFactor(Z)I
.end method

.method public abstract getTaskMenuWidth(Lcom/android/quickstep/views/TaskThumbnailView;Lcom/android/launcher3/DeviceProfile;I)I
.end method

.method public abstract getTaskMenuX(FLcom/android/quickstep/views/TaskThumbnailView;Lcom/android/launcher3/DeviceProfile;F)F
.end method

.method public abstract getTaskMenuY(FLcom/android/quickstep/views/TaskThumbnailView;ILandroid/view/View;F)F
.end method

.method public abstract getUpDirection(Z)I
.end method

.method public abstract getUpDownSwipeDirection()Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;
.end method

.method public abstract isGoingUp(FZ)Z
.end method

.method public abstract isLayoutNaturalToLauncher()Z
.end method

.method public abstract measureGroupedTaskViewThumbnailBounds(Lcom/android/quickstep/views/TaskThumbnailView;Lcom/android/quickstep/views/TaskThumbnailView;IILcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;Lcom/android/launcher3/DeviceProfile;Z)V
.end method

.method public abstract set(Lcom/android/quickstep/util/TaskViewSimulator;Lcom/android/quickstep/y1;II)V
.end method

.method public abstract setFloatingTaskPrimaryTranslation(Landroid/view/View;FLcom/android/launcher3/DeviceProfile;)V
.end method

.method public abstract setLayoutParamsForTaskMenuOptionItem(Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout;)V
.end method

.method public abstract setMaxScroll(Landroid/view/accessibility/AccessibilityEvent;I)V
.end method

.method public abstract setPrimary(Ljava/lang/Object;Lcom/android/launcher3/touch/k;F)V
.end method

.method public abstract setPrimary(Ljava/lang/Object;Lcom/android/launcher3/touch/k;I)V
.end method

.method public abstract setPrimaryScale(Lcom/android/quickstep/views/IconView;F)V
.end method

.method public abstract setSecondary(Ljava/lang/Object;Lcom/android/launcher3/touch/k;F)V
.end method

.method public abstract setSecondaryScale(Lcom/android/quickstep/views/IconView;F)V
.end method

.method public abstract setSplitIconParams(Lcom/android/quickstep/views/IconView;Lcom/android/quickstep/views/IconView;IIIIIZLcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;)V
.end method

.method public abstract setSplitInstructionsParams(Landroid/view/View;Lcom/android/launcher3/DeviceProfile;II)V
.end method

.method public abstract setSplitTaskSwipeRect(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;I)V
.end method

.method public abstract setTaskIconParams(Landroid/widget/FrameLayout$LayoutParams;IIIZ)V
.end method

.method public abstract setTaskOptionsMenuLayoutOrientation(Landroid/widget/LinearLayout;ILandroid/graphics/drawable/ShapeDrawable;)V
.end method

.method public abstract updateSplitIconParams(Landroid/view/View;FFFFIILcom/android/launcher3/DeviceProfile;I)V
.end method
