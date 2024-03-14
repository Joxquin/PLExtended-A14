package com.android.launcher3.touch;

import android.view.MotionEvent;
import android.view.animation.Interpolator;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.states.StateAnimationConfig;
import y0.animation.InterpolatorC1488a;
import y0.animation.InterpolatorC1489b;
/* loaded from: classes.dex */
public final class AllAppsSwipeController extends AbstractStateChangeTouchController {
    public static final animation.InterpolatorC1489b ALL_APPS_CLAMPING_RESPONDER;
    public static final animation.InterpolatorC1489b ALL_APPS_FADE_ATOMIC;
    public static final animation.InterpolatorC1489b ALL_APPS_FADE_MANUAL;
    public static final animation.InterpolatorC1489b ALL_APPS_SCRIM_RESPONDER;
    public static final animation.InterpolatorC1489b ALL_APPS_VERTICAL_PROGRESS_ATOMIC;
    public static final Interpolator ALL_APPS_VERTICAL_PROGRESS_MANUAL;
    private static final animation.InterpolatorC1489b BLUR_ADJUSTED;
    public static final animation.InterpolatorC1489b BLUR_ATOMIC;
    public static final animation.InterpolatorC1489b BLUR_MANUAL;
    public static final animation.InterpolatorC1489b HOTSEAT_FADE_ATOMIC;
    public static final animation.InterpolatorC1489b HOTSEAT_FADE_MANUAL;
    public static final animation.InterpolatorC1489b HOTSEAT_SCALE_ATOMIC;
    public static final animation.InterpolatorC1489b HOTSEAT_SCALE_MANUAL;
    public static final animation.InterpolatorC1489b HOTSEAT_TRANSLATE_ATOMIC;
    public static final animation.InterpolatorC1489b HOTSEAT_TRANSLATE_MANUAL;
    private static final animation.InterpolatorC1489b LINEAR_EARLY_MANUAL;
    public static final animation.InterpolatorC1489b SCRIM_FADE_ATOMIC;
    public static final animation.InterpolatorC1489b SCRIM_FADE_MANUAL;
    private static final animation.InterpolatorC1489b STEP_TRANSITION_ATOMIC;
    private static final animation.InterpolatorC1489b STEP_TRANSITION_MANUAL;
    public static final animation.InterpolatorC1489b WORKSPACE_FADE_ATOMIC;
    public static final animation.InterpolatorC1489b WORKSPACE_FADE_MANUAL;
    public static final animation.InterpolatorC1489b WORKSPACE_SCALE_ATOMIC;
    public static final animation.InterpolatorC1489b WORKSPACE_SCALE_MANUAL;

