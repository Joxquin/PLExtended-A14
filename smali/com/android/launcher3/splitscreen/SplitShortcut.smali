.class public abstract Lcom/android/launcher3/splitscreen/SplitShortcut;
.super Lcom/android/launcher3/popup/SystemShortcut;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final position:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;


# direct methods
.method public constructor <init>(IILandroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;)V
    .locals 1

    const-string v0, "position"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/popup/SystemShortcut;-><init>(IILandroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    iput-object p6, p0, Lcom/android/launcher3/splitscreen/SplitShortcut;->position:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    const-class p1, Lcom/android/launcher3/popup/SystemShortcut;

    const-string p1, "SystemShortcut"

    iput-object p1, p0, Lcom/android/launcher3/splitscreen/SplitShortcut;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getPosition()Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/splitscreen/SplitShortcut;->position:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    iget-object p1, p0, Lcom/android/launcher3/popup/SystemShortcut;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v0, v0, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    const-string v1, "workspaceItemInfo.bitmap.icon"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    const-string v1, "workspaceItemInfo.intent"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    move-object v5, p1

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v0, v0, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    const-string v1, "appInfo.bitmap.icon"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/launcher3/model/data/AppInfo;->intent:Landroid/content/Intent;

    const-string v1, "appInfo.intent"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/android/launcher3/splitscreen/SplitShortcut;->position:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    iget p1, p1, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;->stagePosition:I

    if-nez p1, :cond_1

    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_APP_ICON_MENU_SPLIT_LEFT_TOP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_2

    :cond_1
    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_APP_ICON_MENU_SPLIT_RIGHT_BOTTOM:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    :goto_2
    move-object v8, p1

    new-instance p1, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;

    iget-object v3, p0, Lcom/android/launcher3/popup/SystemShortcut;->mOriginalView:Landroid/view/View;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v6, p0, Lcom/android/launcher3/splitscreen/SplitShortcut;->position:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    iget-object v7, p0, Lcom/android/launcher3/popup/SystemShortcut;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;-><init>(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;)V

    goto :goto_3

    :cond_2
    iget-object p1, p0, Lcom/android/launcher3/splitscreen/SplitShortcut;->TAG:Ljava/lang/String;

    const-string v0, "unknown item type"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_3
    if-nez p1, :cond_3

    const-string p0, "QuickstepSystemShortcut"

    const-string p1, "no split selection source"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object p0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Landroid/content/Context;

    invoke-static {p0}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p0, p1}, Lcom/android/launcher3/views/ActivityContext;->startSplitSelection(Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;)V

    return-void
.end method
