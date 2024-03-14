.class final Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController$TaskbarAllAppsCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/allapps/AllAppsTransitionListener;


# instance fields
.field private final mSearchSessionController:Lcom/android/launcher3/taskbar/allapps/TaskbarSearchSessionController;

.field final synthetic this$0:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;Lcom/android/launcher3/taskbar/allapps/TaskbarSearchSessionController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController$TaskbarAllAppsCallbacks;->this$0:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController$TaskbarAllAppsCallbacks;->mSearchSessionController:Lcom/android/launcher3/taskbar/allapps/TaskbarSearchSessionController;

    return-void
.end method


# virtual methods
.method public final handleSearchBackInvoked()Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController$TaskbarAllAppsCallbacks;->mSearchSessionController:Lcom/android/launcher3/taskbar/allapps/TaskbarSearchSessionController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarSearchSessionController;->handleBackInvoked()Z

    move-result p0

    return p0
.end method

.method public final onAllAppsAnimationPending(Lcom/android/launcher3/anim/PendingAnimation;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController$TaskbarAllAppsCallbacks;->mSearchSessionController:Lcom/android/launcher3/taskbar/allapps/TaskbarSearchSessionController;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/allapps/TaskbarSearchSessionController;->onAllAppsAnimationPending(Lcom/android/launcher3/anim/PendingAnimation;Z)V

    return-void
.end method

.method public final onAllAppsTransitionEnd(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController$TaskbarAllAppsCallbacks;->mSearchSessionController:Lcom/android/launcher3/taskbar/allapps/TaskbarSearchSessionController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/allapps/TaskbarSearchSessionController;->onAllAppsTransitionEnd(Z)V

    return-void
.end method

.method public final onAllAppsTransitionStart(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController$TaskbarAllAppsCallbacks;->mSearchSessionController:Lcom/android/launcher3/taskbar/allapps/TaskbarSearchSessionController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/allapps/TaskbarSearchSessionController;->onAllAppsTransitionStart(Z)V

    return-void
.end method
