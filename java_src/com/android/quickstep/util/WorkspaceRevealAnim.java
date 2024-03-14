package com.android.quickstep.util;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.util.FloatProperty;
import android.view.View;
import android.view.animation.Interpolator;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.LauncherState;
import com.android.launcher3.Workspace;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.anim.PropertySetter;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.states.StateAnimationConfig;
import com.android.launcher3.uioverrides.QuickstepLauncher;
import com.android.launcher3.uioverrides.states.BackgroundAppState;
import com.android.launcher3.util.DynamicResource;
import com.android.quickstep.views.RecentsView;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public class WorkspaceRevealAnim {
    public static final int DURATION_MS = 350;
    private final AnimatorSet mAnimators;
    private final float mScaleStart;
    private static final FloatProperty WORKSPACE_SCALE_PROPERTY = LauncherAnimUtils.WORKSPACE_SCALE_PROPERTY_FACTORY.get(3);
    private static final FloatProperty HOTSEAT_SCALE_PROPERTY = LauncherAnimUtils.HOTSEAT_SCALE_PROPERTY_FACTORY.get(3);

    public WorkspaceRevealAnim(Launcher launcher, boolean z4) {
        AnimatorSet animatorSet = new AnimatorSet();
        this.mAnimators = animatorSet;
        prepareToAnimate(launcher, z4);
        this.mScaleStart = DynamicResource.provider(launcher).getFloat(R.dimen.swipe_up_scale_start);
        Workspace workspace = launcher.getWorkspace();
        workspace.setPivotToScaleWithSelf(launcher.getHotseat());
        addRevealAnimatorsForView(workspace, WORKSPACE_SCALE_PROPERTY);
        addRevealAnimatorsForView(launcher.getHotseat(), HOTSEAT_SCALE_PROPERTY);
        if (z4) {
            PendingAnimation pendingAnimation = new PendingAnimation(350L);
            launcher.getWorkspace().getStateTransitionAnimation().setScrim(LauncherState.NORMAL, pendingAnimation, new StateAnimationConfig());
            animatorSet.play(pendingAnimation.buildAnim());
        }
        if (launcher instanceof QuickstepLauncher) {
            PendingAnimation pendingAnimation2 = new PendingAnimation(350L);
            ((QuickstepLauncher) launcher).getDepthController().setStateWithAnimation(LauncherState.NORMAL, new StateAnimationConfig(), pendingAnimation2);
            animatorSet.play(pendingAnimation2.buildAnim());
        }
        animatorSet.play(launcher.getRootView().getSysUiScrim().getSysUIMultiplier().animateToValue(0.0f, 1.0f));
        animatorSet.setDuration(350L);
        animatorSet.setInterpolator(y0.e.f12954r);
    }

    private void addRevealAnimatorsForView(final View view, final FloatProperty floatProperty) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, floatProperty, this.mScaleStart, 1.0f);
        ofFloat.setDuration(350L);
        Interpolator interpolator = y0.e.f12954r;
        ofFloat.setInterpolator(interpolator);
        this.mAnimators.play(ofFloat);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view, View.ALPHA, 0.0f, 1.0f);
        ofFloat2.setDuration(350L);
        ofFloat2.setInterpolator(interpolator);
        this.mAnimators.play(ofFloat2);
        this.mAnimators.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.util.WorkspaceRevealAnim.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                floatProperty.set((FloatProperty) view, Float.valueOf(1.0f));
                view.setAlpha(1.0f);
            }
        });
    }

    private void prepareToAnimate(Launcher launcher, boolean z4) {
        StateAnimationConfig stateAnimationConfig = new StateAnimationConfig();
        stateAnimationConfig.animFlags = 14;
        stateAnimationConfig.duration = 0L;
        StateManager stateManager = launcher.getStateManager();
        BackgroundAppState backgroundAppState = LauncherState.BACKGROUND_APP;
        stateManager.createAtomicAnimation(backgroundAppState, LauncherState.NORMAL, stateAnimationConfig).start();
        ((RecentsView) launcher.getOverviewPanel()).forceFinishScroller();
        if (z4) {
            launcher.getWorkspace().getStateTransitionAnimation().setScrim(backgroundAppState, PropertySetter.NO_ANIM_PROPERTY_SETTER, stateAnimationConfig);
        }
    }

    public WorkspaceRevealAnim addAnimatorListener(Animator.AnimatorListener animatorListener) {
        this.mAnimators.addListener(animatorListener);
        return this;
    }

    public AnimatorSet getAnimators() {
        return this.mAnimators;
    }

    public void start() {
        this.mAnimators.start();
    }
}