    static {
        Interpolator interpolator = y0.e.f12949m;
        ALL_APPS_SCRIM_RESPONDER = y0.e.b(0.1f, 0.5f, interpolator);
        ALL_APPS_CLAMPING_RESPONDER = y0.e.b(0.19999999f, 0.5f, interpolator);
        animation.InterpolatorC1489b b4 = y0.e.b(0.0f, 0.4f, interpolator);
        LINEAR_EARLY_MANUAL = b4;
        animation.InterpolatorC1488a animation_interpolatorc1488a = y0.e.f12942f;
        animation.InterpolatorC1489b b5 = y0.e.b(0.0f, 0.3333f, animation_interpolatorc1488a);
        STEP_TRANSITION_ATOMIC = b5;
        animation.InterpolatorC1489b b6 = y0.e.b(0.0f, 0.4f, animation_interpolatorc1488a);
        STEP_TRANSITION_MANUAL = b6;
        animation.InterpolatorC1489b animation_interpolatorc1489b = new animation.InterpolatorC1489b(interpolator, 0.0f, 0.5f, 1);
        BLUR_ADJUSTED = animation_interpolatorc1489b;
        BLUR_ATOMIC = y0.e.b(0.1667f, 0.3333f, animation_interpolatorc1489b);
        BLUR_MANUAL = y0.e.b(0.0f, 0.4f, animation_interpolatorc1489b);
        WORKSPACE_FADE_ATOMIC = b5;
        WORKSPACE_FADE_MANUAL = b6;
        Interpolator interpolator2 = y0.e.f12938b;
        WORKSPACE_SCALE_ATOMIC = y0.e.b(0.1667f, 0.3333f, interpolator2);
        WORKSPACE_SCALE_MANUAL = b4;
        HOTSEAT_FADE_ATOMIC = b5;
        HOTSEAT_FADE_MANUAL = b6;
        HOTSEAT_SCALE_ATOMIC = y0.e.b(0.1667f, 0.3333f, interpolator2);
        HOTSEAT_SCALE_MANUAL = b4;
        HOTSEAT_TRANSLATE_ATOMIC = b5;
        HOTSEAT_TRANSLATE_MANUAL = b6;
        SCRIM_FADE_ATOMIC = y0.e.b(0.2642f, 0.3333f, new animation.InterpolatorC1489b(interpolator, 0.0f, 0.8f, 1));
        SCRIM_FADE_MANUAL = y0.e.b(0.117f, 0.4f, interpolator);
        Interpolator interpolator3 = y0.e.f12939c;
        ALL_APPS_FADE_ATOMIC = y0.e.b(0.3333f, 0.8333f, new animation.InterpolatorC1489b(interpolator3, 0.2f, 1.0f, 1));
        ALL_APPS_FADE_MANUAL = y0.e.b(0.4f, 0.8f, interpolator);
        ALL_APPS_VERTICAL_PROGRESS_ATOMIC = y0.e.b(0.3333f, 1.0f, new animation.InterpolatorC1489b(interpolator3, 0.4f, 1.0f, 1));
        ALL_APPS_VERTICAL_PROGRESS_MANUAL = interpolator;
    }

    public AllAppsSwipeController(Launcher launcher) {
        super(launcher, SingleAxisSwipeDetector.VERTICAL);
    }

