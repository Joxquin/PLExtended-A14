package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import android.view.animation.Animation;
/* renamed from: androidx.fragment.app.p  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class animation.Animation$AnimationListenerC0219p implements Animation.AnimationListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ S0 f3446d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ C0221q f3447e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ View f3448f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ C0211l f3449g;

    public animation.Animation$AnimationListenerC0219p(View view, C0211l c0211l, C0221q c0221q, S0 s02) {
        this.f3446d = s02;
        this.f3447e = c0221q;
        this.f3448f = view;
        this.f3449g = c0211l;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        kotlin.jvm.internal.h.e(animation, "animation");
        C0221q c0221q = this.f3447e;
        c0221q.f3349a.post(new RunnableC0199f(c0221q, this.f3448f, this.f3449g));
        if (AbstractC0220p0.H(2)) {
            Log.v("FragmentManager", "Animation from operation " + this.f3446d + " has ended.");
        }
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationRepeat(Animation animation) {
        kotlin.jvm.internal.h.e(animation, "animation");
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationStart(Animation animation) {
        kotlin.jvm.internal.h.e(animation, "animation");
        if (AbstractC0220p0.H(2)) {
            Log.v("FragmentManager", "Animation from operation " + this.f3446d + " has reached onAnimationStart.");
        }
    }
}
