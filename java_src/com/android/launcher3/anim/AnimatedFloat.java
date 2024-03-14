package com.android.launcher3.anim;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.util.FloatProperty;
/* loaded from: classes.dex */
public final class AnimatedFloat {
    private Float mEndValue;
    private final Runnable mUpdateCallback;
    private ObjectAnimator mValueAnimator;
    public float value;
    public static final FloatProperty VALUE = new FloatProperty() { // from class: com.android.launcher3.anim.AnimatedFloat.1
        @Override // android.util.Property
        public final Float get(Object obj) {
            return Float.valueOf(((AnimatedFloat) obj).value);
        }

        @Override // android.util.FloatProperty
        public final void setValue(Object obj, float f4) {
            ((AnimatedFloat) obj).updateValue(f4);
        }
    };
    private static final a NO_OP = new a();

    public AnimatedFloat() {
        this(NO_OP);
    }

    public final ObjectAnimator animateToValue(float f4) {
        return animateToValue(this.value, f4);
    }

    public final void cancelAnimation() {
        ObjectAnimator objectAnimator = this.mValueAnimator;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    public final void finishAnimation() {
        ObjectAnimator objectAnimator = this.mValueAnimator;
        if (objectAnimator == null || !objectAnimator.isRunning()) {
            return;
        }
        this.mValueAnimator.end();
    }

    public final long getRemainingTime() {
        if (isAnimating() && this.mValueAnimator.isRunning()) {
            return Math.max(0L, this.mValueAnimator.getDuration() - this.mValueAnimator.getCurrentPlayTime());
        }
        return 0L;
    }

    public final boolean isAnimating() {
        return this.mValueAnimator != null;
    }

    public final boolean isAnimatingToValue(float f4) {
        Float f5;
        return isAnimating() && (f5 = this.mEndValue) != null && f5.floatValue() == f4;
    }

    public final void updateValue(float f4) {
        if (Float.compare(f4, this.value) != 0) {
            this.value = f4;
            this.mUpdateCallback.run();
        }
    }

    public AnimatedFloat(Runnable runnable) {
        this.mUpdateCallback = runnable;
    }

    public final ObjectAnimator animateToValue(float f4, final float f5) {
        cancelAnimation();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, VALUE, f4, f5);
        this.mValueAnimator = ofFloat;
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.anim.AnimatedFloat.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                if (AnimatedFloat.this.mValueAnimator == animator) {
                    AnimatedFloat.this.mValueAnimator = null;
                    AnimatedFloat.this.mEndValue = null;
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                if (AnimatedFloat.this.mValueAnimator == animator) {
                    AnimatedFloat.this.mEndValue = Float.valueOf(f5);
                }
            }
        });
        return this.mValueAnimator;
    }
}
