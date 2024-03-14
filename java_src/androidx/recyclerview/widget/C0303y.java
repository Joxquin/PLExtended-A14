package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* renamed from: androidx.recyclerview.widget.y  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0303y extends AnimatorListenerAdapter {

    /* renamed from: d  reason: collision with root package name */
    public boolean f4039d = false;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ A f4040e;

    public C0303y(A a4) {
        this.f4040e = a4;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.f4039d = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        if (this.f4039d) {
            this.f4039d = false;
        } else if (((Float) this.f4040e.f3731C.getAnimatedValue()).floatValue() == 0.0f) {
            A a4 = this.f4040e;
            a4.f3732D = 0;
            a4.c(0);
        } else {
            A a5 = this.f4040e;
            a5.f3732D = 2;
            a5.f3753v.invalidate();
        }
    }
}
