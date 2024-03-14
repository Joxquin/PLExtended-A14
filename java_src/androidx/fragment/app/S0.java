package androidx.fragment.app;

import android.util.Log;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes.dex */
public class S0 {

    /* renamed from: a  reason: collision with root package name */
    public SpecialEffectsController$Operation$State f3332a;

    /* renamed from: b  reason: collision with root package name */
    public SpecialEffectsController$Operation$LifecycleImpact f3333b;

    /* renamed from: c  reason: collision with root package name */
    public final K f3334c;

    /* renamed from: d  reason: collision with root package name */
    public final List f3335d = new ArrayList();

    /* renamed from: e  reason: collision with root package name */
    public final Set f3336e = new LinkedHashSet();

    /* renamed from: f  reason: collision with root package name */
    public boolean f3337f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f3338g;

    public S0(SpecialEffectsController$Operation$State specialEffectsController$Operation$State, SpecialEffectsController$Operation$LifecycleImpact specialEffectsController$Operation$LifecycleImpact, K k4, I.d dVar) {
        this.f3332a = specialEffectsController$Operation$State;
        this.f3333b = specialEffectsController$Operation$LifecycleImpact;
        this.f3334c = k4;
        dVar.b(new I.c() { // from class: androidx.fragment.app.R0
            @Override // I.c
            public final void onCancel() {
                S0 this$0 = S0.this;
                kotlin.jvm.internal.h.e(this$0, "this$0");
                this$0.a();
            }
        });
    }

    public final void a() {
        if (this.f3337f) {
            return;
        }
        this.f3337f = true;
        Set set = this.f3336e;
        if (set.isEmpty()) {
            b();
            return;
        }
        for (I.d dVar : kotlin.collections.s.m(set)) {
            dVar.a();
        }
    }

    public void b() {
        if (this.f3338g) {
            return;
        }
        if (AbstractC0220p0.H(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: " + this + " has called complete.");
        }
        this.f3338g = true;
        for (Runnable runnable : this.f3335d) {
            runnable.run();
        }
    }

    public final void c(SpecialEffectsController$Operation$State specialEffectsController$Operation$State, SpecialEffectsController$Operation$LifecycleImpact specialEffectsController$Operation$LifecycleImpact) {
        int ordinal = specialEffectsController$Operation$LifecycleImpact.ordinal();
        SpecialEffectsController$Operation$State specialEffectsController$Operation$State2 = SpecialEffectsController$Operation$State.REMOVED;
        K k4 = this.f3334c;
        if (ordinal == 0) {
            if (this.f3332a != specialEffectsController$Operation$State2) {
                if (AbstractC0220p0.H(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: For fragment " + k4 + " mFinalState = " + this.f3332a + " -> " + specialEffectsController$Operation$State + '.');
                }
                this.f3332a = specialEffectsController$Operation$State;
            }
        } else if (ordinal == 1) {
            if (this.f3332a == specialEffectsController$Operation$State2) {
                if (AbstractC0220p0.H(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: For fragment " + k4 + " mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = " + this.f3333b + " to ADDING.");
                }
                this.f3332a = SpecialEffectsController$Operation$State.VISIBLE;
                this.f3333b = SpecialEffectsController$Operation$LifecycleImpact.ADDING;
            }
        } else if (ordinal != 2) {
        } else {
            if (AbstractC0220p0.H(2)) {
                Log.v("FragmentManager", "SpecialEffectsController: For fragment " + k4 + " mFinalState = " + this.f3332a + " -> REMOVED. mLifecycleImpact  = " + this.f3333b + " to REMOVING.");
            }
            this.f3332a = specialEffectsController$Operation$State2;
            this.f3333b = SpecialEffectsController$Operation$LifecycleImpact.REMOVING;
        }
    }

    public void d() {
    }

    public final String toString() {
        String hexString = Integer.toHexString(System.identityHashCode(this));
        return "Operation {" + hexString + "} {finalState = " + this.f3332a + " lifecycleImpact = " + this.f3333b + " fragment = " + this.f3334c + '}';
    }
}
