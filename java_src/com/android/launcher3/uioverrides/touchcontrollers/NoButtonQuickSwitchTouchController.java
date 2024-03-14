package com.android.launcher3.uioverrides.touchcontrollers;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.graphics.PointF;
import android.util.FloatProperty;
import android.view.MotionEvent;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.LauncherState;
import com.android.launcher3.MotionEventsUtils;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.AnimatedFloat;
import com.android.launcher3.anim.AnimatorListeners;
import com.android.launcher3.anim.AnimatorPlaybackController;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.statemanager.BaseState;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.states.StateAnimationConfig;
import com.android.launcher3.touch.BaseSwipeDetector;
import com.android.launcher3.touch.BothAxesSwipeDetector;
import com.android.launcher3.uioverrides.QuickstepLauncher;
import com.android.launcher3.uioverrides.states.BackgroundAppState;
import com.android.launcher3.uioverrides.states.OverviewState;
import com.android.launcher3.uioverrides.states.QuickSwitchState;
import com.android.launcher3.util.DisplayController;
import com.android.launcher3.util.NavigationMode;
import com.android.launcher3.util.TouchController;
import com.android.launcher3.util.VibratorWrapper;
import com.android.launcher3.util.window.RefreshRateTracker;
import com.android.quickstep.SystemUiProxy;
import com.android.quickstep.util.AnimatorControllerWithResistance;
import com.android.quickstep.util.LayoutUtils;
import com.android.quickstep.util.MotionPauseDetector;
import com.android.quickstep.util.RecentsOrientedState;
import com.android.quickstep.util.WorkspaceRevealAnim;
import com.android.quickstep.views.DesktopTaskView;
import com.android.quickstep.views.LauncherRecentsView;
import com.android.quickstep.views.RecentsView;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.InteractionJankMonitorWrapper;
/* loaded from: classes.dex */
public final class NoButtonQuickSwitchTouchController implements TouchController, BothAxesSwipeDetector.Listener {
    protected final Animator.AnimatorListener mClearStateOnCancelListener = LauncherAnimUtils.newCancelListener(new f(this, 0));
    private boolean mIsHomeScreenVisible = true;
    private final QuickstepLauncher mLauncher;
    private final float mMaxYProgress;
    private final MotionPauseDetector mMotionPauseDetector;
    private final float mMotionPauseMinDisplacement;
    private boolean mNoIntercept;
    private AnimatorPlaybackController mNonOverviewAnim;
    private final LauncherRecentsView mRecentsView;
    private LauncherState mStartState;
    private final BothAxesSwipeDetector mSwipeDetector;
    private AnimatorPlaybackController mXOverviewAnim;
    private final float mXRange;
    private AnimatedFloat mYOverviewAnim;
    private final float mYRange;
    private static final Interpolator FADE_OUT_INTERPOLATOR = y0.e.f12931E;
    private static final Interpolator TRANSLATE_OUT_INTERPOLATOR = y0.e.f12958v;
    private static final Interpolator SCALE_DOWN_INTERPOLATOR = y0.e.f12949m;

    public NoButtonQuickSwitchTouchController(QuickstepLauncher quickstepLauncher) {
        this.mLauncher = quickstepLauncher;
        this.mSwipeDetector = new BothAxesSwipeDetector(quickstepLauncher, this);
        LauncherRecentsView launcherRecentsView = (LauncherRecentsView) quickstepLauncher.getOverviewPanel();
        this.mRecentsView = launcherRecentsView;
        this.mXRange = quickstepLauncher.getDeviceProfile().widthPx / 2.0f;
        float shelfTrackingDistance = LayoutUtils.getShelfTrackingDistance(quickstepLauncher, quickstepLauncher.getDeviceProfile(), launcherRecentsView.getPagedOrientationHandler());
        this.mYRange = shelfTrackingDistance;
        this.mMaxYProgress = quickstepLauncher.getDeviceProfile().heightPx / shelfTrackingDistance;
        this.mMotionPauseDetector = new MotionPauseDetector(quickstepLauncher);
        this.mMotionPauseMinDisplacement = quickstepLauncher.getResources().getDimension(R.dimen.motion_pause_detector_min_displacement_from_app);
    }

