package com.android.launcher3.anim;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.util.FloatProperty;
/* loaded from: classes.dex */
public final class SpringAnimationBuilder {

    /* renamed from: a  reason: collision with root package name */
    private double f4548a;

    /* renamed from: b  reason: collision with root package name */
    private double f4549b;
    private double beta;
    private double gamma;
    private final Context mContext;
    private float mEndValue;
    private float mStartValue;
    private double mValueThreshold;
    private double mVelocityThreshold;
    private double va;
    private double vb;
    private float mVelocity = 0.0f;
    private float mStiffness = 1500.0f;
    private float mDampingRatio = 0.5f;
    private float mMinVisibleChange = 1.0f;
    private float mDuration = 0.0f;

    public SpringAnimationBuilder(Context context) {
        this.mContext = context;
    }

    private double exponentialComponent(double d4) {
        return Math.pow(2.718281828459045d, ((-this.beta) * d4) / 2.0d);
    }

    public final ValueAnimator build(final Object obj, final FloatProperty floatProperty) {
        computeParams();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, this.mDuration);
        ofFloat.setDuration(getDuration()).setInterpolator(y0.e.f12949m);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.launcher3.anim.j
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                SpringAnimationBuilder springAnimationBuilder = SpringAnimationBuilder.this;
                FloatProperty floatProperty2 = floatProperty;
                Object obj2 = obj;
                springAnimationBuilder.getClass();
                floatProperty2.set((FloatProperty) obj2, Float.valueOf(springAnimationBuilder.getInterpolatedValue(valueAnimator.getAnimatedFraction())));
            }
        });
        ofFloat.addListener(new AnimationSuccessListener() { // from class: com.android.launcher3.anim.SpringAnimationBuilder.1
            @Override // com.android.launcher3.anim.AnimationSuccessListener
            public final void onAnimationSuccess(Animator animator) {
                floatProperty.set((FloatProperty) obj, Float.valueOf(SpringAnimationBuilder.this.mEndValue));
            }
        });
        return ofFloat;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0102 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0100 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void computeParams() {
        /*
            Method dump skipped, instructions count: 267
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.anim.SpringAnimationBuilder.computeParams():void");
    }

    public final long getDuration() {
        return (long) (this.mDuration * 1000.0d);
    }

    public final float getInterpolatedValue(float f4) {
        double d4 = this.mDuration * f4;
        double exponentialComponent = exponentialComponent(d4);
        double d5 = this.f4548a;
        double d6 = this.f4549b;
        double d7 = d4 * this.gamma;
        return ((float) (((Math.sin(d7) * d6) + (Math.cos(d7) * d5)) * exponentialComponent)) + this.mEndValue;
    }

    public final void setDampingRatio(float f4) {
        if (f4 <= 0.0f || f4 >= 1.0f) {
            throw new IllegalArgumentException("Damping ratio must be between 0 and 1");
        }
        this.mDampingRatio = f4;
    }

    public final void setEndValue(float f4) {
        this.mEndValue = f4;
    }

    public final void setMinimumVisibleChange(float f4) {
        if (f4 <= 0.0f) {
            throw new IllegalArgumentException("Minimum visible change must be positive.");
        }
        this.mMinVisibleChange = f4;
    }

    public final void setStartValue(float f4) {
        this.mStartValue = f4;
    }

    public final void setStartVelocity(float f4) {
        this.mVelocity = f4;
    }

    public final void setStiffness(float f4) {
        if (f4 <= 0.0f) {
            throw new IllegalArgumentException("Spring stiffness constant must be positive.");
        }
        this.mStiffness = f4;
    }

    public final void setValues(float... fArr) {
        if (fArr.length <= 1) {
            this.mEndValue = fArr[0];
            return;
        }
        this.mStartValue = fArr[0];
        this.mEndValue = fArr[fArr.length - 1];
    }
}
