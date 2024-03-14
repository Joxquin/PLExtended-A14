package com.android.quickstep.util;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.util.Log;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.anim.AnimationSuccessListener;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.states.StateAnimationConfig;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public class OverviewToHomeAnim {
    private static final String TAG = "OverviewToHomeAnim";
    private boolean mIsHomeStaggeredAnimFinished;
    private boolean mIsOverviewHidden;
    private final Launcher mLauncher;
    private final Runnable mOnReachedHome;
    private final Consumer mSplitCancelConsumer;

    public OverviewToHomeAnim(Launcher launcher, Runnable runnable, Consumer consumer) {
        this.mLauncher = launcher;
        this.mOnReachedHome = runnable;
        this.mSplitCancelConsumer = consumer;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeOverviewToHomeAnimComplete() {
        if (this.mIsHomeStaggeredAnimFinished && this.mIsOverviewHidden) {
            this.mOnReachedHome.run();
        }
    }

    public void animateWithVelocity(float f4) {
        StateManager stateManager = this.mLauncher.getStateManager();
        LauncherState launcherState = (LauncherState) stateManager.getState();
        if (launcherState != LauncherState.OVERVIEW) {
            Log.e(TAG, "animateFromOverviewToHome: unexpected start state " + launcherState);
        }
        AnimatorSet animatorSet = new AnimatorSet();
        boolean z4 = f4 < 0.0f;
        if (z4) {
            WorkspaceRevealAnim workspaceRevealAnim = new WorkspaceRevealAnim(this.mLauncher, false);
            workspaceRevealAnim.addAnimatorListener(new AnimationSuccessListener() { // from class: com.android.quickstep.util.OverviewToHomeAnim.1
                @Override // com.android.launcher3.anim.AnimationSuccessListener
                public void onAnimationSuccess(Animator animator) {
                    OverviewToHomeAnim.this.mIsHomeStaggeredAnimFinished = true;
                    OverviewToHomeAnim.this.maybeOverviewToHomeAnimComplete();
                }
            });
            animatorSet.play(workspaceRevealAnim.getAnimators());
        } else {
            this.mIsHomeStaggeredAnimFinished = true;
        }
        StateAnimationConfig stateAnimationConfig = new StateAnimationConfig();
        if (z4) {
            stateAnimationConfig.animFlags |= 4;
        }
        stateAnimationConfig.duration = launcherState.getTransitionDuration(this.mLauncher, false);
        LauncherState launcherState2 = LauncherState.NORMAL;
        AnimatorSet createAtomicAnimation = stateManager.createAtomicAnimation(launcherState, launcherState2, stateAnimationConfig);
        createAtomicAnimation.addListener(new AnimationSuccessListener() { // from class: com.android.quickstep.util.OverviewToHomeAnim.2
            @Override // com.android.launcher3.anim.AnimationSuccessListener
            public void onAnimationSuccess(Animator animator) {
                OverviewToHomeAnim.this.mIsOverviewHidden = true;
                OverviewToHomeAnim.this.maybeOverviewToHomeAnimComplete();
            }
        });
        Consumer consumer = this.mSplitCancelConsumer;
        if (consumer != null) {
            consumer.accept(animatorSet);
        }
        animatorSet.play(createAtomicAnimation);
        stateManager.setCurrentAnimation(animatorSet, launcherState2);
        animatorSet.start();
    }
}
