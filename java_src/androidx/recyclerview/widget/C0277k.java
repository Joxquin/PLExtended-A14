package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
/* renamed from: androidx.recyclerview.widget.k  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0277k extends AnimatorListenerAdapter {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f3963d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ C0279l f3964e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f3965f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ View f3966g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ C0283n f3967h;

    public /* synthetic */ C0277k(C0283n c0283n, C0279l c0279l, ViewPropertyAnimator viewPropertyAnimator, View view, int i4) {
        this.f3963d = i4;
        this.f3967h = c0283n;
        this.f3964e = c0279l;
        this.f3965f = viewPropertyAnimator;
        this.f3966g = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        switch (this.f3963d) {
            case 0:
                this.f3965f.setListener(null);
                this.f3966g.setAlpha(1.0f);
                this.f3966g.setTranslationX(0.0f);
                this.f3966g.setTranslationY(0.0f);
                this.f3967h.c(this.f3964e.f3972a);
                this.f3967h.f3999r.remove(this.f3964e.f3972a);
                this.f3967h.i();
                return;
            default:
                this.f3965f.setListener(null);
                this.f3966g.setAlpha(1.0f);
                this.f3966g.setTranslationX(0.0f);
                this.f3966g.setTranslationY(0.0f);
                this.f3967h.c(this.f3964e.f3973b);
                this.f3967h.f3999r.remove(this.f3964e.f3973b);
                this.f3967h.i();
                return;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        switch (this.f3963d) {
            case 0:
                C0283n c0283n = this.f3967h;
                E0 e02 = this.f3964e.f3972a;
                c0283n.getClass();
                return;
            default:
                C0283n c0283n2 = this.f3967h;
                E0 e03 = this.f3964e.f3973b;
                c0283n2.getClass();
                return;
        }
    }
}
