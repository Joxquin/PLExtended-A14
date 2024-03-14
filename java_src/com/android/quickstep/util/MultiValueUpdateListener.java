package com.android.quickstep.util;

import android.animation.ValueAnimator;
import android.view.animation.Interpolator;
import java.util.ArrayList;
/* loaded from: classes.dex */
public abstract class MultiValueUpdateListener implements ValueAnimator.AnimatorUpdateListener {
    private final ArrayList mAllProperties = new ArrayList();

    /* loaded from: classes.dex */
    public final class FloatProp {
        private final float mDelay;
        private final float mDuration;
        private final float mEnd;
        private final Interpolator mInterpolator;
        private final float mStart;
        public float value;

        public FloatProp(float f4, float f5, float f6, float f7, Interpolator interpolator) {
            this.mStart = f4;
            this.value = f4;
            this.mEnd = f5;
            this.mDelay = f6;
            this.mDuration = f7;
            this.mInterpolator = interpolator;
            MultiValueUpdateListener.this.mAllProperties.add(this);
        }

        public float getStartValue() {
            return this.mStart;
        }
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        float animatedFraction = valueAnimator.getAnimatedFraction();
        float duration = ((float) valueAnimator.getDuration()) * animatedFraction;
        int size = this.mAllProperties.size();
        while (true) {
            size--;
            if (size < 0) {
                onUpdate(animatedFraction, false);
                return;
            }
            FloatProp floatProp = (FloatProp) this.mAllProperties.get(size);
            float interpolation = floatProp.mInterpolator.getInterpolation(Math.min(1.0f, Math.max(0.0f, duration - floatProp.mDelay) / floatProp.mDuration));
            floatProp.value = w.f.a(1.0f, interpolation, floatProp.mStart, floatProp.mEnd * interpolation);
        }
    }

    public abstract void onUpdate(float f4, boolean z4);
}
