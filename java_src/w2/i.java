package w2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* loaded from: classes.dex */
public final class i extends AnimatorListenerAdapter {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ boolean f12759d = false;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ p f12760e;

    public i(p pVar) {
        this.f12760e = pVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        p pVar = this.f12760e;
        pVar.f12797h = 0;
        pVar.f12792c = null;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.f12760e.f12801l.d(0, this.f12759d);
        p pVar = this.f12760e;
        pVar.f12797h = 2;
        pVar.f12792c = animator;
    }
}
