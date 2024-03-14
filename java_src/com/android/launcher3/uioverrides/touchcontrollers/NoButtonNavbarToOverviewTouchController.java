package com.android.launcher3.uioverrides.touchcontrollers;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.graphics.PointF;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.LauncherState;
import com.android.launcher3.MotionEventsUtils;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.AnimatorPlaybackController;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.states.HintState;
import com.android.launcher3.states.StateAnimationConfig;
import com.android.launcher3.taskbar.LauncherTaskbarUIController;
import com.android.launcher3.uioverrides.QuickstepLauncher;
import com.android.launcher3.util.DisplayController;
import com.android.launcher3.util.NavigationMode;
import com.android.launcher3.util.VibratorWrapper;
import com.android.quickstep.SystemUiProxy;
import com.android.quickstep.util.AnimatorControllerWithResistance;
import com.android.quickstep.util.MotionPauseDetector;
import com.android.quickstep.util.OverviewToHomeAnim;
import com.android.quickstep.views.RecentsView;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final class NoButtonNavbarToOverviewTouchController extends PortraitStatesTouchController {
    private final Consumer mCancelSplitRunnable;
    private boolean mDidTouchStartInNavBar;
    private final MotionPauseDetector mMotionPauseDetector;
    private final float mMotionPauseMinDisplacement;
    private ObjectAnimator mNormalToHintOverviewScrimAnimator;
    private AnimatorPlaybackController mOverviewResistYAnim;
    private boolean mReachedOverview;
    private final RecentsView mRecentsView;
    private PointF mStartDisplacement;
    private float mStartY;
    private boolean mStartedOverview;
    private final VibratorWrapper mVibratorWrapper;

    public NoButtonNavbarToOverviewTouchController(Launcher launcher, b1.f fVar) {
        super(launcher);
        this.mStartDisplacement = new PointF();
        this.mRecentsView = (RecentsView) launcher.getOverviewPanel();
        this.mMotionPauseDetector = new MotionPauseDetector(launcher);
        this.mMotionPauseMinDisplacement = ViewConfiguration.get(launcher).getScaledTouchSlop();
        this.mVibratorWrapper = (VibratorWrapper) VibratorWrapper.INSTANCE.get(launcher.getApplicationContext());
        this.mCancelSplitRunnable = fVar;
    }

    public static void c(NoButtonNavbarToOverviewTouchController noButtonNavbarToOverviewTouchController) {
        noButtonNavbarToOverviewTouchController.mOverviewResistYAnim = AnimatorControllerWithResistance.createRecentsResistanceFromOverviewAnim(noButtonNavbarToOverviewTouchController.mLauncher, null).createPlaybackController();
        noButtonNavbarToOverviewTouchController.mReachedOverview = true;
        if (noButtonNavbarToOverviewTouchController.mDetector.isDraggingState()) {
            return;
        }
        noButtonNavbarToOverviewTouchController.onSwipeInteractionCompleted(LauncherState.OVERVIEW);
    }

    public static void d(NoButtonNavbarToOverviewTouchController noButtonNavbarToOverviewTouchController) {
        AnimatorPlaybackController animatorPlaybackController = noButtonNavbarToOverviewTouchController.mCurrentAnimation;
        if (animatorPlaybackController == null) {
            return;
        }
        noButtonNavbarToOverviewTouchController.mNormalToHintOverviewScrimAnimator = null;
        animatorPlaybackController.getTarget().addListener(LauncherAnimUtils.newCancelListener(new d(noButtonNavbarToOverviewTouchController, 2)));
        noButtonNavbarToOverviewTouchController.mCurrentAnimation.getTarget().removeListener(noButtonNavbarToOverviewTouchController.mClearStateOnCancelListener);
        noButtonNavbarToOverviewTouchController.mCurrentAnimation.dispatchOnCancel();
        noButtonNavbarToOverviewTouchController.mStartedOverview = true;
        ((VibratorWrapper) VibratorWrapper.INSTANCE.get(noButtonNavbarToOverviewTouchController.mLauncher)).vibrate(VibratorWrapper.OVERVIEW_HAPTIC);
    }

    public static void f(NoButtonNavbarToOverviewTouchController noButtonNavbarToOverviewTouchController) {
        if (!noButtonNavbarToOverviewTouchController.mReachedOverview || noButtonNavbarToOverviewTouchController.mDetector.isDraggingState()) {
            return;
        }
        noButtonNavbarToOverviewTouchController.onSwipeInteractionCompleted(LauncherState.OVERVIEW);
    }

    private boolean handlingOverviewAnim() {
        return this.mDidTouchStartInNavBar && this.mStartState == LauncherState.NORMAL && (((SystemUiProxy) SystemUiProxy.INSTANCE.get(this.mLauncher)).getLastSystemUiStateFlags() & 128) == 0;
    }

    @Override // com.android.launcher3.uioverrides.touchcontrollers.PortraitStatesTouchController, com.android.launcher3.touch.AbstractStateChangeTouchController
    public final boolean canInterceptTouch(MotionEvent motionEvent) {
        if (MotionEventsUtils.isTrackpadMotionEvent(motionEvent) || DisplayController.getNavigationMode(this.mLauncher) != NavigationMode.THREE_BUTTONS) {
            this.mDidTouchStartInNavBar = (motionEvent.getEdgeFlags() & 256) != 0;
            this.mDetector.setTouchSlopMultiplier((((SystemUiProxy) SystemUiProxy.INSTANCE.get(this.mLauncher)).getLastSystemUiStateFlags() & 65536) != 0 ? 2.5f : 1.0f);
            return super.canInterceptTouch(motionEvent) && !this.mLauncher.isInState(LauncherState.HINT_STATE);
        }
        return false;
    }

    @Override // com.android.launcher3.uioverrides.touchcontrollers.PortraitStatesTouchController, com.android.launcher3.touch.AbstractStateChangeTouchController
    public final LauncherState getTargetState(LauncherState launcherState, boolean z4) {
        return (launcherState == LauncherState.NORMAL && this.mDidTouchStartInNavBar) ? LauncherState.HINT_STATE : super.getTargetState(launcherState, z4);
    }

    @Override // com.android.launcher3.uioverrides.touchcontrollers.PortraitStatesTouchController, com.android.launcher3.touch.AbstractStateChangeTouchController
    public final float initCurrentAnimation() {
        return this.mToState == LauncherState.HINT_STATE ? (-1.0f) / this.mLauncher.getDeviceProfile().heightPx : super.initCurrentAnimation();
    }

    @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    public final boolean onDrag(float f4, float f5, MotionEvent motionEvent) {
        AnimatorPlaybackController animatorPlaybackController;
        if (this.mStartedOverview) {
            if (this.mReachedOverview) {
                RecentsView recentsView = this.mRecentsView;
                recentsView.setTranslationX((f5 - this.mStartDisplacement.x) * 0.25f);
                float f6 = this.mStartDisplacement.y;
                float f7 = (f6 - f4) / this.mStartY;
                if (f7 <= 0.0f || (animatorPlaybackController = this.mOverviewResistYAnim) == null) {
                    recentsView.setTranslationY((f4 - f6) * 0.25f);
                } else {
                    animatorPlaybackController.setPlayFraction(f7);
                }
            } else {
                this.mStartDisplacement.set(f5, f4);
                this.mStartY = motionEvent.getY();
            }
        }
        boolean z4 = !handlingOverviewAnim() || (-f4) < this.mMotionPauseMinDisplacement;
        MotionPauseDetector motionPauseDetector = this.mMotionPauseDetector;
        motionPauseDetector.setDisallowPause(z4);
        motionPauseDetector.addPosition(motionEvent);
        return this.mStartedOverview || onDrag(f4, motionEvent);
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController, com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    public final void onDragEnd(float f4) {
        LauncherTaskbarUIController taskbarUIController = ((QuickstepLauncher) this.mLauncher).getTaskbarUIController();
        if (taskbarUIController != null) {
            taskbarUIController.setShouldDelayLauncherStateAnim(false);
        }
        boolean z4 = this.mStartedOverview;
        MotionPauseDetector motionPauseDetector = this.mMotionPauseDetector;
        if (z4) {
            boolean z5 = !motionPauseDetector.isPaused();
            if (z5) {
                new OverviewToHomeAnim(this.mLauncher, new d(this, 0), null).animateWithVelocity(f4);
            }
            if (this.mReachedOverview) {
                RecentsView recentsView = this.mRecentsView;
                float max = Math.max(Math.abs(recentsView.getTranslationX()), Math.abs(recentsView.getTranslationY()));
                int i4 = this.mLauncher.getResources().getDisplayMetrics().densityDpi;
                String[] strArr = Utilities.EMPTY_STRING_ARRAY;
                long max2 = Math.max(80.0f, (max / (i4 / 160.0f)) / 0.8f);
                recentsView.animate().translationX(0.0f).translationY(0.0f).setInterpolator(y0.e.f12961y).setDuration(max2).withEndAction(z5 ? null : new d(this, 1));
                if (!z5) {
                    StateAnimationConfig stateAnimationConfig = new StateAnimationConfig();
                    stateAnimationConfig.duration = max2;
                    LauncherState launcherState = (LauncherState) this.mLauncher.getStateManager().getState();
                    this.mLauncher.getStateManager().createAtomicAnimation(launcherState, launcherState, stateAnimationConfig).start();
                }
            }
        } else {
            super.onDragEnd(f4);
        }
        motionPauseDetector.clear();
        this.mNormalToHintOverviewScrimAnimator = null;
        if (this.mLauncher.isInState(LauncherState.OVERVIEW)) {
            clearState();
        }
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController, com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    public final void onDragStart(boolean z4, float f4) {
        LauncherTaskbarUIController taskbarUIController;
        if (this.mLauncher.isInState(LauncherState.ALL_APPS) && (taskbarUIController = ((QuickstepLauncher) this.mLauncher).getTaskbarUIController()) != null) {
            taskbarUIController.setShouldDelayLauncherStateAnim(true);
        }
        super.onDragStart(z4, f4);
        MotionPauseDetector motionPauseDetector = this.mMotionPauseDetector;
        motionPauseDetector.clear();
        if (handlingOverviewAnim()) {
            motionPauseDetector.setOnMotionPauseListener(new MotionPauseDetector.OnMotionPauseListener() { // from class: com.android.launcher3.uioverrides.touchcontrollers.c
                @Override // com.android.quickstep.util.MotionPauseDetector.OnMotionPauseListener
                public final void onMotionPauseDetected() {
                    NoButtonNavbarToOverviewTouchController.d(NoButtonNavbarToOverviewTouchController.this);
                }
            });
        }
        if (this.mFromState == LauncherState.NORMAL && this.mToState == LauncherState.HINT_STATE) {
            this.mNormalToHintOverviewScrimAnimator = ObjectAnimator.ofArgb(this.mLauncher.getScrimView(), LauncherAnimUtils.VIEW_BACKGROUND_COLOR, this.mFromState.getWorkspaceScrimColor(this.mLauncher), this.mToState.getWorkspaceScrimColor(this.mLauncher));
        }
        this.mStartedOverview = false;
        this.mReachedOverview = false;
        this.mOverviewResistYAnim = null;
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public final void updateProgress(float f4) {
        super.updateProgress(f4);
        ObjectAnimator objectAnimator = this.mNormalToHintOverviewScrimAnimator;
        if (objectAnimator != null) {
            objectAnimator.setCurrentFraction(f4);
        }
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public final void updateSwipeCompleteAnimation(ValueAnimator valueAnimator, long j4, LauncherState launcherState, float f4, boolean z4) {
        super.updateSwipeCompleteAnimation(valueAnimator, j4, launcherState, f4, z4);
        HintState hintState = LauncherState.HINT_STATE;
        if (launcherState == hintState) {
            hintState.getClass();
            valueAnimator.setDuration(80);
            AnimatorSet animatorSet = new AnimatorSet();
            this.mCancelSplitRunnable.accept(animatorSet);
            animatorSet.start();
        }
        if (FeatureFlags.ENABLE_PREMIUM_HAPTICS_ALL_APPS.get()) {
            LauncherState launcherState2 = this.mFromState;
            LauncherState launcherState3 = LauncherState.NORMAL;
            if (((launcherState2 == launcherState3 && this.mToState == LauncherState.ALL_APPS) || (launcherState2 == LauncherState.ALL_APPS && this.mToState == launcherState3)) && z4) {
                this.mVibratorWrapper.vibrateForDragBump();
            }
        }
    }
}
