package g0;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class Q extends AnimatorListenerAdapter implements InterfaceC0951u {

    /* renamed from: d  reason: collision with root package name */
    public final ViewGroup f9390d;

    /* renamed from: e  reason: collision with root package name */
    public final View f9391e;

    /* renamed from: f  reason: collision with root package name */
    public final View f9392f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f9393g = true;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ C0939h f9394h;

    public Q(C0939h c0939h, ViewGroup viewGroup, View view, View view2) {
        this.f9394h = c0939h;
        this.f9390d = viewGroup;
        this.f9391e = view;
        this.f9392f = view2;
    }

    @Override // g0.InterfaceC0951u
    public final void a(x xVar) {
    }

    @Override // g0.InterfaceC0951u
    public final void b() {
    }

    @Override // g0.InterfaceC0951u
    public final void d() {
    }

    @Override // g0.InterfaceC0951u
    public final void f(x xVar) {
        if (this.f9393g) {
            h();
        }
    }

    @Override // g0.InterfaceC0951u
    public final void g(x xVar) {
        xVar.z(this);
    }

    public final void h() {
        this.f9392f.setTag(R.id.save_overlay_view, null);
        this.f9390d.getOverlay().remove(this.f9391e);
        this.f9393g = false;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        h();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public final void onAnimationPause(Animator animator) {
        this.f9390d.getOverlay().remove(this.f9391e);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public final void onAnimationResume(Animator animator) {
        if (this.f9391e.getParent() == null) {
            this.f9390d.getOverlay().add(this.f9391e);
        } else {
            this.f9394h.d();
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator, boolean z4) {
        if (z4) {
            this.f9392f.setTag(R.id.save_overlay_view, this.f9391e);
            this.f9390d.getOverlay().add(this.f9391e);
            this.f9393g = true;
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator, boolean z4) {
        if (z4) {
            return;
        }
        h();
    }
}
