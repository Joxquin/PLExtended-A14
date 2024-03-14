package com.android.launcher3.allapps;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.os.Handler;
import android.os.UserManager;
import android.view.MotionEvent;
import android.view.View;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.Hotseat;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.Utilities;
import com.android.launcher3.allapps.DiscoveryBounce;
import com.android.launcher3.anim.AnimatorListeners;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.util.OnboardingPrefs;
import com.android.systemui.shared.R;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final class DiscoveryBounce extends AbstractFloatingView {
    private final Animator mDiscoBounceAnimation;
    private final Launcher mLauncher;
    private final StateManager.StateListener mStateListener;

    /* loaded from: classes.dex */
    public class VerticalProgressWrapper {
        private final float mLimit;
        private final View mView;

        public VerticalProgressWrapper(Hotseat hotseat, float f4) {
            this.mView = hotseat;
            this.mLimit = f4;
        }

        public float getProgress() {
            return (this.mView.getTranslationY() / this.mLimit) + 1.0f;
        }

        public void setProgress(float f4) {
            this.mView.setTranslationY((f4 - 1.0f) * this.mLimit);
        }
    }

    public DiscoveryBounce(Launcher launcher) {
        super(launcher, null);
        StateManager.StateListener stateListener = new StateManager.StateListener() { // from class: com.android.launcher3.allapps.DiscoveryBounce.1
            @Override // com.android.launcher3.statemanager.StateManager.StateListener
            public final /* bridge */ /* synthetic */ void onStateTransitionComplete(Object obj) {
                LauncherState launcherState = (LauncherState) obj;
            }

            @Override // com.android.launcher3.statemanager.StateManager.StateListener
            public final void onStateTransitionStart(Object obj) {
                LauncherState launcherState = (LauncherState) obj;
                DiscoveryBounce.this.handleClose(false);
            }
        };
        this.mStateListener = stateListener;
        this.mLauncher = launcher;
        Animator loadAnimator = AnimatorInflater.loadAnimator(launcher, R.animator.discovery_bounce);
        this.mDiscoBounceAnimation = loadAnimator;
        loadAnimator.setTarget(new VerticalProgressWrapper(launcher.getHotseat(), launcher.getDragLayer().getHeight()));
        loadAnimator.addListener(AnimatorListeners.forEndCallback(new Consumer() { // from class: D0.p
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                DiscoveryBounce.this.handleClose(((Boolean) obj).booleanValue());
            }
        }));
        launcher.getStateManager().addStateListener(stateListener);
    }

    public static void showForHomeIfNeeded(Launcher launcher) {
        showForHomeIfNeeded(launcher, true);
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public final boolean canHandleBack() {
        close(false);
        return false;
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public final void handleClose(boolean z4) {
        if (this.mIsOpen) {
            this.mIsOpen = false;
            this.mLauncher.getDragLayer().removeView(this);
            this.mLauncher.getHotseat().setTranslationY(((LauncherState) this.mLauncher.getStateManager().getState()).getHotseatScaleAndTranslation(this.mLauncher).translationY);
            this.mLauncher.getStateManager().removeStateListener(this.mStateListener);
        }
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public final boolean isOfType(int i4) {
        return (i4 & 64) != 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mDiscoBounceAnimation.start();
    }

    @Override // com.android.launcher3.util.TouchController
    public final boolean onControllerInterceptTouchEvent(MotionEvent motionEvent) {
        handleClose(false);
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mDiscoBounceAnimation.isRunning()) {
            this.mDiscoBounceAnimation.end();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void showForHomeIfNeeded(final Launcher launcher, boolean z4) {
        OnboardingPrefs onboardingPrefs = launcher.getOnboardingPrefs();
        if (!launcher.isInState(LauncherState.NORMAL) || onboardingPrefs.getBoolean(OnboardingPrefs.HOME_BOUNCE_SEEN) || AbstractFloatingView.getTopOpenView(launcher) != null || ((UserManager) launcher.getSystemService(UserManager.class)).isDemoUser() || Utilities.isRunningInTestHarness()) {
            return;
        }
        if (z4) {
            new Handler().postDelayed(new Runnable() { // from class: D0.o
                @Override // java.lang.Runnable
                public final void run() {
                    DiscoveryBounce.showForHomeIfNeeded(Launcher.this, false);
                }
            }, 450L);
            return;
        }
        onboardingPrefs.incrementEventCount(OnboardingPrefs.HOME_BOUNCE_COUNT);
        DiscoveryBounce discoveryBounce = new DiscoveryBounce(launcher);
        discoveryBounce.mIsOpen = true;
        discoveryBounce.mLauncher.getDragLayer().addView(discoveryBounce);
    }
}
