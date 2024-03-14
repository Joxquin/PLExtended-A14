.class public final Lcom/android/launcher3/widget/PendingAppWidgetHostView;
.super Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/launcher3/icons/IconCache$ItemInfoUpdateReceiver;


# instance fields
.field private mCenterDrawable:Lcom/android/launcher3/icons/FastBitmapDrawable;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private final mDisabledForSafeMode:Z

.field private mDrawableSizeChanged:Z

.field private final mInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

.field private final mPaint:Landroid/text/TextPaint;

.field private final mRect:Landroid/graphics/Rect;

.field private mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mSetupTextLayout:Landroid/text/Layout;

.field private final mStartState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/icons/IconCache;Z)V
    .locals 2

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f1404bd

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget p1, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    iput p1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mStartState:I

    iput-boolean p4, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mDisabledForSafeMode:Z

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object p4

    const v0, 0x1010036

    invoke-static {v0, p4}, Lcom/android/launcher3/icons/GraphicsUtils;->getAttrColor(ILandroid/content/Context;)I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/text/TextPaint;->setColor(I)V

    iget-object p4, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p4}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p4

    iget p4, p4, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float p4, p4

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, p4, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p4

    invoke-virtual {p1, p4}, Landroid/text/TextPaint;->setTextSize(F)V

    const p1, 0x7f08031b

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->setBackgroundResource(I)V

    invoke-virtual {p0, v1}, Landroid/appwidget/AppWidgetHostView;->setWillNotDraw(Z)V

    const/4 p1, 0x0

    invoke-super {p0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    iget-object p1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseDraggingActivity;->getItemOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mClickListener:Landroid/view/View$OnClickListener;

    iget-object p1, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->pendingItemInfo:Lcom/android/launcher3/model/data/PackageItemInfo;

    if-nez p1, :cond_0

    new-instance p1, Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object p4, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p4

    iget-object v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v0, p4}, Lcom/android/launcher3/model/data/PackageItemInfo;-><init>(ILandroid/os/UserHandle;Ljava/lang/String;)V

    iput-object p1, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->pendingItemInfo:Lcom/android/launcher3/model/data/PackageItemInfo;

    invoke-virtual {p3, p0, p1}, Lcom/android/launcher3/icons/IconCache;->updateIconInBackground(Lcom/android/launcher3/icons/IconCache$ItemInfoUpdateReceiver;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Lcom/android/launcher3/icons/cache/HandlerRunnable;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->reapplyItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final applyState()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget p0, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->installProgress:I

    const/4 v1, 0x0

    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_0
    return-void
.end method

.method public final getDefaultView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0045

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->applyState()V

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->invalidate()V

    return-object v0
.end method

.method public final isReadyForClickSetup()Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final isReinflateIfNeeded()Z
    .locals 1

    iget v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mStartState:I

    iget-object p0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget p0, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-boolean v2, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mDrawableSizeChanged:Z

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingBottom()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingLeft()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingRight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/appwidget/AppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070430

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/appwidget/AppWidgetHostView;->getWidth()I

    move-result v8

    sub-int/2addr v8, v5

    sub-int/2addr v8, v6

    mul-int/lit8 v6, v7, 0x2

    sub-int v12, v8, v6

    invoke-virtual/range {p0 .. p0}, Landroid/appwidget/AppWidgetHostView;->getHeight()I

    move-result v8

    sub-int/2addr v8, v3

    sub-int/2addr v8, v4

    sub-int/2addr v8, v6

    iget-object v4, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    if-nez v4, :cond_1

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    invoke-static {v12, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v6, v6, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/appwidget/AppWidgetHostView;->getWidth()I

    move-result v3

    iget-object v4, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/appwidget/AppWidgetHostView;->getHeight()I

    move-result v4

    iget-object v5, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v2, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Lcom/android/launcher3/icons/FastBitmapDrawable;

    iget-object v3, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move v2, v6

    goto/16 :goto_1

    :cond_1
    invoke-static {v12, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v9

    const v17, 0x3fe66666    # 1.8f

    mul-float v10, v4, v17

    int-to-float v9, v9

    cmpl-float v10, v10, v9

    if-lez v10, :cond_2

    div-float v4, v9, v17

    :cond_2
    iget v9, v2, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v9, v9

    invoke-static {v4, v9}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/appwidget/AppWidgetHostView;->getHeight()I

    move-result v9

    sub-int/2addr v9, v4

    div-int/lit8 v18, v9, 0x2

    const/4 v15, 0x0

    iput-object v15, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    if-lez v12, :cond_4

    new-instance v14, Landroid/text/StaticLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/appwidget/AppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f1300c1

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    iget-object v11, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mPaint:Landroid/text/TextPaint;

    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object v9, v14

    move-object v6, v14

    move/from16 v14, v16

    move/from16 v15, v19

    move/from16 v16, v20

    invoke-direct/range {v9 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v6, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    invoke-virtual {v6}, Landroid/text/Layout;->getHeight()I

    move-result v6

    int-to-float v9, v6

    int-to-float v10, v4

    mul-float v10, v10, v17

    add-float/2addr v10, v9

    iget v9, v2, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    int-to-float v9, v9

    add-float/2addr v10, v9

    int-to-float v8, v8

    cmpg-float v8, v10, v8

    if-gez v8, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/appwidget/AppWidgetHostView;->getHeight()I

    move-result v8

    sub-int/2addr v8, v6

    iget v6, v2, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    sub-int/2addr v8, v6

    sub-int/2addr v8, v4

    div-int/lit8 v18, v8, 0x2

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    iput-object v6, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    :cond_4
    :goto_0
    move/from16 v6, v18

    iget-object v8, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v9, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v8, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/appwidget/AppWidgetHostView;->getWidth()I

    move-result v9

    sub-int/2addr v9, v4

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {v8, v9, v6}, Landroid/graphics/Rect;->offset(II)V

    iget-object v6, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Lcom/android/launcher3/icons/FastBitmapDrawable;

    iget-object v8, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v6, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    add-int/2addr v5, v7

    iput v5, v6, Landroid/graphics/Rect;->left:I

    const v8, 0x3ecccccd    # 0.4f

    int-to-float v4, v4

    mul-float/2addr v4, v8

    float-to-int v4, v4

    add-int v8, v5, v4

    iput v8, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v7

    iput v3, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iput v3, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v3, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v3, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iput v5, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v4, v2

    iput v4, v3, Landroid/graphics/Rect;->top:I

    :cond_5
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mDrawableSizeChanged:Z

    :cond_6
    iget-object v2, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v2, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_7
    iget-object v2, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    if-eqz v2, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    invoke-virtual {v0, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_8
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/appwidget/AppWidgetHostView;->onSizeChanged(IIII)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mDrawableSizeChanged:Z

    return-void
.end method

.method public final reapplyItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Lcom/android/launcher3/icons/FastBitmapDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Lcom/android/launcher3/icons/FastBitmapDrawable;

    :cond_0
    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v0, v0, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->pendingItemInfo:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget v2, v0, Lcom/android/launcher3/model/data/PackageItemInfo;->widgetCategory:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->newIcon(ILandroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v0

    :goto_0
    iget-boolean v2, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mDisabledForSafeMode:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->newIcon(ILandroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setIsDisabled(Z)V

    iput-object p1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Lcom/android/launcher3/icons/FastBitmapDrawable;

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getDisabledColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Lcom/android/launcher3/icons/FastBitmapDrawable;

    :goto_1
    iput-object v1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->isReadyForClickSetup()Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->newIcon(ILandroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v0

    :cond_4
    iput-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0802ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget p1, p1, Lcom/android/launcher3/icons/BitmapInfo;->color:I

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    aget p1, v0, v3

    const v1, 0x3f333333    # 0.7f

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    aput p1, v0, v3

    const/4 p1, 0x2

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v0, p1

    iget-object p1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_2

    :cond_5
    if-nez v0, :cond_6

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->newPendingIcon(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Lcom/android/launcher3/graphics/PreloadIconDrawable;

    move-result-object v0

    :cond_6
    iput-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Lcom/android/launcher3/icons/FastBitmapDrawable;

    iput-object v1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->applyState()V

    :goto_2
    iget-object p1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-boolean v3, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mDrawableSizeChanged:Z

    :cond_7
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->invalidate()V

    return-void
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final updateAppWidget(Landroid/widget/RemoteViews;)V
    .locals 2

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget v1, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "appWidgetRestoreCompleted"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->reInflate()V

    :cond_0
    return-void
.end method

.method public final updateAppWidgetSize(Landroid/os/Bundle;IIII)V
    .locals 0

    .line 1
    return-void
.end method

.method public final updateAppWidgetSize(Landroid/os/Bundle;Ljava/util/List;)V
    .locals 0

    .line 2
    return-void
.end method

.method public final verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
