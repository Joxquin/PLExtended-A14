package com.android.quickstep.interaction;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
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
public class BackGestureTutorialFragment extends TutorialFragment {
    public BackGestureTutorialFragment() {
        this(false);
    }

    @Override // com.android.quickstep.interaction.TutorialFragment
    public TutorialController createController(TutorialController.TutorialType tutorialType) {
        return new BackGestureTutorialController(this, tutorialType);
    }

    @Override // com.android.quickstep.interaction.TutorialFragment
    public Animator createGestureAnimation() {
        TutorialController tutorialController = this.mTutorialController;
        if (tutorialController instanceof BackGestureTutorialController) {
            final BackGestureTutorialController backGestureTutorialController = (BackGestureTutorialController) tutorialController;
            final float f4 = -(this.mRootView.getWidth() / 2);
            AnimatorSet createFingerDotAppearanceAnimatorSet = backGestureTutorialController.createFingerDotAppearanceAnimatorSet();
            createFingerDotAppearanceAnimatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.interaction.BackGestureTutorialFragment.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    super.onAnimationStart(animator);
                    BackGestureTutorialFragment.this.mFingerDotView.setTranslationX(f4);
                }
            });
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.mFingerDotView, View.TRANSLATION_X, f4, 0.0f);
            ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.interaction.BackGestureTutorialFragment.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    BackGestureTutorialController backGestureTutorialController2 = backGestureTutorialController;
                    backGestureTutorialController2.updateFakeAppTaskViewLayout(backGestureTutorialController2.getMockAppTaskPreviousPageLayoutResId());
                }
            });
            ofFloat.setDuration(1000L);
            Animator createAnimationPause = backGestureTutorialController.createAnimationPause();
            createAnimationPause.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.interaction.BackGestureTutorialFragment.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    BackGestureTutorialController backGestureTutorialController2 = backGestureTutorialController;
                    backGestureTutorialController2.updateFakeAppTaskViewLayout(backGestureTutorialController2.getMockAppTaskCurrentPageLayoutResId());
                }
            });
            ArrayList arrayList = new ArrayList();
            arrayList.add(createFingerDotAppearanceAnimatorSet);
            arrayList.add(ofFloat);
            arrayList.add(backGestureTutorialController.createFingerDotDisappearanceAnimatorSet());
            arrayList.add(createAnimationPause);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.interaction.BackGestureTutorialFragment.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    super.onAnimationCancel(animator);
                    BackGestureTutorialController backGestureTutorialController2 = backGestureTutorialController;
                    backGestureTutorialController2.updateFakeAppTaskViewLayout(backGestureTutorialController2.getMockAppTaskCurrentPageLayoutResId());
                }
            });
            animatorSet.playSequentially(arrayList);
            return animatorSet;
        }
        return null;
    }

    @Override // com.android.quickstep.interaction.TutorialFragment
    public Class getControllerClass() {
        return BackGestureTutorialController.class;
    }

    @Override // com.android.quickstep.interaction.TutorialFragment
    public TutorialController.TutorialType getDefaultTutorialType() {
        return TutorialController.TutorialType.BACK_NAVIGATION;
    }

    @Override // com.android.quickstep.interaction.TutorialFragment
    public Integer getEdgeAnimationResId() {
        return Integer.valueOf((int) R.drawable.gesture_tutorial_loop_back);
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
        statsLogManager.logger().log(StatsLogManager.LauncherEvent.LAUNCHER_GESTURE_TUTORIAL_BACK_STEP_COMPLETED);
    }

    @Override // com.android.quickstep.interaction.TutorialFragment
    public void logTutorialStepShown(StatsLogManager statsLogManager) {
        statsLogManager.logger().log(StatsLogManager.LauncherEvent.LAUNCHER_GESTURE_TUTORIAL_BACK_STEP_SHOWN);
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
        TutorialController tutorialController;
        releaseFeedbackAnimation();
        if (motionEvent.getAction() == 0 && (tutorialController = this.mTutorialController) != null) {
            tutorialController.setRippleHotspot(motionEvent.getX(), motionEvent.getY());
        }
        return super.onTouch(view, motionEvent);
    }

    public BackGestureTutorialFragment(boolean z4) {
        super(z4);
    }
}
