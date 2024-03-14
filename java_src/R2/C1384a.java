package r2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* renamed from: r2.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1384a extends AnimatorListenerAdapter {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ InterfaceC1390g f12156d;

    public C1384a(InterfaceC1390g interfaceC1390g) {
        this.f12156d = interfaceC1390g;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f12156d.e();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.f12156d.f();
    }
}
