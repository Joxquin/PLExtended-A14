package g0;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes.dex */
public final class P extends AnimatorListenerAdapter implements InterfaceC0951u {

    /* renamed from: d  reason: collision with root package name */
    public final View f9384d;

    /* renamed from: e  reason: collision with root package name */
    public final int f9385e;

    /* renamed from: f  reason: collision with root package name */
    public final ViewGroup f9386f;

    /* renamed from: h  reason: collision with root package name */
    public boolean f9388h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f9389i = false;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f9387g = true;

    public P(View view, int i4) {
        this.f9384d = view;
        this.f9385e = i4;
        this.f9386f = (ViewGroup) view.getParent();
        h(true);
    }

    @Override // g0.InterfaceC0951u
    public final void a(x xVar) {
    }

    @Override // g0.InterfaceC0951u
    public final void b() {
        h(false);
        if (this.f9389i) {
            return;
        }
        View view = this.f9384d;
        int i4 = this.f9385e;
        N n4 = I.f9382a;
        view.setTransitionVisibility(i4);
    }

    @Override // g0.InterfaceC0951u
    public final void d() {
        h(true);
        if (this.f9389i) {
            return;
        }
        View view = this.f9384d;
        N n4 = I.f9382a;
        view.setTransitionVisibility(0);
    }

    @Override // g0.InterfaceC0951u
    public final void f(x xVar) {
    }

    @Override // g0.InterfaceC0951u
    public final void g(x xVar) {
        xVar.z(this);
    }

    public final void h(boolean z4) {
        ViewGroup viewGroup;
        if (!this.f9387g || this.f9388h == z4 || (viewGroup = this.f9386f) == null) {
            return;
        }
        this.f9388h = z4;
        viewGroup.suppressLayout(z4);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.f9389i = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        if (!this.f9389i) {
            View view = this.f9384d;
            int i4 = this.f9385e;
            N n4 = I.f9382a;
            view.setTransitionVisibility(i4);
            ViewGroup viewGroup = this.f9386f;
            if (viewGroup != null) {
                viewGroup.invalidate();
            }
        }
        h(false);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator, boolean z4) {
        if (z4) {
            View view = this.f9384d;
            N n4 = I.f9382a;
            view.setTransitionVisibility(0);
            ViewGroup viewGroup = this.f9386f;
            if (viewGroup != null) {
                viewGroup.invalidate();
            }
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator, boolean z4) {
        if (z4) {
            return;
        }
        if (!this.f9389i) {
            View view = this.f9384d;
            int i4 = this.f9385e;
            N n4 = I.f9382a;
            view.setTransitionVisibility(i4);
            ViewGroup viewGroup = this.f9386f;
            if (viewGroup != null) {
                viewGroup.invalidate();
            }
        }
        h(false);
    }
}
