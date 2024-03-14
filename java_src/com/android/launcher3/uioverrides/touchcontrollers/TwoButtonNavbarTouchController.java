package com.android.launcher3.uioverrides.touchcontrollers;

import android.animation.ValueAnimator;
import android.os.SystemClock;
import android.view.MotionEvent;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.touch.AbstractStateChangeTouchController;
import com.android.launcher3.touch.SingleAxisSwipeDetector;
import com.android.quickstep.SystemUiProxy;
import com.android.quickstep.util.LayoutUtils;
import com.android.quickstep.views.AllAppsEduView;
/* loaded from: classes.dex */
public final class TwoButtonNavbarTouchController extends AbstractStateChangeTouchController {
    private int mContinuousTouchCount;
    private boolean mFinishFastOnSecondTouch;
    private final boolean mIsTransposed;

    public TwoButtonNavbarTouchController(Launcher launcher) {
        super(launcher, launcher.getDeviceProfile().isVerticalBarLayout() ? SingleAxisSwipeDetector.HORIZONTAL : SingleAxisSwipeDetector.VERTICAL);
        this.mContinuousTouchCount = 0;
        this.mIsTransposed = launcher.getDeviceProfile().isVerticalBarLayout();
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x003e  */
    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean canInterceptTouch(android.view.MotionEvent r3) {
        /*
            r2 = this;
            com.android.launcher3.anim.AnimatorPlaybackController r0 = r2.mCurrentAnimation
            r1 = 0
            if (r0 == 0) goto L11
            boolean r3 = r2.mFinishFastOnSecondTouch
            if (r3 == 0) goto L32
            android.animation.ValueAnimator r3 = r0.getAnimationPlayer()
            r3.end()
            goto L32
        L11:
            com.android.launcher3.Launcher r0 = r2.mLauncher
            com.android.launcher3.AbstractFloatingView r0 = com.android.launcher3.AbstractFloatingView.getTopOpenView(r0)
            if (r0 == 0) goto L1a
            goto L22
        L1a:
            int r3 = r3.getEdgeFlags()
            r3 = r3 & 256(0x100, float:3.59E-43)
            if (r3 != 0) goto L24
        L22:
            r3 = r1
            goto L3c
        L24:
            boolean r3 = r2.mIsTransposed
            if (r3 != 0) goto L34
            com.android.launcher3.Launcher r3 = r2.mLauncher
            com.android.launcher3.uioverrides.states.OverviewState r0 = com.android.launcher3.LauncherState.OVERVIEW
            boolean r3 = r3.isInState(r0)
            if (r3 == 0) goto L34
        L32:
            r3 = 1
            goto L3c
        L34:
            com.android.launcher3.Launcher r3 = r2.mLauncher
            com.android.launcher3.LauncherState r0 = com.android.launcher3.LauncherState.NORMAL
            boolean r3 = r3.isInState(r0)
        L3c:
            if (r3 != 0) goto L40
            r2.mContinuousTouchCount = r1
        L40:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.uioverrides.touchcontrollers.TwoButtonNavbarTouchController.canInterceptTouch(android.view.MotionEvent):boolean");
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public final float getShiftRange() {
        Launcher launcher = this.mLauncher;
        return LayoutUtils.getDefaultSwipeHeight(launcher, launcher.getDeviceProfile());
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public final LauncherState getTargetState(LauncherState launcherState, boolean z4) {
        if (this.mIsTransposed) {
            return this.mLauncher.getDeviceProfile().isSeascape() == z4 ? LauncherState.HINT_STATE_TWO_BUTTON : LauncherState.NORMAL;
        }
        LauncherState launcherState2 = this.mStartState;
        if (launcherState2 != null) {
            launcherState = launcherState2;
        }
        return z4 ^ (launcherState == LauncherState.OVERVIEW) ? LauncherState.HINT_STATE_TWO_BUTTON : LauncherState.NORMAL;
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public final float initCurrentAnimation() {
        float shiftRange = getShiftRange();
        this.mCurrentAnimation = this.mLauncher.getStateManager().createAnimationToNewWorkspace(this.mToState, 2.0f * shiftRange, 0);
        return (this.mLauncher.getDeviceProfile().isSeascape() ? 1 : -1) / shiftRange;
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController, com.android.launcher3.util.TouchController
    public final boolean onControllerInterceptTouchEvent(MotionEvent motionEvent) {
        return super.onControllerInterceptTouchEvent(motionEvent);
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public final void onReinitToState(LauncherState launcherState) {
        super.onReinitToState(launcherState);
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public final void onSwipeInteractionCompleted(LauncherState launcherState) {
        super.lambda$onDragEnd$0(launcherState);
        if (!this.mIsTransposed) {
            this.mContinuousTouchCount++;
        }
        LauncherState launcherState2 = this.mStartState;
        LauncherState launcherState3 = LauncherState.NORMAL;
        if (launcherState2 == launcherState3 && launcherState == LauncherState.HINT_STATE_TWO_BUTTON) {
            ((SystemUiProxy) SystemUiProxy.INSTANCE.get(this.mLauncher)).onOverviewShown(true, "2BtnNavbarTouchCtrl");
        } else if (launcherState == launcherState3 && this.mContinuousTouchCount >= 3) {
            this.mContinuousTouchCount = 0;
            if (AbstractFloatingView.getOpenView(this.mLauncher, 512) == null) {
                AllAppsEduView.show(this.mLauncher);
            }
        }
        this.mStartState = null;
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public final void updateProgress(float f4) {
        super.updateProgress(f4);
        if (f4 < 1.0f || this.mToState != LauncherState.HINT_STATE_TWO_BUTTON) {
            return;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 1, 0.0f, 0.0f, 0);
        this.mDetector.onTouchEvent(obtain);
        obtain.recycle();
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public final void updateSwipeCompleteAnimation(ValueAnimator valueAnimator, long j4, LauncherState launcherState, float f4, boolean z4) {
        super.updateSwipeCompleteAnimation(valueAnimator, j4, launcherState, f4, z4);
        this.mFinishFastOnSecondTouch = !this.mIsTransposed && this.mFromState == LauncherState.NORMAL;
        if (launcherState == LauncherState.HINT_STATE_TWO_BUTTON) {
            valueAnimator.setDuration(0L);
        }
    }
}
