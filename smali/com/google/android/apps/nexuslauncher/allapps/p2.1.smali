.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/p2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidgetPreview;

.field public final synthetic b:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidgetPreview;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/p2;->a:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidgetPreview;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/p2;->b:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/p2;->a:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidgetPreview;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/p2;->b:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    new-instance v1, Lcom/android/launcher3/model/WidgetItem;

    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidgetPreview;->e:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-static {v2}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidgetPreview;->f:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v3

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidgetPreview;->e:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/android/launcher3/model/WidgetItem;-><init>(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/icons/IconCache;Landroid/content/Context;)V

    return-object v1
.end method
