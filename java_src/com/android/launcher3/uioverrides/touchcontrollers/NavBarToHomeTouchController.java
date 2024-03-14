package com.android.launcher3.uioverrides.touchcontrollers;

import android.animation.ValueAnimator;
import android.view.MotionEvent;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.LauncherState;
import com.android.launcher3.Utilities;
import com.android.launcher3.allapps.AllAppsTransitionController;
import com.android.launcher3.anim.AnimatorListeners;
import com.android.launcher3.anim.AnimatorPlaybackController;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.compat.AccessibilityManagerCompat;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.statemanager.BaseState;
import com.android.launcher3.touch.SingleAxisSwipeDetector;
import com.android.launcher3.util.TouchController;
import com.android.quickstep.TaskUtils;
import com.android.quickstep.util.AnimatorControllerWithResistance;
import com.android.quickstep.util.OverviewToHomeAnim;
import com.android.quickstep.views.RecentsView;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.ActivityManagerWrapper;
import java.util.Objects;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final class NavBarToHomeTouchController implements TouchController, SingleAxisSwipeDetector.Listener {
    private static final Interpolator PULLBACK_INTERPOLATOR = y0.e.f12931E;
    private final Consumer mCancelSplitRunnable;
    private AnimatorPlaybackController mCurrentAnimation;
    private LauncherState mEndState = LauncherState.NORMAL;
    private final Launcher mLauncher;
    private boolean mNoIntercept;
    private final float mPullbackDistance;
    private LauncherState mStartState;
    private final SingleAxisSwipeDetector mSwipeDetector;

    public NavBarToHomeTouchController(Launcher launcher, b1.f fVar) {
        this.mLauncher = launcher;
        this.mCancelSplitRunnable = fVar;
        this.mSwipeDetector = new SingleAxisSwipeDetector(launcher, this, SingleAxisSwipeDetector.VERTICAL);
        this.mPullbackDistance = launcher.getResources().getDimension(R.dimen.home_pullback_distance);
    }

    public static void b(NavBarToHomeTouchController navBarToHomeTouchController) {
        navBarToHomeTouchController.mCurrentAnimation = null;
        SingleAxisSwipeDetector singleAxisSwipeDetector = navBarToHomeTouchController.mSwipeDetector;
        singleAxisSwipeDetector.finishedScrolling();
        singleAxisSwipeDetector.setDetectableScrollConditions(0, false);
    }

    public void onSwipeInteractionCompleted(LauncherState launcherState) {
        this.mCurrentAnimation = null;
        SingleAxisSwipeDetector singleAxisSwipeDetector = this.mSwipeDetector;
        singleAxisSwipeDetector.finishedScrolling();
        singleAxisSwipeDetector.setDetectableScrollConditions(0, false);
        Launcher launcher = this.mLauncher;
        launcher.getStateManager().goToState(launcherState, false);
        AccessibilityManagerCompat.sendStateEventToTest(launcherState.ordinal, launcher);
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x0052 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0053  */
    @Override // com.android.launcher3.util.TouchController
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onControllerInterceptTouchEvent(android.view.MotionEvent r7) {
        /*
            r6 = this;
            int r0 = r7.getAction()
            com.android.launcher3.touch.SingleAxisSwipeDetector r1 = r6.mSwipeDetector
            r2 = 0
            if (r0 != 0) goto L56
            com.android.launcher3.Launcher r0 = r6.mLauncher
            com.android.launcher3.statemanager.StateManager r3 = r0.getStateManager()
            com.android.launcher3.statemanager.BaseState r3 = r3.getState()
            com.android.launcher3.LauncherState r3 = (com.android.launcher3.LauncherState) r3
            r6.mStartState = r3
            boolean r3 = com.android.launcher3.MotionEventsUtils.isTrackpadMotionEvent(r7)
            r4 = 1
            if (r3 != 0) goto L27
            com.android.launcher3.util.NavigationMode r3 = com.android.launcher3.util.DisplayController.getNavigationMode(r0)
            com.android.launcher3.util.NavigationMode r5 = com.android.launcher3.util.NavigationMode.THREE_BUTTONS
            if (r3 != r5) goto L27
            goto L4a
        L27:
            int r3 = r7.getEdgeFlags()
            r3 = r3 & 256(0x100, float:3.59E-43)
            if (r3 == 0) goto L31
            r3 = r4
            goto L32
        L31:
            r3 = r2
        L32:
            if (r3 != 0) goto L35
            goto L4a
        L35:
            com.android.launcher3.LauncherState r3 = r6.mStartState
            boolean r5 = r3.overviewUi
            if (r5 != 0) goto L4c
            com.android.launcher3.uioverrides.states.AllAppsState r5 = com.android.launcher3.LauncherState.ALL_APPS
            if (r3 != r5) goto L40
            goto L4c
        L40:
            r3 = 4193791(0x3ffdff, float:5.876753E-39)
            com.android.launcher3.AbstractFloatingView r0 = com.android.launcher3.AbstractFloatingView.getTopOpenViewWithType(r0, r3)
            if (r0 == 0) goto L4a
            goto L4c
        L4a:
            r0 = r2
            goto L4d
        L4c:
            r0 = r4
        L4d:
            r0 = r0 ^ r4
            r6.mNoIntercept = r0
            if (r0 == 0) goto L53
            return r2
        L53:
            r1.setDetectableScrollConditions(r4, r2)
        L56:
            boolean r6 = r6.mNoIntercept
            if (r6 == 0) goto L5b
            return r2
        L5b:
            r1.onTouchEvent(r7)
            boolean r6 = r1.isDraggingOrSettling()
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.uioverrides.touchcontrollers.NavBarToHomeTouchController.onControllerInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // com.android.launcher3.util.TouchController
    public final boolean onControllerTouchEvent(MotionEvent motionEvent) {
        this.mSwipeDetector.onTouchEvent(motionEvent);
        return true;
    }

    @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    public final boolean onDrag(float f4) {
        this.mCurrentAnimation.setPlayFraction(Utilities.getProgress(Math.min(0.0f, f4), 0.0f, this.mLauncher.getDeviceProfile().heightPx));
        return true;
    }

    @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    public final void onDragEnd(float f4) {
        boolean isFling = this.mSwipeDetector.isFling(f4);
        float progressFraction = this.mCurrentAnimation.getProgressFraction();
        if (!(((DecelerateInterpolator) PULLBACK_INTERPOLATOR).getInterpolation(progressFraction) >= 0.5f || (f4 < 0.0f && isFling))) {
            ValueAnimator animationPlayer = this.mCurrentAnimation.getAnimationPlayer();
            animationPlayer.setFloatValues(progressFraction, 0.0f);
            animationPlayer.addListener(AnimatorListeners.forSuccessCallback(new b(this, 3)));
            animationPlayer.setDuration(80L).start();
            return;
        }
        Launcher launcher = this.mLauncher;
        RecentsView recentsView = (RecentsView) launcher.getOverviewPanel();
        recentsView.switchToScreenshot(null, new a(recentsView, 1));
        if (this.mStartState.overviewUi) {
            new OverviewToHomeAnim(launcher, new b(this, 1), FeatureFlags.ENABLE_SPLIT_FROM_WORKSPACE_TO_WORKSPACE.get() ? this.mCancelSplitRunnable : null).animateWithVelocity(f4);
        } else {
            launcher.getStateManager().goToState((BaseState) this.mEndState, true, AnimatorListeners.forSuccessCallback(new b(this, 2)));
        }
        if (this.mStartState != this.mEndState) {
            launcher.getStatsLogManager().logger().withSrcState(this.mStartState.statsLogOrdinal).withDstState(this.mEndState.statsLogOrdinal).log(StatsLogManager.LauncherEvent.LAUNCHER_HOME_GESTURE);
        }
        if (AbstractFloatingView.getTopOpenView(launcher) != null) {
            AbstractFloatingView.closeAllOpenViews(launcher);
        }
        TaskUtils.closeSystemWindowsAsync(ActivityManagerWrapper.CLOSE_SYSTEM_WINDOWS_REASON_RECENTS);
    }

    @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    public final void onDragStart(boolean z4, float f4) {
        Launcher launcher = this.mLauncher;
        PendingAnimation pendingAnimation = new PendingAnimation(launcher.getDeviceProfile().heightPx * 2.0f);
        LauncherState launcherState = this.mStartState;
        boolean z5 = launcherState.overviewUi;
        Interpolator interpolator = PULLBACK_INTERPOLATOR;
        float f5 = this.mPullbackDistance;
        if (z5) {
            RecentsView recentsView = (RecentsView) launcher.getOverviewPanel();
            AnimatorControllerWithResistance.createRecentsResistanceFromOverviewAnim(launcher, pendingAnimation);
            Objects.requireNonNull(recentsView);
            pendingAnimation.addOnFrameCallback(new a(recentsView, 0));
            AbstractFloatingView.closeOpenContainer(launcher, 2048);
        } else if (launcherState == LauncherState.ALL_APPS) {
            AllAppsTransitionController allAppsController = launcher.getAllAppsController();
            pendingAnimation.setFloat(allAppsController, AllAppsTransitionController.ALL_APPS_PULL_BACK_TRANSLATION, -f5, interpolator);
            pendingAnimation.setFloat(allAppsController, AllAppsTransitionController.ALL_APPS_PULL_BACK_ALPHA, 0.5f, interpolator);
        }
        AbstractFloatingView topOpenView = AbstractFloatingView.getTopOpenView(launcher);
        if (topOpenView != null) {
            topOpenView.addHintCloseAnim(f5, interpolator, pendingAnimation);
        }
        AnimatorPlaybackController createPlaybackController = pendingAnimation.createPlaybackController();
        this.mCurrentAnimation = createPlaybackController;
        createPlaybackController.getTarget().addListener(LauncherAnimUtils.newCancelListener(new b(this, 0)));
    }
}