    public static /* synthetic */ void a(NoButtonQuickSwitchTouchController noButtonQuickSwitchTouchController, AnimatorControllerWithResistance animatorControllerWithResistance) {
        AnimatedFloat animatedFloat = noButtonQuickSwitchTouchController.mYOverviewAnim;
        if (animatedFloat != null) {
            animatorControllerWithResistance.setProgress(animatedFloat.value, noButtonQuickSwitchTouchController.mMaxYProgress);
        }
    }

    public static void b(NoButtonQuickSwitchTouchController noButtonQuickSwitchTouchController) {
        noButtonQuickSwitchTouchController.cancelAnimations();
        noButtonQuickSwitchTouchController.mNonOverviewAnim = null;
        noButtonQuickSwitchTouchController.mXOverviewAnim = null;
        noButtonQuickSwitchTouchController.mYOverviewAnim = null;
        noButtonQuickSwitchTouchController.mIsHomeScreenVisible = true;
        noButtonQuickSwitchTouchController.mSwipeDetector.finishedScrolling();
        noButtonQuickSwitchTouchController.mRecentsView.setOnEmptyMessageUpdatedListener(null);
    }

    public static void c(NoButtonQuickSwitchTouchController noButtonQuickSwitchTouchController) {
        noButtonQuickSwitchTouchController.getClass();
        ((VibratorWrapper) VibratorWrapper.INSTANCE.get(noButtonQuickSwitchTouchController.mLauncher)).vibrate(VibratorWrapper.OVERVIEW_HAPTIC);
    }

    private void cancelAnimations() {
        AnimatorPlaybackController animatorPlaybackController = this.mNonOverviewAnim;
        if (animatorPlaybackController != null) {
            animatorPlaybackController.getAnimationPlayer().cancel();
        }
        AnimatorPlaybackController animatorPlaybackController2 = this.mXOverviewAnim;
        if (animatorPlaybackController2 != null) {
            animatorPlaybackController2.getAnimationPlayer().cancel();
        }
        AnimatedFloat animatedFloat = this.mYOverviewAnim;
        if (animatedFloat != null) {
            animatedFloat.cancelAnimation();
        }
        this.mMotionPauseDetector.clear();
    }

    public static /* synthetic */ void d(NoButtonQuickSwitchTouchController noButtonQuickSwitchTouchController, boolean z4) {
        if (z4) {
            noButtonQuickSwitchTouchController.getClass();
        } else if (noButtonQuickSwitchTouchController.mSwipeDetector.isDraggingState()) {
            noButtonQuickSwitchTouchController.setupOverviewAnimators();
        }
    }

    public void onAnimationToStateCompleted(LauncherState launcherState) {
        QuickstepLauncher quickstepLauncher = this.mLauncher;
        StatsLogManager.StatsLogger withDstState = quickstepLauncher.getStatsLogManager().logger().withSrcState(2).withDstState(launcherState.statsLogOrdinal);
        LauncherState launcherState2 = this.mStartState;
        int i4 = launcherState2.statsLogOrdinal;
        QuickSwitchState quickSwitchState = LauncherState.QUICK_SWITCH_FROM_HOME;
        withDstState.log(StatsLogManager.getLauncherAtomEvent(i4, launcherState.statsLogOrdinal, launcherState == quickSwitchState ? StatsLogManager.LauncherEvent.LAUNCHER_QUICKSWITCH_RIGHT : launcherState.ordinal > launcherState2.ordinal ? StatsLogManager.LauncherEvent.LAUNCHER_UNKNOWN_SWIPEUP : StatsLogManager.LauncherEvent.LAUNCHER_UNKNOWN_SWIPEDOWN));
        if (launcherState == quickSwitchState) {
            InteractionJankMonitorWrapper.end(11);
        }
        quickstepLauncher.getStateManager().goToState((BaseState) launcherState, false, AnimatorListeners.forEndCallback(new f(this, 1)));
    }

