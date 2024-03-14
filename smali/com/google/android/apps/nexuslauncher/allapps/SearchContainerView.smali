.class public Lcom/google/android/apps/nexuslauncher/allapps/SearchContainerView;
.super Lcom/android/launcher3/allapps/LauncherAllAppsContainerView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/LauncherAllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final createSearchUiDelegate()Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;
    .locals 2

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/d;

    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->g:Lcom/google/android/apps/nexuslauncher/allapps/U;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/d;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;Lcom/google/android/apps/nexuslauncher/allapps/y0;)V

    return-object v0
.end method

.method public final shouldFloatingSearchBarBePillWhenUnfocused()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->g:Lcom/google/android/apps/nexuslauncher/allapps/U;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/launcher3/allapps/LauncherAllAppsContainerView;->shouldFloatingSearchBarBePillWhenUnfocused()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
