.class final Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/PersistedItemArray$ItemFactory;


# instance fields
.field private final mAppState:Lcom/android/launcher3/LauncherAppState;

.field private final mContainer:I

.field private final mMaxCount:I

.field private final mPinnedShortcuts:Ljava/util/Map;

.field private mReadCount:I

.field private final mUMS:Lcom/android/launcher3/model/UserManagerState;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/UserManagerState;Ljava/util/Map;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;->mReadCount:I

    iput-object p1, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;->mAppState:Lcom/android/launcher3/LauncherAppState;

    iput-object p2, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;->mUMS:Lcom/android/launcher3/model/UserManagerState;

    iput-object p3, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;->mPinnedShortcuts:Ljava/util/Map;

    iput p4, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;->mMaxCount:I

    iput p5, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;->mContainer:I

    return-void
.end method


# virtual methods
.method public final createInfo(ILandroid/os/UserHandle;Landroid/content/Intent;)Lcom/android/launcher3/model/data/ItemInfo;
    .locals 4

    iget v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;->mReadCount:I

    iget v1, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;->mMaxCount:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return-object v2

    :cond_0
    iget v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;->mContainer:I

    iget-object v1, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;->mAppState:Lcom/android/launcher3/LauncherAppState;

    if-eqz p1, :cond_3

    const/4 v3, 0x6

    if-eq p1, v3, :cond_1

    return-object v2

    :cond_1
    invoke-static {p3, p2}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;->mPinnedShortcuts:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    if-nez p1, :cond_2

    return-object v2

    :cond_2
    new-instance p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;)V

    iput v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Lcom/android/launcher3/icons/IconCache;->getShortcutIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/ShortcutInfo;)V

    iget p1, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;->mReadCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;->mReadCount:I

    return-object p2

    :cond_3
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v3, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1, p3, p2}, Landroid/content/pm/LauncherApps;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object p1

    if-nez p1, :cond_4

    return-object v2

    :cond_4
    new-instance p3, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v2, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;->mUMS:Lcom/android/launcher3/model/UserManagerState;

    invoke-virtual {v2, p2}, Lcom/android/launcher3/model/UserManagerState;->isUserQuiet(Landroid/os/UserHandle;)Z

    move-result v2

    invoke-direct {p3, p1, p2, v2}, Lcom/android/launcher3/model/data/AppInfo;-><init>(Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;Z)V

    iput v0, p3, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p3, p1, v0}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;Z)V

    iget p1, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;->mReadCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;->mReadCount:I

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/android/launcher3/model/data/AppInfo;->makeWorkspaceItem(Landroid/content/Context;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object p0

    return-object p0
.end method