    private void setupOverviewAnimators() {
        QuickSwitchState quickSwitchState = LauncherState.QUICK_SWITCH_FROM_HOME;
        OverviewState overviewState = LauncherState.OVERVIEW;
        FloatProperty floatProperty = RecentsView.RECENTS_SCALE_PROPERTY;
        quickSwitchState.getClass();
        QuickstepLauncher quickstepLauncher = this.mLauncher;
        Float valueOf = Float.valueOf(BackgroundAppState.getOverviewScaleAndOffsetForBackgroundState(quickstepLauncher)[0]);
        LauncherRecentsView launcherRecentsView = this.mRecentsView;
        floatProperty.set((FloatProperty) launcherRecentsView, valueOf);
        FloatProperty floatProperty2 = RecentsView.ADJACENT_PAGE_HORIZONTAL_OFFSET;
        Float valueOf2 = Float.valueOf(1.0f);
        floatProperty2.set((FloatProperty) launcherRecentsView, valueOf2);
        RecentsView.TASK_THUMBNAIL_SPLASH_ALPHA.set((FloatProperty) launcherRecentsView, valueOf2);
        launcherRecentsView.setContentAlpha(1.0f);
        launcherRecentsView.setFullscreenProgress(1.0f);
        quickstepLauncher.getActionsView().getVisibilityAlpha().setValue(0.0f);
        launcherRecentsView.setTaskIconScaledDown(true);
        float[] overviewScaleAndOffset = overviewState.getOverviewScaleAndOffset(quickstepLauncher);
        PendingAnimation pendingAnimation = new PendingAnimation(this.mXRange * 2.0f);
        float f4 = overviewScaleAndOffset[1];
        Interpolator interpolator = y0.e.f12949m;
        pendingAnimation.setFloat(launcherRecentsView, floatProperty2, f4, interpolator);
        pendingAnimation.setViewBackgroundColor(quickstepLauncher.getScrimView(), quickSwitchState.getWorkspaceScrimColor(quickstepLauncher), interpolator);
        if (launcherRecentsView.getTaskViewCount() == 0) {
            pendingAnimation.addFloat(this.mRecentsView, RecentsView.CONTENT_ALPHA, 0.0f, 1.0f, interpolator);
        }
        AnimatorPlaybackController createPlaybackController = pendingAnimation.createPlaybackController();
        this.mXOverviewAnim = createPlaybackController;
        createPlaybackController.dispatchOnStart();
        PendingAnimation pendingAnimation2 = new PendingAnimation(this.mYRange * 2.0f);
        float f5 = overviewScaleAndOffset[0];
        Interpolator interpolator2 = SCALE_DOWN_INTERPOLATOR;
        pendingAnimation2.setFloat(launcherRecentsView, floatProperty, f5, interpolator2);
        pendingAnimation2.setFloat(launcherRecentsView, RecentsView.FULLSCREEN_PROGRESS, 0.0f, interpolator2);
        AnimatorPlaybackController createPlaybackController2 = pendingAnimation2.createPlaybackController();
        QuickstepLauncher quickstepLauncher2 = this.mLauncher;
        RecentsOrientedState pagedViewOrientedState = launcherRecentsView.getPagedViewOrientedState();
        DeviceProfile deviceProfile = quickstepLauncher.getDeviceProfile();
        LauncherRecentsView launcherRecentsView2 = this.mRecentsView;
        this.mYOverviewAnim = new AnimatedFloat(new e(this, AnimatorControllerWithResistance.createForRecents(createPlaybackController2, quickstepLauncher2, pagedViewOrientedState, deviceProfile, launcherRecentsView2, floatProperty, launcherRecentsView2, RecentsView.TASK_SECONDARY_TRANSLATION), 1));
        createPlaybackController2.dispatchOnStart();
    }

