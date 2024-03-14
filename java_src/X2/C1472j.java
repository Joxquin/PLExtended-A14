package x2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* renamed from: x2.j  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1472j extends AnimatorListenerAdapter {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C1474l f12856d;

    public C1472j(C1474l c1474l) {
        this.f12856d = c1474l;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        C1474l c1474l = this.f12856d;
        if (c1474l.f12861c == animator) {
            c1474l.f12861c = null;
        }
    }
}
