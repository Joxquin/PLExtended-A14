package com.android.launcher3.uioverrides.touchcontrollers;

import android.animation.ValueAnimator;
import android.util.FloatProperty;
import android.view.MotionEvent;
import android.view.animation.Interpolator;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.AnimatorPlaybackController;
import com.android.launcher3.states.StateAnimationConfig;
import com.android.launcher3.touch.AbstractStateChangeTouchController;
import com.android.launcher3.touch.SingleAxisSwipeDetector;
import com.android.launcher3.uioverrides.states.BackgroundAppState;
import com.android.launcher3.uioverrides.states.QuickSwitchState;
import com.android.launcher3.util.DisplayController;
import com.android.launcher3.util.NavigationMode;
import com.android.quickstep.SystemUiProxy;
import com.android.quickstep.TaskUtils;
import com.android.quickstep.views.DesktopTaskView;
import com.android.quickstep.views.RecentsView;
import com.android.quickstep.views.TaskView;
import com.android.systemui.shared.system.ActivityManagerWrapper;
/* loaded from: classes.dex */
public class QuickSwitchTouchController extends AbstractStateChangeTouchController {
    protected final RecentsView mOverviewPanel;

    public QuickSwitchTouchController(Launcher launcher, SingleAxisSwipeDetector.Direction direction) {
        super(launcher, direction);
        this.mOverviewPanel = (RecentsView) launcher.getOverviewPanel();
    }

    public static /* synthetic */ void c(QuickSwitchTouchController quickSwitchTouchController, ValueAnimator valueAnimator) {
        quickSwitchTouchController.getClass();
        quickSwitchTouchController.updateFullscreenProgress(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    private void updateFullscreenProgress(float f4) {
        RecentsView recentsView = this.mOverviewPanel;
        recentsView.setFullscreenProgress(f4);
        if (f4 <= 0.85f) {
            this.mLauncher.getSystemUiController().updateUiState(3, 0);
            return;
        }
        TaskView taskViewAt = recentsView.getTaskViewAt(0);
        this.mLauncher.getSystemUiController().updateUiState(3, taskViewAt != null ? taskViewAt.getThumbnail().getSysUiStatusNavFlags() : 0);
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public final boolean canInterceptTouch(MotionEvent motionEvent) {
        if (this.mCurrentAnimation != null) {
            return true;
        }
        return (!this.mLauncher.isInState(LauncherState.NORMAL) || (motionEvent.getEdgeFlags() & 256) == 0 || DesktopTaskView.DESKTOP_MODE_SUPPORTED) ? false : true;
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public float getShiftRange() {
        return this.mLauncher.getDeviceProfile().widthPx / 2.0f;
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public LauncherState getTargetState(LauncherState launcherState, boolean z4) {
        if ((((SystemUiProxy) SystemUiProxy.INSTANCE.get(this.mLauncher)).getLastSystemUiStateFlags() & 128) == 0 && z4) {
            return LauncherState.QUICK_SWITCH_FROM_HOME;
        }
        return LauncherState.NORMAL;
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public float initCurrentAnimation() {
        StateAnimationConfig stateAnimationConfig = new StateAnimationConfig();
        Interpolator interpolator = y0.e.f12929C;
        stateAnimationConfig.setInterpolator(3, interpolator);
        stateAnimationConfig.setInterpolator(10, interpolator);
        if (DisplayController.getNavigationMode(this.mLauncher) == NavigationMode.NO_BUTTON) {
            Interpolator interpolator2 = y0.e.f12960x;
            stateAnimationConfig.setInterpolator(2, interpolator2);
            stateAnimationConfig.setInterpolator(0, interpolator2);
            stateAnimationConfig.setInterpolator(6, interpolator2);
            stateAnimationConfig.setInterpolator(8, interpolator2);
            stateAnimationConfig.setInterpolator(9, y0.e.f12941e);
        } else {
            Interpolator interpolator3 = y0.e.f12949m;
            stateAnimationConfig.setInterpolator(2, interpolator3);
            stateAnimationConfig.setInterpolator(0, interpolator3);
        }
        stateAnimationConfig.duration = getShiftRange() * 2.0f;
        FloatProperty floatProperty = RecentsView.RECENTS_SCALE_PROPERTY;
        QuickSwitchState quickSwitchState = LauncherState.QUICK_SWITCH_FROM_HOME;
        Launcher launcher = this.mLauncher;
        quickSwitchState.getClass();
        Float valueOf = Float.valueOf(BackgroundAppState.getOverviewScaleAndOffsetForBackgroundState(launcher)[0] * 0.85f);
        RecentsView recentsView = this.mOverviewPanel;
        floatProperty.set((FloatProperty) recentsView, valueOf);
        RecentsView.ADJACENT_PAGE_HORIZONTAL_OFFSET.set((FloatProperty) recentsView, Float.valueOf(1.0f));
        recentsView.setContentAlpha(1.0f);
        AnimatorPlaybackController createAnimationToNewWorkspace = this.mLauncher.getStateManager().createAnimationToNewWorkspace(this.mToState, stateAnimationConfig);
        this.mCurrentAnimation = createAnimationToNewWorkspace;
        createAnimationToNewWorkspace.getTarget().addListener(this.mClearStateOnCancelListener);
        this.mCurrentAnimation.getAnimationPlayer().addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.launcher3.uioverrides.touchcontrollers.h
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                QuickSwitchTouchController.c(QuickSwitchTouchController.this, valueAnimator);
            }
        });
        return 1.0f / getShiftRange();
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController, com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    public final void onDragStart(boolean z4, float f4) {
        super.onDragStart(z4, f4);
        this.mStartContainerType = 1;
        TaskUtils.closeSystemWindowsAsync(ActivityManagerWrapper.CLOSE_SYSTEM_WINDOWS_REASON_RECENTS);
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public final void onSwipeInteractionCompleted(LauncherState launcherState) {
        super.lambda$onDragEnd$0(launcherState);
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public final void updateProgress(float f4) {
        super.updateProgress(f4);
        updateFullscreenProgress(Utilities.boundToRange(f4, 0.0f, 1.0f));
    }
}
