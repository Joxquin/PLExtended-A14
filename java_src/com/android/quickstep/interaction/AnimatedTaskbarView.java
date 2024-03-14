package com.android.quickstep.interaction;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.android.systemui.shared.R;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class AnimatedTaskbarView extends ConstraintLayout {
    private View mAllAppsButton;
    private View mBackground;
    private View mIcon1;
    private View mIcon2;
    private View mIcon3;
    private View mIcon4;
    private View mIcon5;
    private View mIconContainer;
    private Animator mRunningAnimator;

    public AnimatedTaskbarView(Context context) {
        super(context);
    }

    private Animator createIconAppearanceFromHotseatAnimator(final View view, View view2, int i4, int i5) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(ObjectAnimator.ofFloat(view, View.TRANSLATION_Y, (view2.getTop() + i4) - (view.getTop() + getTop()), 0.0f));
        arrayList.add(ObjectAnimator.ofFloat(view, View.TRANSLATION_X, (view2.getLeft() + i5) - (view.getLeft() + getLeft()), 0.0f));
        arrayList.add(ObjectAnimator.ofFloat(view, View.SCALE_X, view2.getWidth() / view.getWidth(), 1.0f));
        arrayList.add(ObjectAnimator.ofFloat(view, View.SCALE_Y, view2.getHeight() / view.getHeight(), 1.0f));
        arrayList.add(ObjectAnimator.ofFloat(view, View.ALPHA, 0.0f, 1.0f));
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.interaction.AnimatedTaskbarView.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                super.onAnimationStart(animator);
                view.setVisibility(0);
            }
        });
        return animatorSet;
    }

    private Animator createIconDisappearanceToHotseatAnimator(final View view, View view2, int i4, int i5) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(ObjectAnimator.ofFloat(view, View.TRANSLATION_Y, 0.0f, (view2.getTop() + i4) - (view.getTop() + getTop())));
        arrayList.add(ObjectAnimator.ofFloat(view, View.TRANSLATION_X, 0.0f, (view2.getLeft() + i5) - (view.getLeft() + getLeft())));
        arrayList.add(ObjectAnimator.ofFloat(view, View.SCALE_X, 1.0f, view2.getWidth() / view.getWidth()));
        arrayList.add(ObjectAnimator.ofFloat(view, View.SCALE_Y, 1.0f, view2.getHeight() / view.getHeight()));
        arrayList.add(ObjectAnimator.ofFloat(view, View.ALPHA, 1.0f, 0.0f));
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.interaction.AnimatedTaskbarView.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                view.setVisibility(4);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                super.onAnimationStart(animator);
                view.setVisibility(0);
            }
        });
        return animatorSet;
    }

    private void start(final Animator animator) {
        Animator animator2 = this.mRunningAnimator;
        if (animator2 != null) {
            animator2.cancel();
        }
        animator.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.interaction.AnimatedTaskbarView.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator3) {
                super.onAnimationCancel(animator3);
                AnimatedTaskbarView.this.mRunningAnimator = null;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator3) {
                super.onAnimationEnd(animator3);
                AnimatedTaskbarView.this.mRunningAnimator = null;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator3) {
                super.onAnimationStart(animator3);
                AnimatedTaskbarView.this.mRunningAnimator = animator;
            }
        });
        animator.start();
    }

    public void animateAppearanceFromHotseat(ViewGroup viewGroup) {
        ArrayList arrayList = new ArrayList();
        int top = viewGroup.getTop();
        int left = viewGroup.getLeft();
        arrayList.add(ObjectAnimator.ofFloat(this.mBackground, View.ALPHA, 0.0f, 1.0f));
        arrayList.add(ObjectAnimator.ofFloat(this.mAllAppsButton, View.ALPHA, 0.0f, 1.0f));
        arrayList.add(createIconAppearanceFromHotseatAnimator(this.mIcon1, viewGroup.findViewById(R.id.hotseat_icon_1), top, left));
        arrayList.add(createIconAppearanceFromHotseatAnimator(this.mIcon2, viewGroup.findViewById(R.id.hotseat_icon_2), top, left));
        arrayList.add(createIconAppearanceFromHotseatAnimator(this.mIcon3, viewGroup.findViewById(R.id.hotseat_icon_3), top, left));
        arrayList.add(createIconAppearanceFromHotseatAnimator(this.mIcon4, viewGroup.findViewById(R.id.hotseat_icon_4), top, left));
        arrayList.add(createIconAppearanceFromHotseatAnimator(this.mIcon5, viewGroup.findViewById(R.id.hotseat_icon_5), top, left));
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.interaction.AnimatedTaskbarView.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                super.onAnimationStart(animator);
                AnimatedTaskbarView.this.setVisibility(0);
            }
        });
        start(animatorSet);
    }

    public void animateDisappearanceToHotseat(ViewGroup viewGroup) {
        ArrayList arrayList = new ArrayList();
        int top = viewGroup.getTop();
        int left = viewGroup.getLeft();
        arrayList.add(ObjectAnimator.ofFloat(this.mBackground, View.ALPHA, 1.0f, 0.0f));
        arrayList.add(ObjectAnimator.ofFloat(this.mAllAppsButton, View.ALPHA, 1.0f, 0.0f));
        arrayList.add(createIconDisappearanceToHotseatAnimator(this.mIcon1, viewGroup.findViewById(R.id.hotseat_icon_1), top, left));
        arrayList.add(createIconDisappearanceToHotseatAnimator(this.mIcon2, viewGroup.findViewById(R.id.hotseat_icon_2), top, left));
        arrayList.add(createIconDisappearanceToHotseatAnimator(this.mIcon3, viewGroup.findViewById(R.id.hotseat_icon_3), top, left));
        arrayList.add(createIconDisappearanceToHotseatAnimator(this.mIcon4, viewGroup.findViewById(R.id.hotseat_icon_4), top, left));
        arrayList.add(createIconDisappearanceToHotseatAnimator(this.mIcon5, viewGroup.findViewById(R.id.hotseat_icon_5), top, left));
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.interaction.AnimatedTaskbarView.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                AnimatedTaskbarView.this.setVisibility(4);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                super.onAnimationStart(animator);
                AnimatedTaskbarView.this.setVisibility(0);
            }
        });
        start(animatorSet);
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mBackground = findViewById(R.id.taskbar_background);
        this.mIconContainer = findViewById(R.id.icon_container);
        this.mAllAppsButton = findViewById(R.id.taskbar_all_apps);
        this.mIcon1 = findViewById(R.id.taskbar_icon_1);
        this.mIcon2 = findViewById(R.id.taskbar_icon_2);
        this.mIcon3 = findViewById(R.id.taskbar_icon_3);
        this.mIcon4 = findViewById(R.id.taskbar_icon_4);
        this.mIcon5 = findViewById(R.id.taskbar_icon_5);
    }

    public AnimatedTaskbarView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public AnimatedTaskbarView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
    }

    public AnimatedTaskbarView(Context context, AttributeSet attributeSet, int i4, int i5) {
        super(context, attributeSet, i4, i5);
    }
}
