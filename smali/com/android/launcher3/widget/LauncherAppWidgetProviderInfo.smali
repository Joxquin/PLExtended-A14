.class public Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
.super Landroid/appwidget/AppWidgetProviderInfo;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/icons/ComponentWithLabelAndIcon;


# instance fields
.field private mIsMinSizeFulfilled:Z

.field public maxSpanX:I

.field public maxSpanY:I

.field public minSpanX:I

.field public minSpanY:I

.field public spanX:I

.field public spanY:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    return-void
.end method

.method public static fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    .locals 2

    instance-of v0, p1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/appwidget/AppWidgetProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance p1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    invoke-direct {p1, v0}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :goto_0
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->initSpans(Lcom/android/launcher3/InvariantDeviceProfile;)V

    return-object p1
.end method

.method private static getSpan(FIII)I
    .locals 0

    add-int/2addr p2, p1

    add-int/2addr p2, p3

    int-to-float p1, p2

    int-to-float p2, p3

    add-float/2addr p0, p2

    div-float/2addr p1, p0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    const/4 p1, 0x1

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final getComponent()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    return-object p0
.end method

.method public final getFullResIcon(Lcom/android/launcher3/icons/IconCache;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    invoke-virtual {p1, p0, v0}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getFullResIcon(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getUser()Landroid/os/UserHandle;
    .locals 0

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method public initSpans(Lcom/android/launcher3/InvariantDeviceProfile;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v3, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    iget-object v5, v1, Lcom/android/launcher3/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v11, v4}, Lcom/android/launcher3/DeviceProfile;->getCellSize(Landroid/graphics/Point;)Landroid/graphics/Point;

    iget v12, v0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    iget-object v13, v11, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->x:I

    iget v14, v4, Landroid/graphics/Point;->x:I

    int-to-float v14, v14

    iget-object v15, v11, Lcom/android/launcher3/DeviceProfile;->widgetPadding:Landroid/graphics/Rect;

    iget v6, v15, Landroid/graphics/Rect;->left:I

    move-object/from16 v16, v5

    iget v5, v15, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v5

    invoke-static {v14, v6, v12, v13}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getSpan(FIII)I

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget v5, v0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    iget-object v6, v11, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget v12, v4, Landroid/graphics/Point;->y:I

    int-to-float v12, v12

    iget v13, v15, Landroid/graphics/Rect;->top:I

    iget v14, v15, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v13, v14

    invoke-static {v12, v13, v5, v6}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getSpan(FIII)I

    move-result v5

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    sget-boolean v5, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v5, :cond_1

    iget v5, v0, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeWidth:I

    if-lez v5, :cond_0

    iget-object v6, v11, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget v12, v4, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    iget v13, v15, Landroid/graphics/Rect;->left:I

    iget v14, v15, Landroid/graphics/Rect;->right:I

    add-int/2addr v13, v14

    invoke-static {v12, v13, v5, v6}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getSpan(FIII)I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_0
    iget v5, v0, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeHeight:I

    if-lez v5, :cond_1

    iget-object v6, v11, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget v12, v4, Landroid/graphics/Point;->y:I

    int-to-float v12, v12

    iget v13, v15, Landroid/graphics/Rect;->top:I

    iget v14, v15, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v13, v14

    invoke-static {v12, v13, v5, v6}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getSpan(FIII)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_1
    iget v5, v0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget-object v6, v11, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget v12, v4, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    iget v13, v15, Landroid/graphics/Rect;->left:I

    iget v14, v15, Landroid/graphics/Rect;->right:I

    add-int/2addr v13, v14

    invoke-static {v12, v13, v5, v6}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getSpan(FIII)I

    move-result v5

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget v5, v0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    iget-object v6, v11, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget v11, v4, Landroid/graphics/Point;->y:I

    int-to-float v11, v11

    iget v12, v15, Landroid/graphics/Rect;->top:I

    iget v13, v15, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v13

    invoke-static {v11, v12, v5, v6}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getSpan(FIII)I

    move-result v5

    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v10

    move-object/from16 v5, v16

    goto/16 :goto_0

    :cond_2
    sget-boolean v4, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v4, :cond_3

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->targetCellWidth:I

    if-lt v4, v7, :cond_3

    if-gt v4, v2, :cond_3

    iget v5, v0, Landroid/appwidget/AppWidgetProviderInfo;->targetCellHeight:I

    if-lt v5, v8, :cond_3

    if-gt v5, v3, :cond_3

    move v9, v4

    move v10, v5

    :cond_3
    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    iput v2, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->maxSpanX:I

    iput v3, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->maxSpanY:I

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    if-gt v2, v3, :cond_4

    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    if-gt v2, v3, :cond_4

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_1
    iput-boolean v6, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->mIsMinSizeFulfilled:Z

    iget v2, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    invoke-static {v9, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanX:I

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanY:I

    return-void
.end method

.method public final isMinSizeFulfilled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->mIsMinSizeFulfilled:Z

    return p0
.end method
