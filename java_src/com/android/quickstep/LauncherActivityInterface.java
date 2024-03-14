package com.android.quickstep;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.Context;
import android.graphics.Rect;
import android.os.Handler;
import android.view.MotionEvent;
import android.view.RemoteAnimationTarget;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.LauncherInitListener;
import com.android.launcher3.LauncherState;
import com.android.launcher3.anim.AnimatorListeners;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.statehandlers.DepthController;
import com.android.launcher3.statehandlers.DesktopVisibilityController;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.statemanager.StatefulActivity;
import com.android.launcher3.taskbar.LauncherTaskbarUIController;
import com.android.launcher3.touch.PagedOrientationHandler;
import com.android.launcher3.uioverrides.QuickstepLauncher;
import com.android.launcher3.util.DisplayController;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.MultiPropertyFactory;
import com.android.launcher3.util.NavigationMode;
import com.android.quickstep.BaseActivityInterface;
import com.android.quickstep.GestureState;
import com.android.quickstep.util.ActivityInitListener;
import com.android.quickstep.util.LayoutUtils;
import com.android.quickstep.views.RecentsView;
import java.util.Objects;
import java.util.function.BiPredicate;
import java.util.function.Consumer;
import java.util.function.Predicate;
import q1.InterfaceC1364d;
/* loaded from: classes.dex */
public final class LauncherActivityInterface extends BaseActivityInterface {
    public static final LauncherActivityInterface INSTANCE = new LauncherActivityInterface();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.quickstep.LauncherActivityInterface$3  reason: invalid class name */
    /* loaded from: classes.dex */
    public /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$com$android$quickstep$GestureState$GestureEndTarget;

