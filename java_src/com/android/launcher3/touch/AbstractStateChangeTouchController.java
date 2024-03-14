package com.android.launcher3.touch;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.MotionEvent;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.LauncherState;
import com.android.launcher3.anim.AnimatorListeners;
import com.android.launcher3.anim.AnimatorPlaybackController;
import com.android.launcher3.logger.LauncherAtom$ContainerInfo;
import com.android.launcher3.logger.LauncherAtom$WorkspaceContainer;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.statemanager.BaseState;
import com.android.launcher3.states.StateAnimationConfig;
import com.android.launcher3.touch.SingleAxisSwipeDetector;
import com.android.launcher3.util.FlingBlockCheck;
import com.android.launcher3.util.TouchController;
/* loaded from: classes.dex */
public abstract class AbstractStateChangeTouchController implements TouchController, SingleAxisSwipeDetector.Listener {
    private boolean mAllAppsOvershootStarted;
    private boolean mCanBlockFling;
    protected AnimatorPlaybackController mCurrentAnimation;
    protected final SingleAxisSwipeDetector mDetector;
    private float mDisplacementShift;
    protected LauncherState mFromState;
    private boolean mIsLogContainerSet;
    protected final Launcher mLauncher;
    private boolean mNoIntercept;
    protected float mProgressMultiplier;
    protected int mStartContainerType;
    private float mStartProgress;
    protected LauncherState mStartState;
    protected final SingleAxisSwipeDetector.Direction mSwipeDirection;
    protected LauncherState mToState;
    protected final Animator.AnimatorListener mClearStateOnCancelListener = LauncherAnimUtils.newCancelListener(new Runnable() { // from class: com.android.launcher3.touch.b
        @Override // java.lang.Runnable
        public final void run() {
            AbstractStateChangeTouchController.this.clearState();
        }
    });
    private final FlingBlockCheck mFlingBlockCheck = new FlingBlockCheck();
    protected boolean mGoingBetweenStates = true;

    public AbstractStateChangeTouchController(Launcher launcher, SingleAxisSwipeDetector.Direction direction) {
        this.mLauncher = launcher;
        this.mDetector = new SingleAxisSwipeDetector(launcher, this, direction);
        this.mSwipeDirection = direction;
    }

    private void cancelAnimationControllers() {
        this.mCurrentAnimation = null;
    }

    private int getSwipeDirection() {
        LauncherState launcherState = (LauncherState) this.mLauncher.getStateManager().getState();
        int i4 = getTargetState(launcherState, true) == launcherState ? 0 : 1;
        return getTargetState(launcherState, false) != launcherState ? i4 | 2 : i4;
    }

    /* renamed from: logReachedState */
    public void lambda$goToTargetState$1(LauncherState launcherState) {
        if (this.mStartState == launcherState) {
            return;
        }
        StatsLogManager.StatsLogger withDstState = this.mLauncher.getStatsLogManager().logger().withSrcState(this.mStartState.statsLogOrdinal).withDstState(launcherState.statsLogOrdinal);
        LauncherAtom$ContainerInfo.Builder newBuilder = LauncherAtom$ContainerInfo.newBuilder();
        LauncherAtom$WorkspaceContainer.Builder newBuilder2 = LauncherAtom$WorkspaceContainer.newBuilder();
        newBuilder2.setPageIndex$1(this.mLauncher.getWorkspace().getCurrentPage());
        newBuilder.setWorkspace(newBuilder2);
        withDstState.withContainerInfo((LauncherAtom$ContainerInfo) newBuilder.build()).log(StatsLogManager.getLauncherAtomEvent(this.mStartState.statsLogOrdinal, launcherState.statsLogOrdinal, this.mToState.ordinal > this.mFromState.ordinal ? StatsLogManager.LauncherEvent.LAUNCHER_UNKNOWN_SWIPEUP : StatsLogManager.LauncherEvent.LAUNCHER_UNKNOWN_SWIPEDOWN));
    }

    private boolean reinitCurrentAnimation(boolean z4, boolean z5) {
        LauncherState launcherState = this.mFromState;
        if (launcherState == null) {
            launcherState = (LauncherState) this.mLauncher.getStateManager().getState();
        } else if (z4) {
            launcherState = this.mToState;
        }
        LauncherState targetState = getTargetState(launcherState, z5);
        onReinitToState(targetState);
        if ((launcherState == this.mFromState && targetState == this.mToState) || launcherState == targetState) {
            return false;
        }
        this.mFromState = launcherState;
        this.mToState = targetState;
        this.mStartProgress = 0.0f;
        AnimatorPlaybackController animatorPlaybackController = this.mCurrentAnimation;
        if (animatorPlaybackController != null) {
            animatorPlaybackController.getTarget().removeListener(this.mClearStateOnCancelListener);
        }
        this.mProgressMultiplier = initCurrentAnimation();
        this.mCurrentAnimation.dispatchOnStart();
        return true;
    }

    public abstract boolean canInterceptTouch(MotionEvent motionEvent);

    public void clearState() {
        cancelAnimationControllers();
        this.mGoingBetweenStates = true;
        this.mDetector.finishedScrolling();
        this.mDetector.setDetectableScrollConditions(0, false);
    }

    public StateAnimationConfig getConfigForStates(LauncherState launcherState, LauncherState launcherState2) {
        return new StateAnimationConfig();
    }

    public float getShiftRange() {
        return this.mLauncher.getAllAppsController().getShiftRange();
    }

    public abstract LauncherState getTargetState(LauncherState launcherState, boolean z4);