    public static void applyAllAppsToNormalConfig(Launcher launcher, StateAnimationConfig stateAnimationConfig) {
        boolean z4 = launcher.getDeviceProfile().isTablet;
        final animation.InterpolatorC1489b animation_interpolatorc1489b = ALL_APPS_SCRIM_RESPONDER;
        if (z4) {
            stateAnimationConfig.setInterpolator(11, new Interpolator() { // from class: y0.c
                @Override // android.animation.TimeInterpolator
                public final float getInterpolation(float f4) {
                    return 1.0f - animation_interpolatorc1489b.getInterpolation(1.0f - f4);
                }
            });
            stateAnimationConfig.setInterpolator(10, y0.e.f12942f);
            if (!stateAnimationConfig.userControlled) {
                stateAnimationConfig.setInterpolator(0, y0.e.f12937a);
            }
            Interpolator interpolator = y0.e.f12954r;
            stateAnimationConfig.setInterpolator(1, interpolator);
            stateAnimationConfig.setInterpolator(13, interpolator);
        } else if (!stateAnimationConfig.userControlled) {
            stateAnimationConfig.setInterpolator(11, new Interpolator() { // from class: y0.c
                @Override // android.animation.TimeInterpolator
                public final float getInterpolation(float f4) {
                    return 1.0f - animation_interpolatorc1489b.getInterpolation(1.0f - f4);
                }
            });
            stateAnimationConfig.setInterpolator(10, ALL_APPS_CLAMPING_RESPONDER);
            stateAnimationConfig.setInterpolator(3, y0.e.f12941e);
            stateAnimationConfig.setInterpolator(0, y0.e.f12938b);
        } else {
            final animation.InterpolatorC1489b animation_interpolatorc1489b2 = BLUR_MANUAL;
            stateAnimationConfig.setInterpolator(13, new Interpolator() { // from class: y0.c
                @Override // android.animation.TimeInterpolator
                public final float getInterpolation(float f4) {
                    return 1.0f - animation_interpolatorc1489b2.getInterpolation(1.0f - f4);
                }
            });
            final animation.InterpolatorC1489b animation_interpolatorc1489b3 = WORKSPACE_FADE_MANUAL;
            stateAnimationConfig.setInterpolator(3, new Interpolator() { // from class: y0.c
                @Override // android.animation.TimeInterpolator
                public final float getInterpolation(float f4) {
                    return 1.0f - animation_interpolatorc1489b3.getInterpolation(1.0f - f4);
                }
            });
            final animation.InterpolatorC1489b animation_interpolatorc1489b4 = WORKSPACE_SCALE_MANUAL;
            stateAnimationConfig.setInterpolator(1, new Interpolator() { // from class: y0.c
                @Override // android.animation.TimeInterpolator
                public final float getInterpolation(float f4) {
                    return 1.0f - animation_interpolatorc1489b4.getInterpolation(1.0f - f4);
                }
            });
            final animation.InterpolatorC1489b animation_interpolatorc1489b5 = HOTSEAT_FADE_MANUAL;
            stateAnimationConfig.setInterpolator(16, new Interpolator() { // from class: y0.c
                @Override // android.animation.TimeInterpolator
                public final float getInterpolation(float f4) {
                    return 1.0f - animation_interpolatorc1489b5.getInterpolation(1.0f - f4);
                }
            });
            final animation.InterpolatorC1489b animation_interpolatorc1489b6 = HOTSEAT_SCALE_MANUAL;
            stateAnimationConfig.setInterpolator(4, new Interpolator() { // from class: y0.c
                @Override // android.animation.TimeInterpolator
                public final float getInterpolation(float f4) {
                    return 1.0f - animation_interpolatorc1489b6.getInterpolation(1.0f - f4);
                }
            });
            final animation.InterpolatorC1489b animation_interpolatorc1489b7 = HOTSEAT_TRANSLATE_MANUAL;
            stateAnimationConfig.setInterpolator(5, new Interpolator() { // from class: y0.c
                @Override // android.animation.TimeInterpolator
                public final float getInterpolation(float f4) {
                    return 1.0f - animation_interpolatorc1489b7.getInterpolation(1.0f - f4);
                }
            });
            final animation.InterpolatorC1489b animation_interpolatorc1489b8 = SCRIM_FADE_MANUAL;
            stateAnimationConfig.setInterpolator(11, new Interpolator() { // from class: y0.c
                @Override // android.animation.TimeInterpolator
                public final float getInterpolation(float f4) {
                    return 1.0f - animation_interpolatorc1489b8.getInterpolation(1.0f - f4);
                }
            });
            final animation.InterpolatorC1489b animation_interpolatorc1489b9 = ALL_APPS_FADE_MANUAL;
            stateAnimationConfig.setInterpolator(10, new Interpolator() { // from class: y0.c
                @Override // android.animation.TimeInterpolator
                public final float getInterpolation(float f4) {
                    return 1.0f - animation_interpolatorc1489b9.getInterpolation(1.0f - f4);
                }
            });
            final Interpolator interpolator2 = ALL_APPS_VERTICAL_PROGRESS_MANUAL;
            stateAnimationConfig.setInterpolator(0, new Interpolator() { // from class: y0.c
                @Override // android.animation.TimeInterpolator
                public final float getInterpolation(float f4) {
                    return 1.0f - interpolator2.getInterpolation(1.0f - f4);
                }
            });
        }
    }

