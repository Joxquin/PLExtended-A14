.class final Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mContext:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;

.field private final mNavbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

.field private final mOverlayController:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;

.field private final mSlideInView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;

.field private final mTaskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;Lcom/android/launcher3/taskbar/TaskbarControllers;Lcom/android/launcher3/taskbar/allapps/TaskbarSearchSessionController;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mContext:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mSlideInView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;

    invoke-virtual {p2}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->getAppsView()Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    move-result-object v0

    iget-object v1, p3, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    iput-object v1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mTaskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    iget-object v2, p3, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    iput-object v2, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mNavbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    iget-object p3, p3, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarOverlayController:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;

    iput-object p3, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mOverlayController:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;

    new-instance v3, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController$TaskbarAllAppsCallbacks;

    invoke-direct {v3, p0, p4}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController$TaskbarAllAppsCallbacks;-><init>(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;Lcom/android/launcher3/taskbar/allapps/TaskbarSearchSessionController;)V

    invoke-virtual {p2, v3}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->init(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController$TaskbarAllAppsCallbacks;)V

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getFloatingHeaderView()Lcom/android/launcher3/allapps/FloatingHeaderView;

    move-result-object p4

    const-class v0, Lcom/android/launcher3/appprediction/AppsDividerView;

    invoke-virtual {p4, v0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->findFixedRowByType(Ljava/lang/Class;)Lcom/android/launcher3/allapps/FloatingHeaderRow;

    move-result-object p4

    check-cast p4, Lcom/android/launcher3/appprediction/AppsDividerView;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->getOnboardingPrefs()Lcom/android/launcher3/util/OnboardingPrefs;

    move-result-object v0

    const-string v3, "launcher.all_apps_visited_count"

    invoke-virtual {v0, v3}, Lcom/android/launcher3/util/OnboardingPrefs;->hasReachedMaxCount(Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x1

    xor-int/2addr v0, v4

    invoke-virtual {p4, v0}, Lcom/android/launcher3/appprediction/AppsDividerView;->setShowAllAppsLabel(Z)V

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->getOnboardingPrefs()Lcom/android/launcher3/util/OnboardingPrefs;

    move-result-object p4

    invoke-virtual {p4, v3}, Lcom/android/launcher3/util/OnboardingPrefs;->incrementEventCount(Ljava/lang/String;)Z

    invoke-static {p1}, Lcom/android/launcher3/util/DisplayController;->isTransientTaskbar(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x40

    invoke-virtual {v1, p1, v4}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    invoke-virtual {p3}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->getOpenDuration()I

    move-result p1

    int-to-long p3, p1

    invoke-virtual {v1, p3, p4}, Lcom/android/launcher3/taskbar/TaskbarStashController;->applyState(J)V

    :cond_0
    invoke-virtual {v2, v4}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->setSlideInViewVisible(Z)V

    new-instance p1, Lcom/android/launcher3/taskbar/allapps/d;

    invoke-direct {p1, p0}, Lcom/android/launcher3/taskbar/allapps/d;-><init>(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;)V

    invoke-virtual {p2, p1}, Lcom/android/launcher3/views/AbstractSlideInView;->setOnCloseBeginListener(Lcom/android/launcher3/taskbar/allapps/d;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mNavbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->setSlideInViewVisible(Z)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mContext:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenContainer(Lcom/android/launcher3/views/ActivityContext;I)V

    invoke-static {v0}, Lcom/android/launcher3/util/DisplayController;->isTransientTaskbar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mTaskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    const/16 v2, 0x40

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mOverlayController:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->getCloseDuration()I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->applyState(J)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic b(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;)Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mOverlayController:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;

    return-object p0
.end method


# virtual methods
.method public final show(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mSlideInView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->show(Z)V

    return-void
.end method
