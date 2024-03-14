.class public final synthetic Lcom/android/launcher3/model/O0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Landroid/content/ComponentName;

.field public final synthetic c:Landroid/os/UserHandle;

.field public final synthetic d:Lcom/android/launcher3/LauncherAppState;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/UserHandle;Lcom/android/launcher3/LauncherAppState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/O0;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher3/model/O0;->b:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/launcher3/model/O0;->c:Landroid/os/UserHandle;

    iput-object p4, p0, Lcom/android/launcher3/model/O0;->d:Lcom/android/launcher3/LauncherAppState;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/model/O0;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher3/model/O0;->b:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/launcher3/model/O0;->c:Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/launcher3/model/O0;->d:Lcom/android/launcher3/LauncherAppState;

    const-class v3, Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/LauncherApps;

    invoke-static {v1}, Lcom/android/launcher3/model/data/AppInfo;->makeLaunchIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Landroid/content/pm/LauncherApps;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/android/launcher3/model/data/AppInfo;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/launcher3/model/data/AppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;Z)V

    invoke-virtual {v3, v0}, Lcom/android/launcher3/model/data/AppInfo;->makeWorkspaceItem(Landroid/content/Context;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object p0

    :goto_0
    return-object p0
.end method
