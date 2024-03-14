package com.android.quickstep;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.Context;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.RemoteAnimationTarget;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.taskbar.FallbackTaskbarUIController;
import com.android.launcher3.touch.PagedOrientationHandler;
import com.android.launcher3.util.DisplayController;
import com.android.launcher3.util.NavigationMode;
import com.android.quickstep.BaseActivityInterface;
import com.android.quickstep.GestureState;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.util.ActivityInitListener;
import com.android.quickstep.views.RecentsView;
import java.util.function.BiPredicate;
import java.util.function.Consumer;
import java.util.function.Predicate;
/* loaded from: classes.dex */
public final class FallbackActivityInterface extends BaseActivityInterface {
    public static final FallbackActivityInterface INSTANCE = new FallbackActivityInterface();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.quickstep.FallbackActivityInterface$2  reason: invalid class name */
    /* loaded from: classes.dex */
    public /* synthetic */ class AnonymousClass2 {
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
                $SwitchMap$com$android$quickstep$GestureState$GestureEndTarget[GestureState.GestureEndTarget.HOME.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$android$quickstep$GestureState$GestureEndTarget[GestureState.GestureEndTarget.ALL_APPS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    private FallbackActivityInterface() {
        super(false, RecentsState.DEFAULT, RecentsState.BACKGROUND_APP);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyRecentsOfOrientation(RotationTouchHelper rotationTouchHelper) {
        ((RecentsView) getCreatedActivity().getOverviewPanel()).setLayoutRotation(rotationTouchHelper.getCurrentActiveRotation(), rotationTouchHelper.getDisplayRotation());
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public boolean allowAllAppsFromOverview() {
        return false;
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public boolean allowMinimizeSplitScreen() {
        return false;
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public ActivityInitListener createActivityInitListener(final Predicate predicate) {
        return new ActivityInitListener(new BiPredicate() { // from class: com.android.quickstep.C
            @Override // java.util.function.BiPredicate
            public final boolean test(Object obj, Object obj2) {
                boolean test;
                RecentsActivity recentsActivity = (RecentsActivity) obj;
                test = predicate.test((Boolean) obj2);
                return test;
            }
        }, RecentsActivity.ACTIVITY_TRACKER);
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public boolean deferStartingActivity(RecentsAnimationDeviceState recentsAnimationDeviceState, MotionEvent motionEvent) {
        return !recentsAnimationDeviceState.isFullyGesturalNavMode() || super.deferStartingActivity(recentsAnimationDeviceState, motionEvent);
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public Rect getOverviewWindowBounds(Rect rect, RemoteAnimationTarget remoteAnimationTarget) {
        return remoteAnimationTarget.screenSpaceBounds;
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public Animator getParallelAnimationToLauncher(GestureState.GestureEndTarget gestureEndTarget, long j4, RecentsAnimationCallbacks recentsAnimationCallbacks) {
        FallbackTaskbarUIController taskbarController = getTaskbarController();
        Animator parallelAnimationToLauncher = super.getParallelAnimationToLauncher(gestureEndTarget, j4, recentsAnimationCallbacks);
        if (taskbarController == null) {
            return parallelAnimationToLauncher;
        }
        stateFromGestureEndTarget(gestureEndTarget);
        Animator createAnimToRecentsState = taskbarController.createAnimToRecentsState(j4);
        if (createAnimToRecentsState == null) {
            return parallelAnimationToLauncher;
        }
        if (parallelAnimationToLauncher == null) {
            return createAnimToRecentsState;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(parallelAnimationToLauncher, createAnimToRecentsState);
        return animatorSet;
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public int getSwipeUpDestinationAndLength(DeviceProfile deviceProfile, Context context, Rect rect, PagedOrientationHandler pagedOrientationHandler) {
        calculateTaskSize(context, deviceProfile, rect, pagedOrientationHandler);
        return (!deviceProfile.isVerticalBarLayout() || DisplayController.getNavigationMode(context) == NavigationMode.NO_BUTTON) ? deviceProfile.heightPx - rect.bottom : deviceProfile.isSeascape() ? rect.left : deviceProfile.widthPx - rect.right;
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public RecentsView getVisibleRecentsView() {
        RecentsActivity createdActivity = getCreatedActivity();
        if (createdActivity != null) {
            if (createdActivity.hasBeenResumed() || isInLiveTileMode()) {
                return (RecentsView) createdActivity.getOverviewPanel();
            }
            return null;
        }
        return null;
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public boolean isInLiveTileMode() {
        RecentsActivity createdActivity = getCreatedActivity();
        return createdActivity != null && createdActivity.getStateManager().getState() == RecentsState.DEFAULT && createdActivity.isStarted();
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public void onAssistantVisibilityChanged(float f4) {
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public void onExitOverview(final RotationTouchHelper rotationTouchHelper, final Runnable runnable) {
        final StateManager stateManager = getCreatedActivity().getStateManager();
        if (stateManager.getState() != RecentsState.HOME) {
            stateManager.addStateListener(new StateManager.StateListener() { // from class: com.android.quickstep.FallbackActivityInterface.1
                @Override // com.android.launcher3.statemanager.StateManager.StateListener
                public /* bridge */ /* synthetic */ void onStateTransitionStart(Object obj) {
                }

                @Override // com.android.launcher3.statemanager.StateManager.StateListener
                public void onStateTransitionComplete(RecentsState recentsState) {
                    if (recentsState == RecentsState.HOME) {
                        runnable.run();
                        FallbackActivityInterface.this.notifyRecentsOfOrientation(rotationTouchHelper);
                        stateManager.removeStateListener(this);
                    }
                }
            });
            return;
        }
        runnable.run();
        notifyRecentsOfOrientation(rotationTouchHelper);
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public void onLaunchTaskFailed() {
        RecentsActivity createdActivity = getCreatedActivity();
        if (createdActivity == null) {
            return;
        }
        ((RecentsView) createdActivity.getOverviewPanel()).startHome();
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public BaseActivityInterface.AnimationFactory prepareRecentsUI(RecentsAnimationDeviceState recentsAnimationDeviceState, boolean z4, Consumer consumer) {
        notifyRecentsOfOrientation(recentsAnimationDeviceState.getRotationTouchHelper());
        BaseActivityInterface.DefaultAnimationFactory defaultAnimationFactory = new BaseActivityInterface.DefaultAnimationFactory(consumer);
        defaultAnimationFactory.initBackgroundStateUI();
        return defaultAnimationFactory;
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public boolean switchToRecentsIfVisible(Runnable runnable) {
        return false;
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public RecentsActivity getCreatedActivity() {
        return (RecentsActivity) RecentsActivity.ACTIVITY_TRACKER.getCreatedActivity();
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public int getOverviewScrimColorForState(RecentsActivity recentsActivity, RecentsState recentsState) {
        return recentsState.getScrimColor(recentsActivity);
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public FallbackTaskbarUIController getTaskbarController() {
        RecentsActivity createdActivity = getCreatedActivity();
        if (createdActivity == null) {
            return null;
        }
        return createdActivity.getTaskbarUIController();
    }

    @Override // com.android.quickstep.BaseActivityInterface
    public RecentsState stateFromGestureEndTarget(GestureState.GestureEndTarget gestureEndTarget) {
        int i4 = AnonymousClass2.$SwitchMap$com$android$quickstep$GestureState$GestureEndTarget[gestureEndTarget.ordinal()];
        if (i4 != 1) {
            if (i4 != 2 && i4 != 3) {
                return RecentsState.HOME;
            }
            return RecentsState.BACKGROUND_APP;
        }
        return RecentsState.DEFAULT;
    }
}
