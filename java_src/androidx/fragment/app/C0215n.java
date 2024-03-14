package androidx.fragment.app;

import android.transition.Transition;
/* renamed from: androidx.fragment.app.n  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0215n extends C0213m {

    /* renamed from: c  reason: collision with root package name */
    public final Object f3435c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f3436d;

    /* renamed from: e  reason: collision with root package name */
    public final Object f3437e;

    public C0215n(S0 s02, I.d dVar, boolean z4, boolean z5) {
        super(s02, dVar);
        SpecialEffectsController$Operation$State specialEffectsController$Operation$State = s02.f3332a;
        SpecialEffectsController$Operation$State specialEffectsController$Operation$State2 = SpecialEffectsController$Operation$State.VISIBLE;
        K k4 = s02.f3334c;
        this.f3435c = specialEffectsController$Operation$State == specialEffectsController$Operation$State2 ? z4 ? k4.getReenterTransition() : k4.getEnterTransition() : z4 ? k4.getReturnTransition() : k4.getExitTransition();
        this.f3436d = s02.f3332a == specialEffectsController$Operation$State2 ? z4 ? k4.getAllowReturnTransitionOverlap() : k4.getAllowEnterTransitionOverlap() : true;
        this.f3437e = z5 ? z4 ? k4.getSharedElementReturnTransition() : k4.getSharedElementEnterTransition() : null;
    }

    public final J0 c() {
        Object obj = this.f3435c;
        J0 d4 = d(obj);
        Object obj2 = this.f3437e;
        J0 d5 = d(obj2);
        if (d4 == null || d5 == null || d4 == d5) {
            return d4 == null ? d5 : d4;
        }
        throw new IllegalArgumentException(("Mixing framework transitions and AndroidX transitions is not allowed. Fragment " + this.f3431a.f3334c + " returned Transition " + obj + " which uses a different Transition  type than its shared element transition " + obj2).toString());
    }

    public final J0 d(Object obj) {
        if (obj == null) {
            return null;
        }
        H0 h02 = C0.f3244a;
        if (h02 == null || !(obj instanceof Transition)) {
            J0 j02 = C0.f3245b;
            if (j02 == null || !j02.e(obj)) {
                throw new IllegalArgumentException("Transition " + obj + " for fragment " + this.f3431a.f3334c + " is not a valid framework Transition or AndroidX Transition");
            }
            return j02;
        }
        return h02;
    }
}
