package com.android.launcher3.anim;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.util.FloatProperty;
import java.util.ArrayList;
/* loaded from: classes.dex */
public final class PendingAnimation extends AnimatedPropertySetter {
    private final ArrayList mAnimHolders = new ArrayList();
    private final long mDuration;

    public PendingAnimation(long j4) {
        this.mDuration = j4;
    }

    @Override // com.android.launcher3.anim.AnimatedPropertySetter, com.android.launcher3.anim.PropertySetter
    public final void add(Animator animator) {
        add(animator, SpringProperty.DEFAULT);
    }

    public final void addFloat(Object obj, FloatProperty floatProperty, float f4, float f5, TimeInterpolator timeInterpolator) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(obj, floatProperty, f4, f5);
        ofFloat.setInterpolator(timeInterpolator);
        add(ofFloat, SpringProperty.DEFAULT);
    }

    @Override // com.android.launcher3.anim.AnimatedPropertySetter, com.android.launcher3.anim.PropertySetter
    public final AnimatorSet buildAnim() {
        if (this.mAnimHolders.isEmpty()) {
            add(ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(this.mDuration));
        }
        return super.buildAnim();
    }

    public final AnimatorPlaybackController createPlaybackController() {
        return new AnimatorPlaybackController(buildAnim(), this.mDuration, this.mAnimHolders);
    }

    public final long getDuration() {
        return this.mDuration;
    }

    public final void add(Animator animator, SpringProperty springProperty) {
        long j4 = this.mDuration;
        this.mAnim.play(animator.setDuration(j4));
        AnimatorPlaybackController.addAnimationHoldersRecur(animator, j4, springProperty, this.mAnimHolders);
    }
}
