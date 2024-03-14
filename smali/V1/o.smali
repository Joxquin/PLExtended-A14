.class public final synthetic LV1/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;

.field public final synthetic e:Lcom/android/launcher3/LauncherAppState;

.field public final synthetic f:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

.field public final synthetic g:Landroid/content/pm/ShortcutInfo;

.field public final synthetic h:Landroid/widget/Button;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/pm/ShortcutInfo;Landroid/widget/Button;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LV1/o;->d:Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;

    iput-object p2, p0, LV1/o;->e:Lcom/android/launcher3/LauncherAppState;

    iput-object p3, p0, LV1/o;->f:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iput-object p4, p0, LV1/o;->g:Landroid/content/pm/ShortcutInfo;

    iput-object p5, p0, LV1/o;->h:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, LV1/o;->d:Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;

    iget-object v1, p0, LV1/o;->e:Lcom/android/launcher3/LauncherAppState;

    iget-object v2, p0, LV1/o;->f:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v3, p0, LV1/o;->g:Landroid/content/pm/ShortcutInfo;

    iget-object p0, p0, LV1/o;->h:Landroid/widget/Button;

    sget v4, Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;->k:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/icons/IconCache;->getShortcutIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/ShortcutInfo;)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->newIcon(ILandroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v3, LV1/p;

    invoke-direct {v3, v0, p0, v1}, LV1/p;-><init>(Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;Landroid/widget/Button;Lcom/android/launcher3/icons/FastBitmapDrawable;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    return-void
.end method
