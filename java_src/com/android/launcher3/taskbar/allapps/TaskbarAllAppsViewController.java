package com.android.launcher3.taskbar.allapps;

import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.allapps.AllAppsTransitionListener;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.appprediction.AppsDividerView;
import com.android.launcher3.taskbar.NavbarButtonsViewController;
import com.android.launcher3.taskbar.TaskbarControllers;
import com.android.launcher3.taskbar.TaskbarStashController;
import com.android.launcher3.taskbar.overlay.TaskbarOverlayContext;
import com.android.launcher3.taskbar.overlay.TaskbarOverlayController;
import com.android.launcher3.util.DisplayController;
import com.android.launcher3.util.OnboardingPrefs;
import com.android.launcher3.views.AbstractSlideInView;
/* loaded from: classes.dex */
public final class TaskbarAllAppsViewController {
    private final TaskbarOverlayContext mContext;
    private final NavbarButtonsViewController mNavbarButtonsViewController;
    private final TaskbarOverlayController mOverlayController;
    private final TaskbarAllAppsSlideInView mSlideInView;
    private final TaskbarStashController mTaskbarStashController;

    /* loaded from: classes.dex */
    public final class TaskbarAllAppsCallbacks implements AllAppsTransitionListener {
        private final TaskbarSearchSessionController mSearchSessionController;

        public TaskbarAllAppsCallbacks(TaskbarSearchSessionController taskbarSearchSessionController) {
            TaskbarAllAppsViewController.this = r1;
            this.mSearchSessionController = taskbarSearchSessionController;
        }

        public final boolean handleSearchBackInvoked() {
            return this.mSearchSessionController.handleBackInvoked();
        }

        public final void onAllAppsAnimationPending(PendingAnimation pendingAnimation, boolean z4) {
            this.mSearchSessionController.onAllAppsAnimationPending(pendingAnimation, z4);
        }

        @Override // com.android.launcher3.allapps.AllAppsTransitionListener
        public final void onAllAppsTransitionEnd(boolean z4) {
            this.mSearchSessionController.onAllAppsTransitionEnd(z4);
        }

        @Override // com.android.launcher3.allapps.AllAppsTransitionListener
        public final void onAllAppsTransitionStart(boolean z4) {
            this.mSearchSessionController.onAllAppsTransitionStart(z4);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v2, types: [com.android.launcher3.taskbar.allapps.d] */
    public TaskbarAllAppsViewController(TaskbarOverlayContext taskbarOverlayContext, TaskbarAllAppsSlideInView taskbarAllAppsSlideInView, TaskbarControllers taskbarControllers, TaskbarSearchSessionController taskbarSearchSessionController) {
        this.mContext = taskbarOverlayContext;
        this.mSlideInView = taskbarAllAppsSlideInView;
        TaskbarAllAppsContainerView appsView = taskbarAllAppsSlideInView.getAppsView();
        TaskbarStashController taskbarStashController = taskbarControllers.taskbarStashController;
        this.mTaskbarStashController = taskbarStashController;
        NavbarButtonsViewController navbarButtonsViewController = taskbarControllers.navbarButtonsViewController;
        this.mNavbarButtonsViewController = navbarButtonsViewController;
        TaskbarOverlayController taskbarOverlayController = taskbarControllers.taskbarOverlayController;
        this.mOverlayController = taskbarOverlayController;
        taskbarAllAppsSlideInView.init(new TaskbarAllAppsCallbacks(taskbarSearchSessionController));
        ((AppsDividerView) appsView.getFloatingHeaderView().findFixedRowByType(AppsDividerView.class)).setShowAllAppsLabel(!taskbarOverlayContext.getOnboardingPrefs().hasReachedMaxCount(OnboardingPrefs.ALL_APPS_VISITED_COUNT));
        taskbarOverlayContext.getOnboardingPrefs().incrementEventCount(OnboardingPrefs.ALL_APPS_VISITED_COUNT);
        if (DisplayController.isTransientTaskbar(taskbarOverlayContext)) {
            taskbarStashController.updateStateForFlag(64, true);
            taskbarStashController.applyState(taskbarOverlayController.getOpenDuration());
        }
        navbarButtonsViewController.setSlideInViewVisible(true);
        taskbarAllAppsSlideInView.setOnCloseBeginListener(new AbstractSlideInView.OnCloseListener() { // from class: com.android.launcher3.taskbar.allapps.d
            @Override // com.android.launcher3.views.AbstractSlideInView.OnCloseListener
            public final void onSlideInViewClosed() {
                TaskbarAllAppsViewController.a(TaskbarAllAppsViewController.this);
            }
        });
    }

    public static /* synthetic */ void a(TaskbarAllAppsViewController taskbarAllAppsViewController) {
        taskbarAllAppsViewController.mNavbarButtonsViewController.setSlideInViewVisible(false);
        TaskbarOverlayContext taskbarOverlayContext = taskbarAllAppsViewController.mContext;
        AbstractFloatingView.closeOpenContainer(taskbarOverlayContext, 2);
        if (DisplayController.isTransientTaskbar(taskbarOverlayContext)) {
            TaskbarStashController taskbarStashController = taskbarAllAppsViewController.mTaskbarStashController;
            taskbarStashController.updateStateForFlag(64, false);
            taskbarStashController.applyState(taskbarAllAppsViewController.mOverlayController.getCloseDuration());
        }
    }

    public static /* bridge */ /* synthetic */ TaskbarOverlayController b(TaskbarAllAppsViewController taskbarAllAppsViewController) {
        return taskbarAllAppsViewController.mOverlayController;
    }

    public final void show(boolean z4) {
        this.mSlideInView.show(z4);
    }
}
