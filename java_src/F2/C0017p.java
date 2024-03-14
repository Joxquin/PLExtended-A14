package F2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* renamed from: F2.p  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0017p extends AnimatorListenerAdapter {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ q f458d;

    public C0017p(q qVar) {
        this.f458d = qVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f458d.q();
        this.f458d.f469o.start();
    }
}
