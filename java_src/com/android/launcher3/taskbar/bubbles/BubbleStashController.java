package com.android.launcher3.taskbar.bubbles;

import Z0.m;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import com.android.launcher3.anim.AnimatedFloat;
import com.android.launcher3.taskbar.TaskbarActivityContext;
import com.android.launcher3.taskbar.TaskbarControllers;
import com.android.launcher3.taskbar.TaskbarInsetsController;
import com.android.launcher3.taskbar.bubbles.BubbleStashController;
import com.android.launcher3.util.MultiPropertyFactory;
/* loaded from: classes.dex */
public final class BubbleStashController {
    protected final TaskbarActivityContext mActivity;
    private AnimatorSet mAnimator;
    private BubbleBarViewController mBarViewController;
    private MultiPropertyFactory.MultiProperty mBubbleStashedHandleAlpha;
    private boolean mBubblesShowingOnHome;
    private boolean mBubblesShowingOnOverview;
    private TaskbarControllers mControllers;
    private BubbleStashedHandleViewController mHandleViewController;
    private MultiPropertyFactory.MultiProperty mIconAlphaForStash;
    private AnimatedFloat mIconScaleForStash;
    private AnimatedFloat mIconTranslationYForStash;
    private boolean mIsStashed;
    private boolean mIsSysuiLocked;
    private boolean mRequestedExpandedState;
    private boolean mRequestedStashState;
    private int mStashedHeight;
    private TaskbarInsetsController mTaskbarInsetsController;
    private int mUnstashedHeight;

    /* renamed from: com.android.launcher3.taskbar.bubbles.BubbleStashController$2 */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 extends AnimatorListenerAdapter {
        final /* synthetic */ boolean val$isStashed;

        public AnonymousClass2(boolean z4) {
            BubbleStashController.this = r1;
            this.val$isStashed = z4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            BubbleStashController.this.mAnimator = null;
            TaskbarControllers taskbarControllers = BubbleStashController.this.mControllers;
            final boolean z4 = this.val$isStashed;
            taskbarControllers.runAfterInit(new Runnable() { // from class: com.android.launcher3.taskbar.bubbles.d
                @Override // java.lang.Runnable
                public final void run() {
                    TaskbarInsetsController taskbarInsetsController;
                    BubbleBarViewController bubbleBarViewController;
                    BubbleStashController.AnonymousClass2 anonymousClass2 = BubbleStashController.AnonymousClass2.this;
                    if (z4) {
                        bubbleBarViewController = BubbleStashController.this.mBarViewController;
                        bubbleBarViewController.setExpanded(false);
                    }
                    taskbarInsetsController = BubbleStashController.this.mTaskbarInsetsController;
                    taskbarInsetsController.onTaskbarOrBubblebarWindowHeightOrInsetsChanged();
                }
            });
        }
    }

    public BubbleStashController(TaskbarActivityContext taskbarActivityContext) {
        this.mActivity = taskbarActivityContext;
    }

    public static /* synthetic */ void b(BubbleStashController bubbleStashController) {
        bubbleStashController.mHandleViewController.onIsStashedChanged();
        bubbleStashController.mTaskbarInsetsController.onTaskbarOrBubblebarWindowHeightOrInsetsChanged();
    }

    public static void g(BubbleStashController bubbleStashController) {
        bubbleStashController.mControllers.runAfterInit(new m(bubbleStashController, 0));
    }

    private float getBubbleBarTranslationYForHotseat() {
        TaskbarActivityContext taskbarActivityContext;
        float f4 = this.mActivity.getDeviceProfile().hotseatCellHeightPx;
        int i4 = this.mUnstashedHeight;
        return (((-taskbarActivityContext.getDeviceProfile().hotseatBarBottomSpacePx) - f4) + i4) - (Math.abs(f4 - i4) / 2.0f);
    }

    private void updateStashedAndExpandedState() {
        if (this.mBarViewController.isHiddenForNoBubbles()) {
            return;
        }
        boolean z4 = (!this.mRequestedStashState || this.mBubblesShowingOnHome || this.mBubblesShowingOnOverview) ? false : true;
        if (this.mIsStashed != z4) {
            this.mIsStashed = z4;
            AnimatorSet animatorSet = this.mAnimator;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            boolean z5 = this.mIsStashed;
            AnimatorSet animatorSet2 = new AnimatorSet();
            float f4 = (this.mUnstashedHeight - this.mStashedHeight) / 2.0f;
            AnimatorSet animatorSet3 = new AnimatorSet();
            AnimatorSet animatorSet4 = new AnimatorSet();
            AnimatorSet animatorSet5 = new AnimatorSet();
            float f5 = 0.75f;
            float f6 = 0.5f;
            if (z5) {
                animatorSet3.play(this.mIconTranslationYForStash.animateToValue(f4));
                animatorSet4.playTogether(this.mIconAlphaForStash.animateToValue(0.0f), this.mIconScaleForStash.animateToValue(0.5f));
                animatorSet5.playTogether(this.mBubbleStashedHandleAlpha.animateToValue(1.0f));
            } else {
                animatorSet3.playTogether(this.mIconScaleForStash.animateToValue(1.0f), this.mIconTranslationYForStash.animateToValue(getBubbleBarTranslationY()));
                animatorSet4.playTogether(this.mBubbleStashedHandleAlpha.animateToValue(0.0f));
                animatorSet5.playTogether(this.mIconAlphaForStash.animateToValue(1.0f));
                f6 = 0.75f;
                f5 = 0.5f;
            }
            animatorSet3.play(this.mHandleViewController.createRevealAnimToIsStashed(z5));
            animatorSet3.setDuration(300L);
            float f7 = (float) 300;
            animatorSet4.setDuration(f5 * f7);
            animatorSet5.setDuration(f7 * f6);
            animatorSet5.setStartDelay((1.0f - f6) * f7);
            animatorSet2.playTogether(animatorSet3, animatorSet4, animatorSet5);
            animatorSet2.addListener(new AnonymousClass2(z5));
            this.mAnimator = animatorSet2;
            animatorSet2.start();
            this.mControllers.runAfterInit(new m(this, 0));
        }
        boolean isExpanded = this.mBarViewController.isExpanded();
        boolean z6 = this.mRequestedExpandedState;
        if (isExpanded != z6) {
            this.mBarViewController.setExpanded(z6);
        }
    }

