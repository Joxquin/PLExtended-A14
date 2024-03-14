package com.android.launcher3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.util.Property;
/* loaded from: classes.dex */
public final class InterruptibleInOutAnimator {
    private static final Property VALUE = new Property(Float.TYPE) { // from class: com.android.launcher3.InterruptibleInOutAnimator.1
        @Override // android.util.Property
        public final Object get(Object obj) {
            return Float.valueOf(((InterruptibleInOutAnimator) obj).mValue);
        }

        @Override // android.util.Property
        public final void set(Object obj, Object obj2) {
            ((InterruptibleInOutAnimator) obj).mValue = ((Float) obj2).floatValue();
        }
    };
    private ValueAnimator mAnimator;
    private boolean mFirstRun = true;
    private long mOriginalDuration;
    private float mOriginalFromValue;
    private float mOriginalToValue;
    private float mValue;

    public InterruptibleInOutAnimator(float f4, long j4) {
        ObjectAnimator duration = ObjectAnimator.ofFloat(this, VALUE, 0.0f, f4).setDuration(j4);
        this.mAnimator = duration;
        this.mOriginalDuration = j4;
        this.mOriginalFromValue = 0.0f;
        this.mOriginalToValue = f4;
        duration.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.InterruptibleInOutAnimator.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                InterruptibleInOutAnimator.this.getClass();
            }
        });
    }

    private void animate(int i4) {
        long currentPlayTime = this.mAnimator.getCurrentPlayTime();
        float f4 = i4 == 1 ? this.mOriginalToValue : this.mOriginalFromValue;
        float f5 = this.mFirstRun ? this.mOriginalFromValue : this.mValue;
        this.mAnimator.cancel();
        long j4 = this.mOriginalDuration;
        this.mAnimator.setDuration(Math.max(0L, Math.min(j4 - currentPlayTime, j4)));
        this.mAnimator.setFloatValues(f5, f4);
        this.mAnimator.start();
        this.mFirstRun = false;
    }

    public final void animateIn() {
        animate(1);
    }

    public final void animateOut() {
        animate(2);
    }

    public final ValueAnimator getAnimator() {
        return this.mAnimator;
    }
}
