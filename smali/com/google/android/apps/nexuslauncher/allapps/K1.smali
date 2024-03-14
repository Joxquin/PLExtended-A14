.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/K1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

.field public final synthetic b:Lcom/android/launcher3/LauncherAppState;

.field public final synthetic c:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

.field public final synthetic d:Landroid/content/pm/ShortcutInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;Lcom/android/launcher3/LauncherAppState;Lcom/google/android/apps/nexuslauncher/allapps/O1;Landroid/content/pm/ShortcutInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/K1;->a:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/K1;->b:Lcom/android/launcher3/LauncherAppState;

    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/K1;->c:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iput-object p4, p0, Lcom/google/android/apps/nexuslauncher/allapps/K1;->d:Landroid/content/pm/ShortcutInfo;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/K1;->a:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/K1;->b:Lcom/android/launcher3/LauncherAppState;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/K1;->c:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/K1;->d:Landroid/content/pm/ShortcutInfo;

    sget-object v3, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->D:Lcom/google/android/apps/nexuslauncher/allapps/E1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/google/android/apps/nexuslauncher/c;->l:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v3}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_APP_ICON_FOR_INLINE_SHORTCUTS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v3}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->o:Landroid/app/search/SearchTarget;

    invoke-static {v3}, Lz0/f;->e(Landroid/app/search/SearchTarget;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->u()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "icon_override"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object p0, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->o:Landroid/app/search/SearchTarget;

    invoke-static {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->t(Lcom/android/launcher3/LauncherAppState;Landroid/app/search/SearchTarget;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v0

    invoke-virtual {v0, v2, p0}, Lcom/android/launcher3/icons/IconCache;->getShortcutIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/ShortcutInfo;)V

    iget-object p0, v2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    :goto_0
    return-object p0
.end method
