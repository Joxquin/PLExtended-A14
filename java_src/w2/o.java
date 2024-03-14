package w2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
/* loaded from: classes.dex */
public abstract class o extends AnimatorListenerAdapter implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: d  reason: collision with root package name */
    public boolean f12777d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ p f12778e;

    public o(q qVar) {
        this.f12778e = qVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f12778e.getClass();
        this.f12777d = false;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        if (!this.f12777d) {
            this.f12778e.getClass();
            m mVar = (m) this;
            switch (mVar.f12775f) {
                case 0:
                    break;
                case 1:
                    mVar.f12776g.getClass();
                    break;
                case 2:
                    mVar.f12776g.getClass();
                    break;
                default:
                    mVar.f12776g.getClass();
                    break;
            }
            this.f12777d = true;
        }
        p pVar = this.f12778e;
        valueAnimator.getAnimatedFraction();
        pVar.getClass();
    }
}
