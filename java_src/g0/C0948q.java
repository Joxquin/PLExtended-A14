package g0;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import q.C1355f;
/* renamed from: g0.q  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0948q extends AnimatorListenerAdapter {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C1355f f9433d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ x f9434e;

    public C0948q(x xVar, C1355f c1355f) {
        this.f9434e = xVar;
        this.f9433d = c1355f;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f9433d.remove(animator);
        this.f9434e.f9464q.remove(animator);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.f9434e.f9464q.add(animator);
    }
}