    public static void applyNormalToAllAppsAnimConfig(Launcher launcher, StateAnimationConfig stateAnimationConfig) {
        if (launcher.getDeviceProfile().isTablet) {
            stateAnimationConfig.setInterpolator(10, y0.e.f12941e);
            stateAnimationConfig.setInterpolator(11, ALL_APPS_SCRIM_RESPONDER);
            if (!stateAnimationConfig.userControlled) {
                stateAnimationConfig.setInterpolator(0, y0.e.f12937a);
            }
            Interpolator interpolator = y0.e.f12954r;
            stateAnimationConfig.setInterpolator(1, interpolator);
            stateAnimationConfig.setInterpolator(13, interpolator);
            return;
        }
        stateAnimationConfig.setInterpolator(13, stateAnimationConfig.userControlled ? BLUR_MANUAL : BLUR_ATOMIC);
        stateAnimationConfig.setInterpolator(3, stateAnimationConfig.userControlled ? WORKSPACE_FADE_MANUAL : WORKSPACE_FADE_ATOMIC);
        stateAnimationConfig.setInterpolator(1, stateAnimationConfig.userControlled ? WORKSPACE_SCALE_MANUAL : WORKSPACE_SCALE_ATOMIC);
        stateAnimationConfig.setInterpolator(16, stateAnimationConfig.userControlled ? HOTSEAT_FADE_MANUAL : HOTSEAT_FADE_ATOMIC);
        stateAnimationConfig.setInterpolator(4, stateAnimationConfig.userControlled ? HOTSEAT_SCALE_MANUAL : HOTSEAT_SCALE_ATOMIC);
        stateAnimationConfig.setInterpolator(5, stateAnimationConfig.userControlled ? HOTSEAT_TRANSLATE_MANUAL : HOTSEAT_TRANSLATE_ATOMIC);
        stateAnimationConfig.setInterpolator(11, stateAnimationConfig.userControlled ? SCRIM_FADE_MANUAL : SCRIM_FADE_ATOMIC);
        stateAnimationConfig.setInterpolator(10, stateAnimationConfig.userControlled ? ALL_APPS_FADE_MANUAL : ALL_APPS_FADE_ATOMIC);
        stateAnimationConfig.setInterpolator(0, stateAnimationConfig.userControlled ? ALL_APPS_VERTICAL_PROGRESS_MANUAL : ALL_APPS_VERTICAL_PROGRESS_ATOMIC);
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public final boolean canInterceptTouch(MotionEvent motionEvent) {
        if (this.mCurrentAnimation != null) {
            return true;
        }
        if (AbstractFloatingView.getTopOpenView(this.mLauncher) != null) {
            return false;
        }
        if (this.mLauncher.isInState(LauncherState.NORMAL) || this.mLauncher.isInState(LauncherState.ALL_APPS)) {
            return !this.mLauncher.isInState(LauncherState.ALL_APPS) || this.mLauncher.getAppsView().shouldContainerScroll(motionEvent);
        }
        return false;
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public final StateAnimationConfig getConfigForStates(LauncherState launcherState, LauncherState launcherState2) {
        StateAnimationConfig configForStates = super.getConfigForStates(launcherState, launcherState2);
        configForStates.userControlled = true;
        LauncherState launcherState3 = LauncherState.NORMAL;
        if (launcherState == launcherState3 && launcherState2 == LauncherState.ALL_APPS) {
            applyNormalToAllAppsAnimConfig(this.mLauncher, configForStates);
        } else if (launcherState == LauncherState.ALL_APPS && launcherState2 == launcherState3) {
            applyAllAppsToNormalConfig(this.mLauncher, configForStates);
        }
        return configForStates;
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public final LauncherState getTargetState(LauncherState launcherState, boolean z4) {
        LauncherState launcherState2 = LauncherState.NORMAL;
        return (launcherState == launcherState2 && z4) ? LauncherState.ALL_APPS : (launcherState != LauncherState.ALL_APPS || z4) ? launcherState : launcherState2;
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public final float initCurrentAnimation() {
        float shiftRange = getShiftRange();
        StateAnimationConfig configForStates = getConfigForStates(this.mFromState, this.mToState);
        configForStates.duration = 2.0f * shiftRange;
        this.mCurrentAnimation = this.mLauncher.getStateManager().createAnimationToNewWorkspace(this.mToState, configForStates);
        return 1.0f / ((this.mToState.getVerticalProgress(this.mLauncher) * shiftRange) - (this.mFromState.getVerticalProgress(this.mLauncher) * shiftRange));
    }
}
