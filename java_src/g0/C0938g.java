package g0;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import androidx.core.view.C0186x;
import com.android.systemui.shared.R;
import java.util.WeakHashMap;
/* renamed from: g0.g  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0938g extends AnimatorListenerAdapter implements InterfaceC0951u {

    /* renamed from: d  reason: collision with root package name */
    public final View f9418d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f9419e = false;

    public C0938g(View view) {
        this.f9418d = view;
    }

    @Override // g0.InterfaceC0951u
    public final void a(x xVar) {
    }

    @Override // g0.InterfaceC0951u
    public final void b() {
        float f4;
        if (this.f9418d.getVisibility() == 0) {
            View view = this.f9418d;
            N n4 = I.f9382a;
            f4 = view.getTransitionAlpha();
        } else {
            f4 = 0.0f;
        }
        this.f9418d.setTag(R.id.transition_pause_alpha, Float.valueOf(f4));
    }

    @Override // g0.InterfaceC0951u
    public final void c(x xVar) {
    }

    @Override // g0.InterfaceC0951u
    public final void d() {
        this.f9418d.setTag(R.id.transition_pause_alpha, null);
    }

    @Override // g0.InterfaceC0951u
    public final void f(x xVar) {
    }

    @Override // g0.InterfaceC0951u
    public final void g(x xVar) {
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        View view = this.f9418d;
        N n4 = I.f9382a;
        view.setTransitionAlpha(1.0f);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        onAnimationEnd(animator, false);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        View view = this.f9418d;
        WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
        if (C0186x.f(view) && this.f9418d.getLayerType() == 0) {
            this.f9419e = true;
            this.f9418d.setLayerType(2, null);
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator, boolean z4) {
        if (this.f9419e) {
            this.f9418d.setLayerType(0, null);
        }
        if (z4) {
            return;
        }
        View view = this.f9418d;
        N n4 = I.f9382a;
        view.setTransitionAlpha(1.0f);
    }
}
