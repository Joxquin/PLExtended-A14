package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.util.Log;
import android.view.View;
/* renamed from: androidx.fragment.app.o  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0217o extends AnimatorListenerAdapter {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C0221q f3438d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ View f3439e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ boolean f3440f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ S0 f3441g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ C0211l f3442h;

    public C0217o(C0221q c0221q, View view, boolean z4, S0 s02, C0211l c0211l) {
        this.f3438d = c0221q;
        this.f3439e = view;
        this.f3440f = z4;
        this.f3441g = s02;
        this.f3442h = c0211l;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator anim) {
        kotlin.jvm.internal.h.e(anim, "anim");
        this.f3438d.f3349a.endViewTransition(this.f3439e);
        if (this.f3440f) {
            SpecialEffectsController$Operation$State specialEffectsController$Operation$State = this.f3441g.f3332a;
            View viewToAnimate = this.f3439e;
            kotlin.jvm.internal.h.d(viewToAnimate, "viewToAnimate");
            specialEffectsController$Operation$State.a(viewToAnimate);
        }
        this.f3442h.a();
        if (AbstractC0220p0.H(2)) {
            Log.v("FragmentManager", "Animator from operation " + this.f3441g + " has ended.");
        }
    }
}
