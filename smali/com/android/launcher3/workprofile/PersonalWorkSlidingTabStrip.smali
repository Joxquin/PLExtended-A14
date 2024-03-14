.class public Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/pageindicators/PageIndicator;


# instance fields
.field private final mIsAlignOnIcon:Z

.field private mLastActivePage:I

.field private mOnActivePageChangedListener:Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip$OnActivePageChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;->mLastActivePage:I

    sget-object v1, Lcom/android/launcher3/R$styleable;->PersonalWorkSlidingTabStrip:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;->mIsAlignOnIcon:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static getTabWidth(ILandroid/content/Context;)I
    .locals 1

    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p1

    iget v0, p1, Lcom/android/launcher3/DeviceProfile;->numShownAllAppsColumns:I

    div-int v0, p0, v0

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    sub-int/2addr v0, p1

    sub-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public final hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onMeasure(II)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;->mIsAlignOnIcon:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;->getTabWidth(ILandroid/content/Context;)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public final setActiveMarker(I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    if-ne v1, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;->mOnActivePageChangedListener:Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip$OnActivePageChangedListener;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;->mLastActivePage:I

    if-eq v1, p1, :cond_2

    invoke-interface {v0, p1}, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip$OnActivePageChangedListener;->onActivePageChanged(I)V

    :cond_2
    iput p1, p0, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;->mLastActivePage:I

    return-void
.end method

.method public final setMarkersCount(I)V
    .locals 0

    return-void
.end method

.method public final setOnActivePageChangedListener(Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip$OnActivePageChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;->mOnActivePageChangedListener:Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip$OnActivePageChangedListener;

    return-void
.end method

.method public final setScroll(II)V
    .locals 0

    return-void
.end method
