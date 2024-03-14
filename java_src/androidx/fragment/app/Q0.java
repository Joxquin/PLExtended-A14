package androidx.fragment.app;

import android.util.Log;
import android.view.View;
/* loaded from: classes.dex */
public final class Q0 extends S0 {

    /* renamed from: h  reason: collision with root package name */
    public final z0 f3325h;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Q0(androidx.fragment.app.SpecialEffectsController$Operation$State r3, androidx.fragment.app.SpecialEffectsController$Operation$LifecycleImpact r4, androidx.fragment.app.z0 r5, I.d r6) {
        /*
            r2 = this;
            java.lang.String r0 = "fragmentStateManager"
            kotlin.jvm.internal.h.e(r5, r0)
            androidx.fragment.app.K r0 = r5.f3543c
            java.lang.String r1 = "fragmentStateManager.fragment"
            kotlin.jvm.internal.h.d(r0, r1)
            r2.<init>(r3, r4, r0, r6)
            r2.f3325h = r5
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.Q0.<init>(androidx.fragment.app.SpecialEffectsController$Operation$State, androidx.fragment.app.SpecialEffectsController$Operation$LifecycleImpact, androidx.fragment.app.z0, I.d):void");
    }

    @Override // androidx.fragment.app.S0
    public final void b() {
        super.b();
        this.f3325h.k();
    }

    @Override // androidx.fragment.app.S0
    public final void d() {
        SpecialEffectsController$Operation$LifecycleImpact specialEffectsController$Operation$LifecycleImpact = this.f3333b;
        SpecialEffectsController$Operation$LifecycleImpact specialEffectsController$Operation$LifecycleImpact2 = SpecialEffectsController$Operation$LifecycleImpact.ADDING;
        z0 z0Var = this.f3325h;
        if (specialEffectsController$Operation$LifecycleImpact != specialEffectsController$Operation$LifecycleImpact2) {
            if (specialEffectsController$Operation$LifecycleImpact == SpecialEffectsController$Operation$LifecycleImpact.REMOVING) {
                K k4 = z0Var.f3543c;
                kotlin.jvm.internal.h.d(k4, "fragmentStateManager.fragment");
                View requireView = k4.requireView();
                kotlin.jvm.internal.h.d(requireView, "fragment.requireView()");
                if (AbstractC0220p0.H(2)) {
                    Log.v("FragmentManager", "Clearing focus " + requireView.findFocus() + " on view " + requireView + " for Fragment " + k4);
                }
                requireView.clearFocus();
                return;
            }
            return;
        }
        K k5 = z0Var.f3543c;
        kotlin.jvm.internal.h.d(k5, "fragmentStateManager.fragment");
        View findFocus = k5.mView.findFocus();
        if (findFocus != null) {
            k5.setFocusedView(findFocus);
            if (AbstractC0220p0.H(2)) {
                Log.v("FragmentManager", "requestFocus: Saved focused view " + findFocus + " for Fragment " + k5);
            }
        }
        View requireView2 = this.f3334c.requireView();
        kotlin.jvm.internal.h.d(requireView2, "this.fragment.requireView()");
        if (requireView2.getParent() == null) {
            z0Var.b();
            requireView2.setAlpha(0.0f);
        }
        if ((requireView2.getAlpha() == 0.0f) && requireView2.getVisibility() == 0) {
            requireView2.setVisibility(4);
        }
        requireView2.setAlpha(k5.getPostOnViewCreatedAlpha());
    }
}