    public final void animateToInitialState(boolean z4) {
        AnimatorSet animatorSet = new AnimatorSet();
        if (z4 || this.mBubblesShowingOnHome || this.mBubblesShowingOnOverview) {
            this.mIsStashed = false;
            animatorSet.playTogether(this.mIconScaleForStash.animateToValue(1.0f), this.mIconTranslationYForStash.animateToValue(getBubbleBarTranslationY()), this.mIconAlphaForStash.animateToValue(1.0f));
        } else {
            this.mIsStashed = true;
            animatorSet.playTogether(this.mBubbleStashedHandleAlpha.animateToValue(1.0f));
        }
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.taskbar.bubbles.BubbleStashController.1
            {
                BubbleStashController.this = this;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                BubbleStashController.g(BubbleStashController.this);
            }
        });
        animatorSet.setDuration(300L).start();
    }

    public final float getBubbleBarTranslationY() {
        return this.mBubblesShowingOnHome ? getBubbleBarTranslationYForHotseat() : -this.mActivity.getDeviceProfile().taskbarBottomMargin;
    }

    public final int getTouchableHeight() {
        return this.mIsStashed ? this.mStashedHeight : this.mUnstashedHeight;
    }

    public final void init(TaskbarControllers taskbarControllers, BubbleControllers bubbleControllers) {
        this.mControllers = taskbarControllers;
        this.mTaskbarInsetsController = taskbarControllers.taskbarInsetsController;
        BubbleBarViewController bubbleBarViewController = bubbleControllers.bubbleBarViewController;
        this.mBarViewController = bubbleBarViewController;
        this.mHandleViewController = bubbleControllers.bubbleStashedHandleViewController;
        this.mIconAlphaForStash = bubbleBarViewController.getBubbleBarAlpha().get(0);
        this.mIconScaleForStash = this.mBarViewController.getBubbleBarScale();
        this.mIconTranslationYForStash = this.mBarViewController.getBubbleBarTranslationY();
        this.mBubbleStashedHandleAlpha = this.mHandleViewController.getStashedHandleAlpha().get(0);
        this.mStashedHeight = this.mHandleViewController.getStashedHeight();
        this.mUnstashedHeight = this.mHandleViewController.getUnstashedHeight();
    }

    public final boolean isBubblesShowingOnHome() {
        return this.mBubblesShowingOnHome;
    }

    public final boolean isBubblesShowingOnOverview() {
        return this.mBubblesShowingOnOverview;
    }

    public final boolean isStashed() {
        return this.mIsStashed;
    }

    public final void onSysuiLockedStateChange(boolean z4) {
        if (z4 != this.mIsSysuiLocked) {
            this.mIsSysuiLocked = z4;
            if (z4 || !this.mBarViewController.hasBubbles()) {
                return;
            }
            animateToInitialState(false);
        }
    }

    public final void setBubblesShowingOnHome(boolean z4) {
        if (this.mBubblesShowingOnHome != z4) {
            this.mBubblesShowingOnHome = z4;
            if (this.mBarViewController.hasBubbles()) {
                if (!this.mBubblesShowingOnHome) {
                    if (this.mBarViewController.isExpanded()) {
                        return;
                    }
                    stashBubbleBar();
                    return;
                }
                showBubbleBar(false);
                if (!this.mIsStashed) {
                    this.mIconTranslationYForStash.animateToValue(getBubbleBarTranslationYForHotseat()).start();
                }
                this.mControllers.runAfterInit(new m(this, 1));
            }
        }
    }

    public final void setBubblesShowingOnOverview(boolean z4) {
        if (this.mBubblesShowingOnOverview != z4) {
            this.mBubblesShowingOnOverview = z4;
            if (z4 || this.mBarViewController.isExpanded()) {
                this.mIconTranslationYForStash.animateToValue(-this.mActivity.getDeviceProfile().taskbarBottomMargin).start();
            } else {
                stashBubbleBar();
            }
        }
    }

    public final void showBubbleBar(boolean z4) {
        this.mRequestedStashState = false;
        this.mRequestedExpandedState = z4;
        updateStashedAndExpandedState();
    }

    public final void stashBubbleBar() {
        this.mRequestedStashState = true;
        this.mRequestedExpandedState = false;
        updateStashedAndExpandedState();
    }
}
