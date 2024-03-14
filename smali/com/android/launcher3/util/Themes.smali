.class public final Lcom/android/launcher3/util/Themes;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getActivityThemeRes(ILandroid/content/Context;)I
    .locals 4

    .line 2
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    and-int/lit8 v3, p0, 0x1

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v0, :cond_1

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    move v1, v2

    .line 3
    :cond_1
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isDarkTheme(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_4

    if-eqz v3, :cond_2

    const p0, 0x7f140017

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    const p0, 0x7f140016

    goto :goto_1

    :cond_3
    const p0, 0x7f140015

    :goto_1
    return p0

    :cond_4
    if-eqz v3, :cond_5

    const p0, 0x7f140019

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    const p0, 0x7f140018

    goto :goto_2

    :cond_6
    const p0, 0x7f140014

    :goto_2
    return p0
.end method

.method public static getActivityThemeRes(Landroid/content/Context;)I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/android/launcher3/util/WallpaperColorHints;->get(Landroid/content/Context;)Lcom/android/launcher3/util/WallpaperColorHints;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/WallpaperColorHints;->getHints()I

    move-result v0

    invoke-static {v0, p0}, Lcom/android/launcher3/util/Themes;->getActivityThemeRes(ILandroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static getAttrBoolean(ILandroid/content/Context;)Z
    .locals 0

    filled-new-array {p0}, [I

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method public static getDialogCornerRadius(Landroid/content/Context;)F
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const v1, 0x1010571

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return v0
.end method

.method public static getNavBarScrimColor(Landroid/content/Context;)I
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-eqz v0, :cond_0

    const v0, 0x7f060339

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const v0, 0x7f04004a

    invoke-static {v0, p0}, Lcom/android/launcher3/icons/GraphicsUtils;->getAttrColor(ILandroid/content/Context;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static isThemedIconEnabled(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->Companion:Lcom/android/launcher3/LauncherPrefs$Companion;

    invoke-static {p0}, Lcom/android/launcher3/LauncherPrefs$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->THEMED_ICONS:Lcom/android/launcher3/ConstantItem;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherPrefs;->get(Lcom/android/launcher3/ConstantItem;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
