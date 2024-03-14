package androidx.recyclerview.widget;

import android.animation.ValueAnimator;
/* renamed from: androidx.recyclerview.widget.w  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC0300w implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ A f4036d;

    public RunnableC0300w(A a4) {
        this.f4036d = a4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        A a4 = this.f4036d;
        int i4 = a4.f3732D;
        ValueAnimator valueAnimator = a4.f3731C;
        if (i4 == 1) {
            valueAnimator.cancel();
        } else if (i4 != 2) {
            return;
        }
        a4.f3732D = 3;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 0.0f);
        valueAnimator.setDuration(500);
        valueAnimator.start();
    }
}
