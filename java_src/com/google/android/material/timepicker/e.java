package com.google.android.material.timepicker;

import android.animation.ValueAnimator;
/* loaded from: classes.dex */
public final class e implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ ClockHandView f8212d;

    public e(ClockHandView clockHandView) {
        this.f8212d = clockHandView;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        ClockHandView clockHandView = this.f8212d;
        int i4 = ClockHandView.f8158u;
        clockHandView.c(floatValue, true);
    }
}