    private void updateNonOverviewAnim(LauncherState launcherState, StateAnimationConfig stateAnimationConfig) {
        stateAnimationConfig.duration = Math.max(this.mXRange, this.mYRange) * 2.0f;
        stateAnimationConfig.animFlags |= 10;
        AnimatorPlaybackController createAnimationToNewWorkspace = this.mLauncher.getStateManager().createAnimationToNewWorkspace(launcherState, stateAnimationConfig);
        this.mNonOverviewAnim = createAnimationToNewWorkspace;
        createAnimationToNewWorkspace.getTarget().addListener(this.mClearStateOnCancelListener);
    }

    @Override // com.android.launcher3.util.TouchController
    public final boolean onControllerInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        BothAxesSwipeDetector bothAxesSwipeDetector = this.mSwipeDetector;
        if (actionMasked == 0) {
            boolean isTrackpadMotionEvent = MotionEventsUtils.isTrackpadMotionEvent(motionEvent);
            QuickstepLauncher quickstepLauncher = this.mLauncher;
            boolean z4 = !((isTrackpadMotionEvent || DisplayController.getNavigationMode(quickstepLauncher) != NavigationMode.THREE_BUTTONS) && quickstepLauncher.isInState(LauncherState.NORMAL) && (motionEvent.getEdgeFlags() & 256) != 0 && (((SystemUiProxy) SystemUiProxy.INSTANCE.get(quickstepLauncher)).getLastSystemUiStateFlags() & 128) == 0 && !DesktopTaskView.DESKTOP_MODE_SUPPORTED && (!MotionEventsUtils.isTrackpadMultiFingerSwipe(motionEvent) || (MotionEventsUtils.isTrackpadMultiFingerSwipe(motionEvent) && motionEvent.getAxisValue(53) == 4.0f)));
            this.mNoIntercept = z4;
            if (z4) {
                return false;
            }
            bothAxesSwipeDetector.setDetectableScrollConditions(2, false);
        }
        if (this.mNoIntercept) {
            return false;
        }
        bothAxesSwipeDetector.onTouchEvent(motionEvent);
        return bothAxesSwipeDetector.isDraggingOrSettling();
    }

    @Override // com.android.launcher3.util.TouchController
    public final boolean onControllerTouchEvent(MotionEvent motionEvent) {
        this.mSwipeDetector.onTouchEvent(motionEvent);
        return true;
    }

    public final void onDrag(PointF pointF, MotionEvent motionEvent) {
        AnimatorPlaybackController animatorPlaybackController;
        float max = Math.max(0.0f, pointF.x) / this.mXRange;
        float max2 = Math.max(0.0f, -pointF.y) / this.mYRange;
        String[] strArr = Utilities.EMPTY_STRING_ARRAY;
        float f4 = (max2 * 0.75f) + 0.25f;
        if (this.mIsHomeScreenVisible && (animatorPlaybackController = this.mNonOverviewAnim) != null) {
            animatorPlaybackController.setPlayFraction(max);
        }
        this.mIsHomeScreenVisible = ((DecelerateInterpolator) FADE_OUT_INTERPOLATOR).getInterpolation(max) <= 0.99f;
        boolean z4 = (-pointF.y) < this.mMotionPauseMinDisplacement;
        MotionPauseDetector motionPauseDetector = this.mMotionPauseDetector;
        motionPauseDetector.setDisallowPause(z4);
        motionPauseDetector.addPosition(motionEvent);
        AnimatorPlaybackController animatorPlaybackController2 = this.mXOverviewAnim;
        if (animatorPlaybackController2 != null) {
            animatorPlaybackController2.setPlayFraction(max);
        }
        AnimatedFloat animatedFloat = this.mYOverviewAnim;
        if (animatedFloat != null) {
            animatedFloat.updateValue(f4);
        }
    }

    public final void onDragEnd(PointF pointF) {
        LauncherState launcherState;
        float f4 = pointF.x;
        BothAxesSwipeDetector bothAxesSwipeDetector = this.mSwipeDetector;
        boolean isFling = bothAxesSwipeDetector.isFling(f4);
        boolean isFling2 = bothAxesSwipeDetector.isFling(pointF.y);
        boolean z4 = (isFling || isFling2) ? false : true;
        boolean isPaused = this.mMotionPauseDetector.isPaused();
        QuickstepLauncher quickstepLauncher = this.mLauncher;
        if (isPaused && z4) {
            cancelAnimations();
            InteractionJankMonitorWrapper.cancel(11);
            StateAnimationConfig stateAnimationConfig = new StateAnimationConfig();
            stateAnimationConfig.duration = 300L;
            StateManager stateManager = quickstepLauncher.getStateManager();
            LauncherState launcherState2 = this.mStartState;
            OverviewState overviewState = LauncherState.OVERVIEW;
            AnimatorSet createAtomicAnimation = stateManager.createAtomicAnimation(launcherState2, overviewState, stateAnimationConfig);
            createAtomicAnimation.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.uioverrides.touchcontrollers.NoButtonQuickSwitchTouchController.1
                {
                    NoButtonQuickSwitchTouchController.this = this;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    NoButtonQuickSwitchTouchController.this.onAnimationToStateCompleted(LauncherState.OVERVIEW);
                    NoButtonQuickSwitchTouchController.this.mRecentsView.animateUpTaskIconScale();
                }
            });
            createAtomicAnimation.start();
            quickstepLauncher.getStateManager().createAnimationToNewWorkspace(overviewState, stateAnimationConfig.duration, 1).dispatchOnStart();
            return;
        }
        if (isFling && isFling2) {
            float f5 = pointF.x;
            launcherState = f5 < 0.0f ? LauncherState.NORMAL : pointF.y > 0.0f ? LauncherState.QUICK_SWITCH_FROM_HOME : Math.abs(f5) > Math.abs(pointF.y) ? LauncherState.QUICK_SWITCH_FROM_HOME : LauncherState.NORMAL;
        } else if (isFling) {
            launcherState = pointF.x > 0.0f ? LauncherState.QUICK_SWITCH_FROM_HOME : LauncherState.NORMAL;
        } else if (isFling2) {
            launcherState = pointF.y > 0.0f ? LauncherState.QUICK_SWITCH_FROM_HOME : LauncherState.NORMAL;
        } else {
            launcherState = (!((this.mXOverviewAnim.getInterpolatedProgress() > 0.5f ? 1 : (this.mXOverviewAnim.getInterpolatedProgress() == 0.5f ? 0 : -1)) > 0) || ((this.mYOverviewAnim.value > 1.0f ? 1 : (this.mYOverviewAnim.value == 1.0f ? 0 : -1)) > 0)) ? LauncherState.NORMAL : LauncherState.QUICK_SWITCH_FROM_HOME;
        }
        float boundToRange = Utilities.boundToRange(((pointF.x * RefreshRateTracker.getSingleFrameMs(quickstepLauncher)) / this.mXRange) + this.mXOverviewAnim.getProgressFraction(), 0.0f, 1.0f);
        LauncherState launcherState3 = LauncherState.NORMAL;
        float f6 = launcherState == launcherState3 ? 0.0f : 1.0f;
        long calculateDuration = BaseSwipeDetector.calculateDuration(pointF.x, Math.abs(f6 - boundToRange));
        ValueAnimator animationPlayer = this.mXOverviewAnim.getAnimationPlayer();
        animationPlayer.setFloatValues(boundToRange, f6);
        animationPlayer.setDuration(calculateDuration).setInterpolator(y0.e.c(pointF.x));
        this.mXOverviewAnim.dispatchOnStart();
        boolean z5 = isFling2 && pointF.y < 0.0f && launcherState == launcherState3;
        float f7 = this.mYOverviewAnim.value;
        float singleFrameMs = pointF.y * RefreshRateTracker.getSingleFrameMs(quickstepLauncher);
        float f8 = this.mYRange;
        float boundToRange2 = Utilities.boundToRange(f7 - (singleFrameMs / f8), 0.0f, this.mMaxYProgress);
        float f9 = z5 ? 1.0f : launcherState == launcherState3 ? boundToRange2 : 0.0f;
        long abs = (Math.abs(f9 - boundToRange2) * f8) / Math.max(1.0f, Math.abs(pointF.y));
        ObjectAnimator animateToValue = this.mYOverviewAnim.animateToValue(boundToRange2, f9);
        animateToValue.setDuration(abs);
        this.mYOverviewAnim.updateValue(boundToRange2);
        ValueAnimator animationPlayer2 = this.mNonOverviewAnim.getAnimationPlayer();
        if (!z5 || this.mIsHomeScreenVisible) {
            boolean z6 = launcherState == launcherState3;
            if (z6) {
                this.mNonOverviewAnim.getTarget().removeListener(this.mClearStateOnCancelListener);
                this.mNonOverviewAnim.dispatchOnCancel();
            }
            animationPlayer2.setFloatValues(this.mNonOverviewAnim.getProgressFraction(), z6 ? 0.0f : 1.0f);
            this.mNonOverviewAnim.dispatchOnStart();
        } else {
            StateAnimationConfig stateAnimationConfig2 = new StateAnimationConfig();
            stateAnimationConfig2.animFlags = 1;
            updateNonOverviewAnim(launcherState, stateAnimationConfig2);
            animationPlayer2 = this.mNonOverviewAnim.getAnimationPlayer();
            this.mNonOverviewAnim.dispatchOnStart();
            new WorkspaceRevealAnim(quickstepLauncher, false).start();
        }
        if (launcherState == LauncherState.QUICK_SWITCH_FROM_HOME) {
            ((VibratorWrapper) VibratorWrapper.INSTANCE.get(quickstepLauncher)).vibrate(RecentsView.SCROLL_VIBRATION_PRIMITIVE, 0.6f, RecentsView.SCROLL_VIBRATION_FALLBACK);
        } else {
            InteractionJankMonitorWrapper.cancel(11);
        }
        animationPlayer2.setDuration(Math.max(calculateDuration, abs));
        this.mNonOverviewAnim.setEndAction(new e(this, launcherState, 0));
        cancelAnimations();
        animationPlayer.start();
        animateToValue.start();
        animationPlayer2.start();
    }

    public final void onDragStart(boolean z4) {
        MotionPauseDetector motionPauseDetector = this.mMotionPauseDetector;
        motionPauseDetector.clear();
        if (z4) {
            LauncherRecentsView launcherRecentsView = this.mRecentsView;
            InteractionJankMonitorWrapper.begin(launcherRecentsView, 11);
            this.mStartState = (LauncherState) this.mLauncher.getStateManager().getState();
            motionPauseDetector.setOnMotionPauseListener(new g(this));
            this.mSwipeDetector.setDetectableScrollConditions(3, false);
            StateAnimationConfig stateAnimationConfig = new StateAnimationConfig();
            Interpolator interpolator = FADE_OUT_INTERPOLATOR;
            stateAnimationConfig.setInterpolator(3, interpolator);
            stateAnimationConfig.setInterpolator(10, interpolator);
            stateAnimationConfig.setInterpolator(1, interpolator);
            stateAnimationConfig.setInterpolator(13, interpolator);
            stateAnimationConfig.setInterpolator(0, TRANSLATE_OUT_INTERPOLATOR);
            updateNonOverviewAnim(LauncherState.QUICK_SWITCH_FROM_HOME, stateAnimationConfig);
            this.mNonOverviewAnim.dispatchOnStart();
            if (launcherRecentsView.getTaskViewCount() == 0) {
                launcherRecentsView.setOnEmptyMessageUpdatedListener(new g(this));
            }
            setupOverviewAnimators();
        }
    }
}
