package com.android.quickstep.interaction;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.android.launcher3.logging.StatsLogManager;
import com.android.quickstep.interaction.TutorialController;
import com.android.systemui.shared.R;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class OverviewGestureTutorialFragment extends TutorialFragment {
    public OverviewGestureTutorialFragment() {
        this(false);
    }

    @Override // com.android.quickstep.interaction.TutorialFragment
    public TutorialController createController(TutorialController.TutorialType tutorialType) {
        return new OverviewGestureTutorialController(this, tutorialType);
    }

    @Override // com.android.quickstep.interaction.TutorialFragment
    public Animator createGestureAnimation() {
        if (this.mTutorialController instanceof OverviewGestureTutorialController) {
            final float fullscreenHeight = this.mRootView.getFullscreenHeight() / 2.0f;
            final OverviewGestureTutorialController overviewGestureTutorialController = (OverviewGestureTutorialController) this.mTutorialController;
            AnimatorSet createFingerDotAppearanceAnimatorSet = overviewGestureTutorialController.createFingerDotAppearanceAnimatorSet();
            createFingerDotAppearanceAnimatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.interaction.OverviewGestureTutorialFragment.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    super.onAnimationStart(animator);
                    OverviewGestureTutorialFragment.this.mFingerDotView.setTranslationY(fullscreenHeight);
                }
            });
            AnimatorSet createFingerDotDisappearanceAnimatorSet = overviewGestureTutorialController.createFingerDotDisappearanceAnimatorSet();
            createFingerDotDisappearanceAnimatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.interaction.OverviewGestureTutorialFragment.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    super.onAnimationStart(animator);
                    overviewGestureTutorialController.animateTaskViewToOverview(false);
                }
            });
            Animator createAnimationPause = overviewGestureTutorialController.createAnimationPause();
            createAnimationPause.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.interaction.OverviewGestureTutorialFragment.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    overviewGestureTutorialController.resetFakeTaskViewFromOverview();
                }
            });
            ArrayList arrayList = new ArrayList();
            arrayList.add(createFingerDotAppearanceAnimatorSet);
            arrayList.add(overviewGestureTutorialController.createFingerDotOverviewSwipeAnimator(fullscreenHeight));
            arrayList.add(overviewGestureTutorialController.createAnimationPause());
            arrayList.add(createFingerDotDisappearanceAnimatorSet);
            arrayList.add(createAnimationPause);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.interaction.OverviewGestureTutorialFragment.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    super.onAnimationCancel(animator);
                    overviewGestureTutorialController.resetFakeTaskView(false);
                }
            });
            animatorSet.playSequentially(arrayList);
            return animatorSet;
        }
        return null;
    }

    @Override // com.android.quickstep.interaction.TutorialFragment
    public Class getControllerClass() {
        return OverviewGestureTutorialController.class;
    }

    @Override // com.android.quickstep.interaction.TutorialFragment
    public TutorialController.TutorialType getDefaultTutorialType() {
        return TutorialController.TutorialType.OVERVIEW_NAVIGATION;
    }

    @Override // com.android.quickstep.interaction.TutorialFragment
    public Integer getEdgeAnimationResId() {
        return Integer.valueOf((int) R.drawable.gesture_tutorial_loop_overview);
    }

    @Override // com.android.quickstep.interaction.TutorialFragment
    public /* bridge */ /* synthetic */ boolean isFoldable() {
        return super.isFoldable();
    }

    @Override // com.android.quickstep.interaction.TutorialFragment
    public /* bridge */ /* synthetic */ boolean isLargeScreen() {
        return super.isLargeScreen();
    }

    @Override // com.android.quickstep.interaction.TutorialFragment
    public void logTutorialStepCompleted(StatsLogManager statsLogManager) {
        statsLogManager.logger().log(StatsLogManager.LauncherEvent.LAUNCHER_GESTURE_TUTORIAL_OVERVIEW_STEP_COMPLETED);
    }

    @Override // com.android.quickstep.interaction.TutorialFragment
    public void logTutorialStepShown(StatsLogManager statsLogManager) {
        statsLogManager.logger().log(StatsLogManager.LauncherEvent.LAUNCHER_GESTURE_TUTORIAL_OVERVIEW_STEP_SHOWN);
    }

    @Override // com.android.quickstep.interaction.TutorialFragment, androidx.fragment.app.K
    public /* bridge */ /* synthetic */ void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // com.android.quickstep.interaction.TutorialFragment, androidx.fragment.app.K
    public /* bridge */ /* synthetic */ View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return super.onCreateView(layoutInflater, viewGroup, bundle);
    }

    @Override // com.android.quickstep.interaction.TutorialFragment, androidx.fragment.app.K
    public /* bridge */ /* synthetic */ void onDestroy() {
        super.onDestroy();
    }

    @Override // com.android.quickstep.interaction.TutorialFragment, androidx.fragment.app.K
    public /* bridge */ /* synthetic */ void onResume() {
        super.onResume();
    }

    @Override // com.android.quickstep.interaction.TutorialFragment, androidx.fragment.app.K
    public /* bridge */ /* synthetic */ void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
    }

    @Override // com.android.quickstep.interaction.TutorialFragment, androidx.fragment.app.K
    public /* bridge */ /* synthetic */ void onStop() {
        super.onStop();
    }

    @Override // com.android.quickstep.interaction.TutorialFragment, android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        releaseFeedbackAnimation();
        return super.onTouch(view, motionEvent);
    }

    public OverviewGestureTutorialFragment(boolean z4) {
        super(z4);
    }
}