        static {
            int[] iArr = new int[GestureState.GestureEndTarget.values().length];
            $SwitchMap$com$android$quickstep$GestureState$GestureEndTarget = iArr;
            try {
                iArr[GestureState.GestureEndTarget.RECENTS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$quickstep$GestureState$GestureEndTarget[GestureState.GestureEndTarget.NEW_TASK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$quickstep$GestureState$GestureEndTarget[GestureState.GestureEndTarget.LAST_TASK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$android$quickstep$GestureState$GestureEndTarget[GestureState.GestureEndTarget.ALL_APPS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$android$quickstep$GestureState$GestureEndTarget[GestureState.GestureEndTarget.HOME.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    private LauncherActivityInterface() {
        super(true, LauncherState.OVERVIEW, LauncherState.BACKGROUND_APP);
    }

    private Launcher getVisibleLauncher() {
        QuickstepLauncher createdActivity = getCreatedActivity();
        if (createdActivity != null && createdActivity.isStarted() && (isInLiveTileMode() || createdActivity.hasBeenResumed())) {
            return createdActivity;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyRecentsOfOrientation(RotationTouchHelper rotationTouchHelper) {
        ((RecentsView) getCreatedActivity().getOverviewPanel()).setLayoutRotation(rotationTouchHelper.getCurrentActiveRotation(), rotationTouchHelper.getDisplayRotation());
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public boolean allowAllAppsFromOverview() {
        return FeatureFlags.ENABLE_ALL_APPS_FROM_OVERVIEW.get() && LauncherState.OVERVIEW.areElementsVisible(getCreatedActivity(), 128);
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public boolean allowMinimizeSplitScreen() {
        return true;
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public void closeOverlay() {
        super.closeOverlay();
        QuickstepLauncher createdActivity = getCreatedActivity();
        if (createdActivity == null) {
            return;
        }
        InterfaceC1364d overlayManager = createdActivity.getOverlayManager();
        if (!createdActivity.isStarted() || createdActivity.isForceInvisible()) {
            overlayManager.k(false);
        } else {
            overlayManager.n(150);
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.android.quickstep.M] */
    @Override // com.android.quickstep.BaseActivityInterface
    public ActivityInitListener createActivityInitListener(final Predicate predicate) {
        return new LauncherInitListener(new BiPredicate() { // from class: com.android.quickstep.M
            @Override // java.util.function.BiPredicate
            public final boolean test(Object obj, Object obj2) {
                boolean test;
                Launcher launcher = (Launcher) obj;
                test = predicate.test((Boolean) obj2);
                return test;
            }
        });
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public boolean deferStartingActivity(RecentsAnimationDeviceState recentsAnimationDeviceState, MotionEvent motionEvent) {
        LauncherTaskbarUIController taskbarController = getTaskbarController();
        return taskbarController == null ? super.deferStartingActivity(recentsAnimationDeviceState, motionEvent) : taskbarController.isEventOverAnyTaskbarItem(motionEvent) || super.deferStartingActivity(recentsAnimationDeviceState, motionEvent);
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public DepthController getDepthController() {
        QuickstepLauncher createdActivity = getCreatedActivity();
        if (createdActivity == null) {
            return null;
        }
        return createdActivity.getDepthController();
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public DesktopVisibilityController getDesktopVisibilityController() {
        QuickstepLauncher createdActivity = getCreatedActivity();
        if (createdActivity == null) {
            return null;
        }
        return createdActivity.getDesktopVisibilityController();
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public Rect getOverviewWindowBounds(Rect rect, RemoteAnimationTarget remoteAnimationTarget) {
        return rect;
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public Animator getParallelAnimationToLauncher(GestureState.GestureEndTarget gestureEndTarget, long j4, RecentsAnimationCallbacks recentsAnimationCallbacks) {
        LauncherTaskbarUIController taskbarController = getTaskbarController();
        Animator parallelAnimationToLauncher = super.getParallelAnimationToLauncher(gestureEndTarget, j4, recentsAnimationCallbacks);
        if (taskbarController == null || recentsAnimationCallbacks == null) {
            return parallelAnimationToLauncher;
        }
        Animator createAnimToLauncher = taskbarController.createAnimToLauncher(stateFromGestureEndTarget(gestureEndTarget), recentsAnimationCallbacks, j4);
        if (parallelAnimationToLauncher == null) {
            return createAnimToLauncher;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(parallelAnimationToLauncher, createAnimToLauncher);
        return animatorSet;
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public int getSwipeUpDestinationAndLength(DeviceProfile deviceProfile, Context context, Rect rect, PagedOrientationHandler pagedOrientationHandler) {
        calculateTaskSize(context, deviceProfile, rect, pagedOrientationHandler);
        return (!deviceProfile.isVerticalBarLayout() || DisplayController.getNavigationMode(context) == NavigationMode.NO_BUTTON) ? LayoutUtils.getShelfTrackingDistance(context, deviceProfile, pagedOrientationHandler) : deviceProfile.isSeascape() ? rect.left : deviceProfile.widthPx - rect.right;
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public RecentsView getVisibleRecentsView() {
        Launcher visibleLauncher = getVisibleLauncher();
        RecentsView recentsView = (visibleLauncher == null || !((LauncherState) visibleLauncher.getStateManager().getState()).overviewUi) ? null : (RecentsView) visibleLauncher.getOverviewPanel();
        if (recentsView == null || (!visibleLauncher.hasBeenResumed() && recentsView.getRunningTaskViewId() == -1)) {
            return null;
        }
        return recentsView;
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public boolean isInLiveTileMode() {
        QuickstepLauncher createdActivity = getCreatedActivity();
        return createdActivity != null && createdActivity.getStateManager().getState() == LauncherState.OVERVIEW && createdActivity.isStarted();
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public void onAssistantVisibilityChanged(float f4) {
        QuickstepLauncher createdActivity = getCreatedActivity();
        if (createdActivity == null) {
            return;
        }
        createdActivity.onAssistantVisibilityChanged(f4);
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public void onExitOverview(final RotationTouchHelper rotationTouchHelper, final Runnable runnable) {
        final StateManager stateManager = getCreatedActivity().getStateManager();
        stateManager.addStateListener(new StateManager.StateListener() { // from class: com.android.quickstep.LauncherActivityInterface.2
            @Override // com.android.launcher3.statemanager.StateManager.StateListener
            public /* bridge */ /* synthetic */ void onStateTransitionStart(Object obj) {
            }

            @Override // com.android.launcher3.statemanager.StateManager.StateListener
            public void onStateTransitionComplete(LauncherState launcherState) {
                if (launcherState == LauncherState.NORMAL) {
                    runnable.run();
                    LauncherActivityInterface.this.notifyRecentsOfOrientation(rotationTouchHelper);
                    stateManager.removeStateListener(this);
                }
            }
        });
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public void onLaunchTaskFailed() {
        QuickstepLauncher createdActivity = getCreatedActivity();
        if (createdActivity == null) {
            return;
        }
        createdActivity.getStateManager().goToState(LauncherState.OVERVIEW);
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public void onSwipeUpToHomeComplete(RecentsAnimationDeviceState recentsAnimationDeviceState) {
        QuickstepLauncher createdActivity = getCreatedActivity();
        if (createdActivity == null) {
            return;
        }
        Handler handler = Executors.MAIN_EXECUTOR.getHandler();
        final StateManager stateManager = createdActivity.getStateManager();
        Objects.requireNonNull(stateManager);
        handler.post(new Runnable() { // from class: com.android.quickstep.N
            @Override // java.lang.Runnable
            public final void run() {
                StateManager.this.reapplyState(false);
            }
        });
        createdActivity.getRootView().setForceHideBackArrow(false);
        notifyRecentsOfOrientation(recentsAnimationDeviceState.getRotationTouchHelper());
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public BaseActivityInterface.AnimationFactory prepareRecentsUI(RecentsAnimationDeviceState recentsAnimationDeviceState, boolean z4, Consumer consumer) {
        notifyRecentsOfOrientation(recentsAnimationDeviceState.getRotationTouchHelper());
        BaseActivityInterface.DefaultAnimationFactory defaultAnimationFactory = new BaseActivityInterface.DefaultAnimationFactory(consumer) { // from class: com.android.quickstep.LauncherActivityInterface.1
            @Override // com.android.quickstep.BaseActivityInterface.DefaultAnimationFactory
            public void createBackgroundToOverviewAnim(QuickstepLauncher quickstepLauncher, PendingAnimation pendingAnimation) {
                super.createBackgroundToOverviewAnim((StatefulActivity) quickstepLauncher, pendingAnimation);
                float depth = LauncherState.BACKGROUND_APP.getDepth(quickstepLauncher);
                float depth2 = LauncherState.OVERVIEW.getDepth(quickstepLauncher);
                pendingAnimation.addFloat(LauncherActivityInterface.this.getDepthController().stateDepth, new LauncherAnimUtils.ClampedProperty(MultiPropertyFactory.MULTI_PROPERTY_VALUE, depth, depth2), depth, depth2, y0.e.f12949m);
            }
        };
        ((QuickstepLauncher) defaultAnimationFactory.initBackgroundStateUI()).getAppsView().reset(false, true);
        return defaultAnimationFactory;
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public void setOnDeferredActivityLaunchCallback(Runnable runnable) {
        QuickstepLauncher createdActivity = getCreatedActivity();
        if (createdActivity == null) {
            return;
        }
        createdActivity.setOnDeferredActivityLaunchCallback(runnable);
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public boolean shouldCancelCurrentGesture() {
        LauncherTaskbarUIController taskbarController = getTaskbarController();
        return taskbarController == null ? super.shouldCancelCurrentGesture() : taskbarController.isDraggingItem();
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public boolean switchToRecentsIfVisible(Runnable runnable) {
        Launcher visibleLauncher = getVisibleLauncher();
        if (visibleLauncher == null) {
            return false;
        }
        if (isInLiveTileMode() && getVisibleRecentsView() == null) {
            return false;
        }
        closeOverlay();
        visibleLauncher.getStateManager().goToState(LauncherState.OVERVIEW, visibleLauncher.getStateManager().shouldAnimateStateChange(), runnable == null ? null : AnimatorListeners.forEndCallback(runnable));
        return true;
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public QuickstepLauncher getCreatedActivity() {
        return (QuickstepLauncher) Launcher.ACTIVITY_TRACKER.getCreatedActivity();
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public int getOverviewScrimColorForState(QuickstepLauncher quickstepLauncher, LauncherState launcherState) {
        return launcherState.getWorkspaceScrimColor(quickstepLauncher);
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public LauncherTaskbarUIController getTaskbarController() {
        QuickstepLauncher createdActivity = getCreatedActivity();
        if (createdActivity == null) {
            return null;
        }
        return createdActivity.getTaskbarUIController();
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public LauncherState stateFromGestureEndTarget(GestureState.GestureEndTarget gestureEndTarget) {
        int i4 = AnonymousClass3.$SwitchMap$com$android$quickstep$GestureState$GestureEndTarget[gestureEndTarget.ordinal()];
        if (i4 != 1) {
            if (i4 == 2 || i4 == 3) {
                return LauncherState.BACKGROUND_APP;
            }
            if (i4 != 4) {
                return LauncherState.NORMAL;
            }
            return LauncherState.ALL_APPS;
        }
        return LauncherState.OVERVIEW;
    }
}
