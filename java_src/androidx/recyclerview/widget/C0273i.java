package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
/* renamed from: androidx.recyclerview.widget.i  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0273i extends AnimatorListenerAdapter {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f3950d = 1;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ E0 f3951e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ View f3952f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f3953g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ C0283n f3954h;

    public C0273i(C0283n c0283n, E0 e02, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.f3954h = c0283n;
        this.f3951e = e02;
        this.f3953g = viewPropertyAnimator;
        this.f3952f = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        switch (this.f3950d) {
            case 1:
                this.f3952f.setAlpha(1.0f);
                return;
            default:
                super.onAnimationCancel(animator);
                return;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        switch (this.f3950d) {
            case 0:
                this.f3953g.setListener(null);
                this.f3952f.setAlpha(1.0f);
                this.f3954h.c(this.f3951e);
                this.f3954h.f3998q.remove(this.f3951e);
                this.f3954h.i();
                return;
            default:
                this.f3953g.setListener(null);
                this.f3954h.c(this.f3951e);
                this.f3954h.f3996o.remove(this.f3951e);
                this.f3954h.i();
                return;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        switch (this.f3950d) {
            case 0:
                this.f3954h.getClass();
                return;
            default:
                this.f3954h.getClass();
                return;
        }
    }

    public C0273i(C0283n c0283n, E0 e02, View view, ViewPropertyAnimator viewPropertyAnimator) {
        this.f3954h = c0283n;
        this.f3951e = e02;
        this.f3952f = view;
        this.f3953g = viewPropertyAnimator;
    }
}
