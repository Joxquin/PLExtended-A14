package com.android.launcher3.anim;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import com.android.launcher3.AbstractFloatingView;
/* loaded from: classes.dex */
public final class AlphaUpdateListener extends AnimatorListenerAdapter implements ValueAnimator.AnimatorUpdateListener {
    private View mView;

    public AlphaUpdateListener(View view) {
        this.mView = view;
    }

    public static void updateVisibility(View view, int i4) {
        if (view.getAlpha() < 0.01f && view.getVisibility() != i4) {
            view.setVisibility(i4);
        } else if (view.getAlpha() <= 0.01f || view.getVisibility() == 0) {
        } else {
            if (!(view instanceof ViewGroup)) {
                view.setVisibility(0);
                return;
            }
            ViewGroup viewGroup = (ViewGroup) view;
            int descendantFocusability = viewGroup.getDescendantFocusability();
            viewGroup.setDescendantFocusability(AbstractFloatingView.TYPE_TASKBAR_OVERLAYS);
            viewGroup.setVisibility(0);
            viewGroup.setDescendantFocusability(descendantFocusability);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        updateVisibility(this.mView, 4);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.mView.setVisibility(0);
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        updateVisibility(this.mView, 4);
    }
}
