package w2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* loaded from: classes.dex */
public final class h extends AnimatorListenerAdapter {

    /* renamed from: d  reason: collision with root package name */
    public boolean f12756d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ boolean f12757e = false;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ p f12758f;

    public h(p pVar) {
        this.f12758f = pVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.f12756d = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        p pVar = this.f12758f;
        pVar.f12797h = 0;
        pVar.f12792c = null;
        if (this.f12756d) {
            return;
        }
        g gVar = pVar.f12801l;
        boolean z4 = this.f12757e;
        gVar.d(z4 ? 8 : 4, z4);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.f12758f.f12801l.d(0, this.f12757e);
        p pVar = this.f12758f;
        pVar.f12797h = 1;
        pVar.f12792c = animator;
        this.f12756d = false;
    }
}
