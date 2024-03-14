.class public final Lcom/google/android/apps/nexuslauncher/allapps/TaskbarSearchContainerView;
.super Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/nexuslauncher/allapps/TaskbarSearchContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/f;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 2
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/nexuslauncher/allapps/TaskbarSearchContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/f;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/f;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/nexuslauncher/allapps/TaskbarSearchContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final createSearchUiDelegate()Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;->getSearchSessionController()Lcom/android/launcher3/taskbar/allapps/TaskbarSearchSessionController;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/TaskbarToastSessionController;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/allapps/TaskbarToastSessionController;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    return-object v0

    :cond_1
    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/d;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/TaskbarToastSessionController;->g:Lcom/google/android/apps/nexuslauncher/allapps/P2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/d;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;Lcom/google/android/apps/nexuslauncher/allapps/y0;)V

    return-object v1
.end method
