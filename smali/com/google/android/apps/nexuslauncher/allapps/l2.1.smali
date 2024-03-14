.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/l2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;

.field public final synthetic b:Landroid/appwidget/AppWidgetProviderInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/l2;->a:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/l2;->b:Landroid/appwidget/AppWidgetProviderInfo;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/l2;->a:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/l2;->b:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->f:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-static {v1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultWidget;->f:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-static {v0, p0}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/launcher3/icons/IconCache;->getTitleNoCache(Lcom/android/launcher3/icons/ComponentWithLabel;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