    public void goToTargetState(LauncherState launcherState) {
        if (this.mLauncher.isInState(launcherState)) {
            lambda$goToTargetState$1(launcherState);
        } else {
            this.mLauncher.getStateManager().goToState((BaseState) launcherState, false, AnimatorListeners.forEndCallback(new a(this, launcherState, 0)));
        }
        this.mLauncher.getRootView().getSysUiScrim().getSysUIMultiplier().animateToValue(1.0f).setDuration(0L).start();
    }

    public abstract float initCurrentAnimation();

    @Override // com.android.launcher3.util.TouchController
    public boolean onControllerInterceptTouchEvent(MotionEvent motionEvent) {
        int swipeDirection;
        if (motionEvent.getAction() == 0) {
            boolean z4 = true;
            boolean z5 = !canInterceptTouch(motionEvent);
            this.mNoIntercept = z5;
            if (z5) {
                return false;
            }
            if (this.mCurrentAnimation != null) {
                swipeDirection = 3;
            } else {
                swipeDirection = getSwipeDirection();
                if (swipeDirection == 0) {
                    this.mNoIntercept = true;
                    return false;
                }
                z4 = false;
            }
            this.mDetector.setDetectableScrollConditions(swipeDirection, z4);
        }
        if (this.mNoIntercept) {
            return false;
        }
        onControllerTouchEvent(motionEvent);
        return this.mDetector.isDraggingOrSettling();
    }

    @Override // com.android.launcher3.util.TouchController
    public final boolean onControllerTouchEvent(MotionEvent motionEvent) {
        this.mDetector.onTouchEvent(motionEvent);
        return true;
    }

    @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    public boolean onDrag(float f4) {
        float f5 = ((f4 - this.mDisplacementShift) * this.mProgressMultiplier) + this.mStartProgress;
        updateProgress(f5);
        boolean isPositive = this.mSwipeDirection.isPositive(f4 - this.mDisplacementShift);
        if (f5 <= 0.0f) {
            if (reinitCurrentAnimation(false, isPositive)) {
                this.mDisplacementShift = f4;
                if (this.mCanBlockFling) {
                    this.mFlingBlockCheck.blockFling();
                }
            }
            if (this.mFromState == LauncherState.ALL_APPS) {
                this.mAllAppsOvershootStarted = true;
                float f6 = (-f5) * 0.02f;
                this.mLauncher.getAppsView().absorbPullDeltaDistance(f6, f6);
            }
        } else if (f5 >= 1.0f) {
            if (reinitCurrentAnimation(true, isPositive)) {
                this.mDisplacementShift = f4;
                if (this.mCanBlockFling) {
                    this.mFlingBlockCheck.blockFling();
                }
            }
            if (this.mToState == LauncherState.ALL_APPS) {
                this.mAllAppsOvershootStarted = true;
                float f7 = (f5 - 1.0f) * 0.02f;
                this.mLauncher.getAppsView().absorbPullDeltaDistance(f7, f7);
            }
        } else {
            this.mFlingBlockCheck.onEvent();
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:115:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x009c  */
    @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onDragEnd(float r15) {
        /*
            Method dump skipped, instructions count: 346
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.touch.AbstractStateChangeTouchController.onDragEnd(float):void");
    }

    @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    public void onDragStart(boolean z4, float f4) {
        LauncherState launcherState = (LauncherState) this.mLauncher.getStateManager().getState();
        this.mStartState = launcherState;
        this.mIsLogContainerSet = false;
        AnimatorPlaybackController animatorPlaybackController = this.mCurrentAnimation;
        if (animatorPlaybackController == null) {
            this.mFromState = launcherState;
            this.mToState = null;
            cancelAnimationControllers();
            reinitCurrentAnimation(false, this.mDetector.wasInitialTouchPositive());
            this.mDisplacementShift = 0.0f;
        } else {
            animatorPlaybackController.pause();
            this.mStartProgress = this.mCurrentAnimation.getProgressFraction();
        }
        this.mCanBlockFling = this.mFromState == LauncherState.NORMAL;
        this.mFlingBlockCheck.unblockFling();
    }

    public void onReachedFinalState(LauncherState launcherState) {
    }

    public void onReinitToState(LauncherState launcherState) {
    }

    /* renamed from: onSwipeInteractionCompleted */
    public void lambda$onDragEnd$0(LauncherState launcherState) {
        onReachedFinalState(this.mToState);
        clearState();
        if (this.mGoingBetweenStates || this.mToState != launcherState) {
            goToTargetState(launcherState);
        } else {
            lambda$goToTargetState$1(this.mToState);
        }
    }

    public void updateProgress(float f4) {
        AnimatorPlaybackController animatorPlaybackController = this.mCurrentAnimation;
        if (animatorPlaybackController == null) {
            return;
        }
        animatorPlaybackController.setPlayFraction(f4);
    }

    public void updateSwipeCompleteAnimation(ValueAnimator valueAnimator, long j4, LauncherState launcherState, float f4, boolean z4) {
        valueAnimator.setDuration(j4).setInterpolator(y0.e.c(f4));
    }

    @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    public boolean onDrag(float f4, MotionEvent motionEvent) {
        if (!this.mIsLogContainerSet) {
            LauncherState launcherState = this.mStartState;
            if (launcherState == LauncherState.ALL_APPS) {
                this.mStartContainerType = 4;
            } else if (launcherState == LauncherState.NORMAL) {
                this.mStartContainerType = 2;
            } else if (launcherState == LauncherState.OVERVIEW) {
                this.mStartContainerType = 3;
            }
            this.mIsLogContainerSet = true;
        }
        return onDrag(f4);
    }
}
