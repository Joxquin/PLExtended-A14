package I2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import r2.InterfaceC1390g;
/* loaded from: classes.dex */
public final class f extends AnimatorListenerAdapter {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ InterfaceC1390g f570d;

    public f(InterfaceC1390g interfaceC1390g) {
        this.f570d = interfaceC1390g;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f570d.c().f12163c = Float.MAX_VALUE;
        this.f570d.a();
    }
}
