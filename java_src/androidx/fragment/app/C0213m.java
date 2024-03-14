package androidx.fragment.app;

import android.view.View;
import java.util.Set;
/* renamed from: androidx.fragment.app.m  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0213m {

    /* renamed from: a  reason: collision with root package name */
    public final S0 f3431a;

    /* renamed from: b  reason: collision with root package name */
    public final I.d f3432b;

    public C0213m(S0 s02, I.d dVar) {
        this.f3431a = s02;
        this.f3432b = dVar;
    }

    public final void a() {
        S0 s02 = this.f3431a;
        s02.getClass();
        I.d signal = this.f3432b;
        kotlin.jvm.internal.h.e(signal, "signal");
        Set set = s02.f3336e;
        if (set.remove(signal) && set.isEmpty()) {
            s02.b();
        }
    }

    public final boolean b() {
        SpecialEffectsController$Operation$State specialEffectsController$Operation$State;
        S0 s02 = this.f3431a;
        View view = s02.f3334c.mView;
        kotlin.jvm.internal.h.d(view, "operation.fragment.mView");
        SpecialEffectsController$Operation$State a4 = P0.a(view);
        SpecialEffectsController$Operation$State specialEffectsController$Operation$State2 = s02.f3332a;
        return a4 == specialEffectsController$Operation$State2 || !(a4 == (specialEffectsController$Operation$State = SpecialEffectsController$Operation$State.VISIBLE) || specialEffectsController$Operation$State2 == specialEffectsController$Operation$State);
    }
}
