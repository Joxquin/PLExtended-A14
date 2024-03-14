package I2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.drawable.Drawable;
import r2.InterfaceC1390g;
/* loaded from: classes.dex */
public final class e extends AnimatorListenerAdapter {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ InterfaceC1390g f568d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Drawable f569e;

    public e(InterfaceC1390g interfaceC1390g, Drawable drawable) {
        this.f568d = interfaceC1390g;
        this.f569e = drawable;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f568d.b();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.f568d.b();
    }
}
