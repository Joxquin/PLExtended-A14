package kotlinx.coroutines;

import kotlin.coroutines.intrinsics.CoroutineSingletons;
/* loaded from: classes.dex */
public final class C {
    public static final Object a(m3.p pVar, kotlin.coroutines.c cVar) {
        Object c1252q;
        Object R3;
        V v4;
        kotlinx.coroutines.internal.A a4 = new kotlinx.coroutines.internal.A(cVar, cVar.getContext());
        try {
            kotlin.jvm.internal.l.a(2, pVar);
            c1252q = pVar.invoke(a4, a4);
        } catch (Throwable th) {
            c1252q = new C1252q(th, false);
        }
        Object obj = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (c1252q == obj || (R3 = a4.R(c1252q)) == i0.f11433b) {
            return obj;
        }
        if (R3 instanceof C1252q) {
            throw ((C1252q) R3).f11508a;
        }
        W w4 = R3 instanceof W ? (W) R3 : null;
        return (w4 == null || (v4 = w4.f11325a) == null) ? R3 : v4;
    }
}
