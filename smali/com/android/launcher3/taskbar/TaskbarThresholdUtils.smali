.class public final Lcom/android/launcher3/taskbar/TaskbarThresholdUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getAppWindowThreshold(Landroid/content/res/Resources;Lcom/android/launcher3/DeviceProfile;)I
    .locals 2

    const v0, 0x7f070508

    const v1, 0x7f070509

    invoke-static {p0, p1, v0, v1}, Lcom/android/launcher3/taskbar/TaskbarThresholdUtils;->getThreshold(Landroid/content/res/Resources;Lcom/android/launcher3/DeviceProfile;II)I

    move-result p0

    return p0
.end method

.method public static getCatchUpThreshold(Landroid/content/res/Resources;Lcom/android/launcher3/DeviceProfile;)I
    .locals 2

    const v0, 0x7f070510

    const v1, 0x7f070511

    invoke-static {p0, p1, v0, v1}, Lcom/android/launcher3/taskbar/TaskbarThresholdUtils;->getThreshold(Landroid/content/res/Resources;Lcom/android/launcher3/DeviceProfile;II)I

    move-result p0

    return p0
.end method

.method public static getFromNavThreshold(Landroid/content/res/Resources;Lcom/android/launcher3/DeviceProfile;)I
    .locals 2

    const v0, 0x7f070524

    const v1, 0x7f070533

    invoke-static {p0, p1, v0, v1}, Lcom/android/launcher3/taskbar/TaskbarThresholdUtils;->getThreshold(Landroid/content/res/Resources;Lcom/android/launcher3/DeviceProfile;II)I

    move-result p0

    return p0
.end method

.method public static getHomeOverviewThreshold(Landroid/content/res/Resources;Lcom/android/launcher3/DeviceProfile;)I
    .locals 2

    const v0, 0x7f070526

    const v1, 0x7f070527

    invoke-static {p0, p1, v0, v1}, Lcom/android/launcher3/taskbar/TaskbarThresholdUtils;->getThreshold(Landroid/content/res/Resources;Lcom/android/launcher3/DeviceProfile;II)I

    move-result p0

    return p0
.end method

.method private static getThreshold(Landroid/content/res/Resources;Lcom/android/launcher3/DeviceProfile;II)I
    .locals 1

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_DYNAMIC_TASKBAR_THRESHOLDS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_0
    iget-boolean p2, p1, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz p2, :cond_1

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    goto :goto_0

    :cond_1
    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    :goto_0
    int-to-float p1, p1

    const p2, 0x3c4ccccd    # 0.0125f

    mul-float/2addr p1, p2

    sget p2, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float p2, p2

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p2, v0

    div-float/2addr p1, p2

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->dpToPx(F)I

    move-result p1

    int-to-float p1, p1

    sget-object p2, LD/n;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method
