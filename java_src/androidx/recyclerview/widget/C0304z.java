package androidx.recyclerview.widget;

import android.animation.ValueAnimator;
/* renamed from: androidx.recyclerview.widget.z  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0304z implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ A f4048d;

    public C0304z(A a4) {
        this.f4048d = a4;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        int floatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
        this.f4048d.f3737f.setAlpha(floatValue);
        this.f4048d.f3738g.setAlpha(floatValue);
        this.f4048d.f3753v.invalidate();
    }
}
