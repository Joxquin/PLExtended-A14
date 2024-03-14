package com.android.launcher3.taskbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.os.SystemClock;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.LauncherState;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.AnimatedFloat;
import com.android.launcher3.anim.AnimatorListeners;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.taskbar.allapps.TaskbarAllAppsController;
import com.android.launcher3.taskbar.bubbles.BubbleControllers;
import com.android.launcher3.uioverrides.QuickstepLauncher;
import com.android.launcher3.util.FlagDebugUtils;
import com.android.launcher3.util.MultiPropertyFactory;
import com.android.quickstep.RecentsAnimationCallbacks;
import com.android.quickstep.RecentsAnimationController;
import com.android.quickstep.views.RecentsView;
import com.android.systemui.shared.system.QuickStepContract;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.StringJoiner;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final class TaskbarLauncherStateController {
    private boolean mCanSyncViews;
    private TaskbarControllers mControllers;
    private MultiPropertyFactory.MultiProperty mIconAlphaForHome;
    private boolean mIsAnimatingToLauncher;
    private boolean mIsQsbInline;
    private QuickstepLauncher mLauncher;
    private Integer mPrevState;
    private boolean mShouldDelayLauncherStateAnim;
    private int mState;
    private TaskBarRecentsAnimationListener mTaskBarRecentsAnimationListener;
    private AnimatedFloat mTaskbarAlpha;
    private AnimatedFloat mTaskbarBackgroundAlpha;
    private AnimatedFloat mTaskbarCornerRoundness;
    private final AnimatedFloat mIconAlignment = new AnimatedFloat(new RunnableC0436j0(this, 0));
    private LauncherState mLauncherState = LauncherState.NORMAL;
    private long mLastUnlockTimeMs = 0;
    private final DeviceProfile.OnDeviceProfileChangeListener mOnDeviceProfileChangeListener = new DeviceProfile.OnDeviceProfileChangeListener() { // from class: com.android.launcher3.taskbar.TaskbarLauncherStateController.1
        {
            TaskbarLauncherStateController.this = this;
        }

        @Override // com.android.launcher3.DeviceProfile.OnDeviceProfileChangeListener
        public final void onDeviceProfileChanged(DeviceProfile deviceProfile) {
            TaskbarLauncherStateController taskbarLauncherStateController = TaskbarLauncherStateController.this;
            if (taskbarLauncherStateController.mIsQsbInline && !deviceProfile.isQsbInline) {
                taskbarLauncherStateController.mLauncher.getHotseat().setQsbAlpha(1.0f);
            }
            taskbarLauncherStateController.mIsQsbInline = deviceProfile.isQsbInline;
            taskbarLauncherStateController.updateIconAlphaForHome(taskbarLauncherStateController.mIconAlphaForHome.getValue());
        }
    };
    private final StateManager.StateListener mStateListener = new StateManager.StateListener() { // from class: com.android.launcher3.taskbar.TaskbarLauncherStateController.2
        {
            TaskbarLauncherStateController.this = this;
        }

        @Override // com.android.launcher3.statemanager.StateManager.StateListener
        public final void onStateTransitionComplete(Object obj) {
            LauncherState launcherState = (LauncherState) obj;
            TaskbarLauncherStateController taskbarLauncherStateController = TaskbarLauncherStateController.this;
            taskbarLauncherStateController.mLauncherState = launcherState;
            taskbarLauncherStateController.updateStateForFlag(4, false);
            if (launcherState == LauncherState.NORMAL && taskbarLauncherStateController.mLauncher.hasBeenResumed()) {
                taskbarLauncherStateController.updateStateForFlag(1, true);
            }
            taskbarLauncherStateController.applyState();
            boolean z4 = launcherState == LauncherState.OVERVIEW_SPLIT_SELECT;
            TaskbarControllers taskbarControllers = taskbarLauncherStateController.mControllers;
            boolean disallowTaskbarGlobalDrag = launcherState.disallowTaskbarGlobalDrag();
            boolean allowTaskbarInitialSplitSelection = launcherState.allowTaskbarInitialSplitSelection();
            taskbarControllers.taskbarDragController.setDisallowGlobalDrag(disallowTaskbarGlobalDrag);
            taskbarControllers.taskbarDragController.setDisallowLongClick(z4);
            TaskbarAllAppsController taskbarAllAppsController = taskbarControllers.taskbarAllAppsController;
            taskbarAllAppsController.setDisallowGlobalDrag(disallowTaskbarGlobalDrag);
            taskbarAllAppsController.setDisallowLongClick(z4);
            taskbarControllers.taskbarPopupController.setAllowInitialSplitSelection(allowTaskbarInitialSplitSelection);
        }

        @Override // com.android.launcher3.statemanager.StateManager.StateListener
        public final void onStateTransitionStart(Object obj) {
            LauncherState launcherState = (LauncherState) obj;
            TaskbarLauncherStateController taskbarLauncherStateController = TaskbarLauncherStateController.this;
            if (launcherState != taskbarLauncherStateController.mLauncherState) {
                taskbarLauncherStateController.mPrevState = Integer.valueOf(taskbarLauncherStateController.mPrevState.intValue() & (-5));
                taskbarLauncherStateController.mLauncherState = launcherState;
            }
            taskbarLauncherStateController.updateStateForFlag(4, true);
            if (taskbarLauncherStateController.mShouldDelayLauncherStateAnim) {
                return;
            }
            if (launcherState == LauncherState.NORMAL) {
                taskbarLauncherStateController.applyState(300L, true);
            } else {
                taskbarLauncherStateController.applyState();
            }
        }
    };

    /* loaded from: classes.dex */
    public final class TaskBarRecentsAnimationListener implements RecentsAnimationCallbacks.RecentsAnimationListener {
        private final RecentsAnimationCallbacks mCallbacks;

        public TaskBarRecentsAnimationListener(RecentsAnimationCallbacks recentsAnimationCallbacks) {
            TaskbarLauncherStateController.this = r1;
            this.mCallbacks = recentsAnimationCallbacks;
        }

        public void endGestureStateOverride(boolean z4) {
            this.mCallbacks.removeListener(this);
            TaskbarLauncherStateController taskbarLauncherStateController = TaskbarLauncherStateController.this;
            taskbarLauncherStateController.mTaskBarRecentsAnimationListener = null;
            ((RecentsView) taskbarLauncherStateController.mLauncher.getOverviewPanel()).setTaskLaunchListener(null);
            taskbarLauncherStateController.updateStateForFlag(2, false);
            taskbarLauncherStateController.updateStateForFlag(1, !z4);
            taskbarLauncherStateController.applyState();
            TaskbarStashController taskbarStashController = taskbarLauncherStateController.mControllers.taskbarStashController;
            taskbarStashController.updateStateForFlag(1, z4);
            taskbarStashController.applyState();
        }

        @Override // com.android.quickstep.RecentsAnimationCallbacks.RecentsAnimationListener
        public final void onRecentsAnimationCanceled(HashMap hashMap) {
            endGestureStateOverride(!TaskbarLauncherStateController.this.mLauncher.isInState(LauncherState.OVERVIEW));
        }

        @Override // com.android.quickstep.RecentsAnimationCallbacks.RecentsAnimationListener
        public final void onRecentsAnimationFinished(RecentsAnimationController recentsAnimationController) {
            endGestureStateOverride(!recentsAnimationController.getFinishTargetIsLauncher());
        }
    }

    public static /* synthetic */ void b(TaskbarLauncherStateController taskbarLauncherStateController, boolean z4, BubbleControllers bubbleControllers) {
        boolean z5 = z4 && taskbarLauncherStateController.mLauncherState == LauncherState.NORMAL;
        boolean z6 = taskbarLauncherStateController.mLauncherState == LauncherState.OVERVIEW;
        bubbleControllers.bubbleStashController.setBubblesShowingOnHome(z5);
        bubbleControllers.bubbleStashController.setBubblesShowingOnOverview(z6);
    }

    private static String getStateString(int i4) {
        StringJoiner stringJoiner = new StringJoiner("|");
        FlagDebugUtils.appendFlag(stringJoiner, i4, 1, "resumed");
        FlagDebugUtils.appendFlag(stringJoiner, i4, 2, "transition_to_resumed");
        FlagDebugUtils.appendFlag(stringJoiner, i4, 4, "launcher_in_state_transition");
        FlagDebugUtils.appendFlag(stringJoiner, i4, 8, "awake");
        FlagDebugUtils.appendFlag(stringJoiner, i4, 16, "was_active_while_awake");
        FlagDebugUtils.appendFlag(stringJoiner, i4, 32, "device_locked");
        return stringJoiner.toString();
    }

    private static boolean hasAnyFlag(int i4, int i5) {
        return (i4 & i5) != 0;
    }

    public void onIconAlignmentRatioChanged() {
        float value = this.mIconAlphaForHome.getValue();
        AnimatedFloat animatedFloat = this.mIconAlignment;
        boolean z4 = true;
        boolean z5 = animatedFloat.value < 1.0f;
        if ((!z5 || Float.compare(value, 1.0f) == 0) && (z5 || Float.compare(value, 0.0f) == 0)) {
            z4 = false;
        }
        this.mControllers.taskbarViewController.setLauncherIconAlignment(animatedFloat.value, this.mLauncher.getDeviceProfile());
        this.mControllers.navbarButtonsViewController.updateTaskbarAlignment(animatedFloat.value);
        updateIconAlphaForHome(z5 ? 1.0f : 0.0f);
        if (z4 && this.mCanSyncViews && !Utilities.isRunningInTestHarness()) {
            com.android.systemui.animation.C.b(this.mLauncher.getHotseat(), this.mControllers.taskbarActivityContext.getDragLayer(), new M0.b());
        }
    }

    public void updateIconAlphaForHome(float f4) {
        if (this.mControllers.taskbarActivityContext.isDestroyed()) {
            return;
        }
        this.mIconAlphaForHome.setValue(f4);
        boolean z4 = f4 == 0.0f || (!this.mControllers.uiController.isHotseatIconOnTopWhenAligned() && this.mIconAlignment.value > 0.0f);
        this.mLauncher.getHotseat().setIconsAlpha(z4 ? 1.0f : 0.0f);
        if (this.mIsQsbInline) {
            this.mLauncher.getHotseat().setQsbAlpha(z4 ? 1.0f : 0.0f);
        }
    }

    public final void applyState() {
        applyState(this.mControllers.taskbarStashController.getStashDuration(), true);
    }

    public final void applyState$1() {
        applyState(0L, true);
    }

    public final Animator createAnimToLauncher(LauncherState launcherState, RecentsAnimationCallbacks recentsAnimationCallbacks, long j4) {
        AnimatorSet animatorSet = new AnimatorSet();
        TaskbarStashController taskbarStashController = this.mControllers.taskbarStashController;
        taskbarStashController.updateStateForFlag(32, launcherState.isTaskbarStashed(this.mLauncher));
        taskbarStashController.updateStateForFlag(1, false);
        updateStateForFlag(2, true);
        animatorSet.play(taskbarStashController.createApplyStateAnimator(j4));
        animatorSet.play(applyState(j4, false));
        TaskBarRecentsAnimationListener taskBarRecentsAnimationListener = this.mTaskBarRecentsAnimationListener;
        if (taskBarRecentsAnimationListener != null) {
            taskBarRecentsAnimationListener.endGestureStateOverride(true ^ this.mLauncher.isInState(LauncherState.OVERVIEW));
        }
        TaskBarRecentsAnimationListener taskBarRecentsAnimationListener2 = new TaskBarRecentsAnimationListener(recentsAnimationCallbacks);
        this.mTaskBarRecentsAnimationListener = taskBarRecentsAnimationListener2;
        recentsAnimationCallbacks.addListener(taskBarRecentsAnimationListener2);
        ((RecentsView) this.mLauncher.getOverviewPanel()).setTaskLaunchListener(new RecentsView.TaskLaunchListener() { // from class: com.android.launcher3.taskbar.i0
            @Override // com.android.quickstep.views.RecentsView.TaskLaunchListener
            public final void onTaskLaunched() {
                TaskbarLauncherStateController.this.mTaskBarRecentsAnimationListener.endGestureStateOverride(true);
            }
        });
        return animatorSet;
    }

    public final void dumpLogs(String str, PrintWriter printWriter) {
        printWriter.println(str + "TaskbarLauncherStateController:");
        printWriter.println(String.format("%s\tmIconAlignment=%.2f", str, Float.valueOf(this.mIconAlignment.value)));
        printWriter.println(String.format("%s\tmTaskbarBackgroundAlpha=%.2f", str, Float.valueOf(this.mTaskbarBackgroundAlpha.value)));
        printWriter.println(String.format("%s\tmIconAlphaForHome=%.2f", str, Float.valueOf(this.mIconAlphaForHome.getValue())));
        printWriter.println(String.format("%s\tmPrevState=%s", str, getStateString(this.mPrevState.intValue())));
        printWriter.println(String.format("%s\tmState=%s", str, getStateString(this.mState)));
        printWriter.println(String.format("%s\tmLauncherState=%s", str, this.mLauncherState));
        printWriter.println(String.format("%s\tmIsAnimatingToLauncher=%b", str, Boolean.valueOf(this.mIsAnimatingToLauncher)));
        printWriter.println(String.format("%s\tmShouldDelayLauncherStateAnim=%b", str, Boolean.valueOf(this.mShouldDelayLauncherStateAnim)));
    }

    public final void init(TaskbarControllers taskbarControllers, QuickstepLauncher quickstepLauncher, int i4) {
        this.mCanSyncViews = false;
        this.mControllers = taskbarControllers;
        this.mLauncher = quickstepLauncher;
        this.mIsQsbInline = quickstepLauncher.getDeviceProfile().isQsbInline;
        this.mTaskbarBackgroundAlpha = this.mControllers.taskbarDragLayerController.getTaskbarBackgroundAlpha();
        this.mTaskbarAlpha = this.mControllers.taskbarDragLayerController.getTaskbarAlpha();
        this.mTaskbarCornerRoundness = this.mControllers.getTaskbarCornerRoundness();
        this.mIconAlphaForHome = this.mControllers.taskbarViewController.getTaskbarIconAlpha().get(0);
        resetIconAlignment();
        this.mLauncher.getStateManager().addStateListener(this.mStateListener);
        this.mLauncherState = (LauncherState) quickstepLauncher.getStateManager().getState();
        updateStateForSysuiFlags(i4, false);
        applyState(0L, true);
        this.mCanSyncViews = true;
        this.mLauncher.addOnDeviceProfileChangeListener(this.mOnDeviceProfileChangeListener);
    }

    public final boolean isAnimatingToLauncher() {
        return this.mIsAnimatingToLauncher;
    }

    public final boolean isIconAlignedWithHotseat() {
        if (hasAnyFlag(8) ? hasAnyFlag(3) : hasAnyFlag(16)) {
            return this.mLauncherState.isTaskbarAlignedWithHotseat() && !(this.mLauncherState.isTaskbarStashed(this.mLauncher) && this.mControllers.taskbarStashController.supportsVisualStashing());
        }
        return false;
    }

    public final boolean isInHotseatOnTopStates() {
        return this.mLauncherState != LauncherState.ALL_APPS;
    }

    public final boolean isInOverview() {
        return this.mLauncherState == LauncherState.OVERVIEW;
    }

    public final boolean isTaskbarAlignedWithHotseat() {
        return this.mLauncherState.isTaskbarAlignedWithHotseat();
    }

    public final void onDestroy() {
        this.mCanSyncViews = false;
        this.mIconAlignment.finishAnimation();
        this.mLauncher.getHotseat().setIconsAlpha(1.0f);
        this.mLauncher.getStateManager().removeStateListener(this.mStateListener);
        this.mCanSyncViews = true;
        this.mLauncher.removeOnDeviceProfileChangeListener(this.mOnDeviceProfileChangeListener);
    }

    public final void resetIconAlignment() {
        this.mIconAlignment.finishAnimation();
        onIconAlignmentRatioChanged();
    }

    public final void setShouldDelayLauncherStateAnim(boolean z4) {
        if (!z4 && this.mShouldDelayLauncherStateAnim) {
            applyState();
        }
        this.mShouldDelayLauncherStateAnim = z4;
    }

    public final void updateStateForFlag(int i4, boolean z4) {
        if (z4) {
            this.mState = i4 | this.mState;
            return;
        }
        this.mState = (~i4) & this.mState;
    }

    public final void updateStateForSysuiFlags(int i4) {
        updateStateForSysuiFlags(i4, true);
    }

    private boolean hasAnyFlag(int i4) {
        return hasAnyFlag(this.mState, i4);
    }

    private void updateStateForSysuiFlags(int i4, boolean z4) {
        boolean hasAnyFlag = hasAnyFlag(8);
        boolean hasAnyFlag2 = hasAnyFlag(i4, 268435456);
        updateStateForFlag(8, hasAnyFlag2);
        boolean z5 = false;
        if (hasAnyFlag != hasAnyFlag2) {
            updateStateForFlag(16, hasAnyFlag && hasAnyFlag(3));
        }
        updateStateForFlag(32, hasAnyFlag(i4, 134218312));
        if (hasAnyFlag(i4, QuickStepContract.SYSUI_STATE_DEVICE_DREAMING) || (i4 & 805306368) != 268435456) {
            z5 = true;
        }
        updateStateForFlag(64, z5);
        if (z4) {
            applyState();
        }
    }

    public final Animator applyState(final long j4, boolean z4) {
        final boolean hasAnyFlag;
        boolean z5;
        if (this.mControllers.taskbarActivityContext.isDestroyed()) {
            return null;
        }
        Integer num = this.mPrevState;
        if (num == null || num.intValue() != this.mState) {
            Integer num2 = this.mPrevState;
            int intValue = num2 == null ? -1 : num2.intValue() ^ this.mState;
            this.mPrevState = Integer.valueOf(this.mState);
            if (hasAnyFlag(8)) {
                hasAnyFlag = hasAnyFlag(3);
            } else {
                hasAnyFlag = hasAnyFlag(16);
            }
            boolean isIconAlignedWithHotseat = isIconAlignedWithHotseat();
            float f4 = isIconAlignedWithHotseat ? 1.0f : 0.0f;
            this.mControllers.bubbleControllers.ifPresent(new Consumer() { // from class: com.android.launcher3.taskbar.k0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    TaskbarLauncherStateController.b(TaskbarLauncherStateController.this, hasAnyFlag, (BubbleControllers) obj);
                }
            });
            AnimatorSet animatorSet = new AnimatorSet();
            if (hasAnyFlag(intValue, 4)) {
                final boolean z6 = !hasAnyFlag(4);
                final boolean isTaskbarStashed = this.mLauncherState.isTaskbarStashed(this.mLauncher);
                TaskbarStashController taskbarStashController = this.mControllers.taskbarStashController;
                taskbarStashController.updateStateForFlag(32, isTaskbarStashed);
                Animator createApplyStateAnimator = taskbarStashController.createApplyStateAnimator(j4);
                if (createApplyStateAnimator != null) {
                    createApplyStateAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.taskbar.TaskbarLauncherStateController.5
                        {
                            TaskbarLauncherStateController.this = this;
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public final void onAnimationEnd(Animator animator) {
                            if (isTaskbarStashed && z6) {
                                TaskbarLauncherStateController.this.mLauncher.getHotseat().setIconsAlpha(1.0f);
                            }
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public final void onAnimationStart(Animator animator) {
                            if (TaskbarLauncherStateController.this.mLauncher.getHotseat().getIconsAlpha() > 0.0f) {
                                TaskbarLauncherStateController taskbarLauncherStateController = TaskbarLauncherStateController.this;
                                taskbarLauncherStateController.updateIconAlphaForHome(taskbarLauncherStateController.mLauncher.getHotseat().getIconsAlpha());
                            }
                        }
                    });
                    animatorSet.play(createApplyStateAnimator);
                }
                long j5 = this.mControllers.taskbarStashController.isInApp() ? j4 : j4 / 2;
                if (!this.mControllers.taskbarTranslationController.willAnimateToZeroBefore(j5) && (this.mIsAnimatingToLauncher || this.mLauncherState == LauncherState.NORMAL)) {
                    animatorSet.play(this.mControllers.taskbarTranslationController.createAnimToResetTranslation(j5));
                }
                if (z6 && this.mLauncherState == LauncherState.QUICK_SWITCH_FROM_HOME) {
                    updateStateForFlag(1, false);
                    applyState$1();
                }
                LauncherState launcherState = this.mLauncherState;
                z5 = launcherState == LauncherState.NORMAL;
                if (launcherState == LauncherState.OVERVIEW) {
                    this.mControllers.taskbarActivityContext.notifyUpdateLayoutParams();
                }
            } else {
                z5 = false;
            }
            if (hasAnyFlag(intValue, 3)) {
                animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.taskbar.TaskbarLauncherStateController.3
                    {
                        TaskbarLauncherStateController.this = this;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        TaskbarLauncherStateController.this.mIsAnimatingToLauncher = false;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationStart(Animator animator) {
                        TaskbarLauncherStateController.this.mIsAnimatingToLauncher = hasAnyFlag;
                        TaskbarStashController taskbarStashController2 = TaskbarLauncherStateController.this.mControllers.taskbarStashController;
                        taskbarStashController2.updateStateForFlag(1, !hasAnyFlag);
                        taskbarStashController2.applyState(j4);
                    }
                });
                z5 = true;
            }
            if (z5 && hasAnyFlag) {
                AbstractFloatingView.closeAllOpenViews(this.mControllers.taskbarActivityContext);
            }
            if (hasAnyFlag(intValue, 64) && !hasAnyFlag(64)) {
                this.mLastUnlockTimeMs = SystemClock.elapsedRealtime();
            }
            boolean hasAnyFlag2 = hasAnyFlag(64);
            float f5 = hasAnyFlag2 ? 0.0f : 1.0f;
            if (this.mTaskbarAlpha.isAnimating() || this.mTaskbarAlpha.value != f5) {
                ObjectAnimator animateToValue = this.mTaskbarAlpha.animateToValue(f5);
                animateToValue.setDuration(j4);
                if (hasAnyFlag2) {
                    animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.taskbar.TaskbarLauncherStateController.4
                        {
                            TaskbarLauncherStateController.this = this;
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public final void onAnimationEnd(Animator animator) {
                            TaskbarLauncherStateController.this.mControllers.taskbarStashController.updateAndAnimateTransientTaskbar(true, true);
                        }
                    });
                } else {
                    animateToValue.setStartDelay(Math.max(0L, 250 - (SystemClock.elapsedRealtime() - this.mLastUnlockTimeMs)));
                }
                animatorSet.play(animateToValue);
            }
            float f6 = (hasAnyFlag && isTaskbarAlignedWithHotseat()) ? 0.0f : 1.0f;
            if (this.mTaskbarBackgroundAlpha.isAnimating() || this.mTaskbarBackgroundAlpha.value != f6) {
                this.mTaskbarBackgroundAlpha.cancelAnimation();
                boolean z7 = hasAnyFlag && !isIconAlignedWithHotseat;
                boolean z8 = (hasAnyFlag || isIconAlignedWithHotseat) ? false : true;
                boolean z9 = hasAnyFlag && isIconAlignedWithHotseat;
                float f7 = (z7 || z8) ? ((float) j4) * 0.33f : 0.0f;
                float f8 = (float) j4;
                float f9 = f8 - f7;
                if (z9) {
                    f9 = f8 * 0.25f;
                }
                ObjectAnimator duration = this.mTaskbarBackgroundAlpha.animateToValue(f6).setDuration(f9);
                duration.setStartDelay(f7);
                animatorSet.play(duration);
            }
            float f10 = hasAnyFlag ? 0.0f : 1.0f;
            if (this.mTaskbarCornerRoundness.isAnimating() || this.mTaskbarCornerRoundness.value != f10) {
                this.mTaskbarCornerRoundness.cancelAnimation();
                animatorSet.play(this.mTaskbarCornerRoundness.animateToValue(f10));
            }
            boolean z10 = hasAnyFlag(intValue, 32) && !hasAnyFlag(32);
            AnimatedFloat animatedFloat = this.mIconAlignment;
            if (z10) {
                animatedFloat.cancelAnimation();
                animatedFloat.updateValue(f4);
                if (!hasAnyFlag) {
                    this.mControllers.taskbarStashController.updateStateForFlag(1, true);
                    this.mControllers.taskbarStashController.applyState(0L);
                }
            } else {
                if (!animatedFloat.isAnimatingToValue(f4)) {
                    if (!(!animatedFloat.isAnimating() && animatedFloat.value == f4)) {
                        animatedFloat.cancelAnimation();
                        animatorSet.play(animatedFloat.animateToValue(f4).setDuration(j4));
                    }
                }
                animatorSet.addListener(AnimatorListeners.forEndCallback(new RunnableC0436j0(this, 1)));
            }
            animatorSet.setInterpolator(y0.e.f12937a);
            if (z4) {
                animatorSet.start();
            }
            return animatorSet;
        }
        return null;
    }
}
