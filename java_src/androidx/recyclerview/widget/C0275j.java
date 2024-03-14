package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
/* renamed from: androidx.recyclerview.widget.j  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0275j extends AnimatorListenerAdapter {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ E0 f3955d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ int f3956e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ View f3957f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ int f3958g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f3959h;

    /* renamed from: i  reason: collision with root package name */
    public final /* synthetic */ C0283n f3960i;

    public C0275j(C0283n c0283n, E0 e02, int i4, View view, int i5, ViewPropertyAnimator viewPropertyAnimator) {
        this.f3960i = c0283n;
        this.f3955d = e02;
        this.f3956e = i4;
        this.f3957f = view;
        this.f3958g = i5;
        this.f3959h = viewPropertyAnimator;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        if (this.f3956e != 0) {
            this.f3957f.setTranslationX(0.0f);
        }
        if (this.f3958g != 0) {
            this.f3957f.setTranslationY(0.0f);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f3959h.setListener(null);
        this.f3960i.c(this.f3955d);
        this.f3960i.f3997p.remove(this.f3955d);
        this.f3960i.i();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.f3960i.getClass();
    }
}
