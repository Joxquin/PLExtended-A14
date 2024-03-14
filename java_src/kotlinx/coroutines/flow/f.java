package kotlinx.coroutines.flow;

import m3.p;
/* loaded from: classes.dex */
public final class f {
    public static final d a(d dVar) {
        m3.l lVar = i.f11403a;
        kotlin.jvm.internal.h.e(dVar, "<this>");
        if (dVar instanceof k) {
            return dVar;
        }
        m3.l lVar2 = i.f11403a;
        p pVar = i.f11404b;
        if (dVar instanceof c) {
            c cVar = (c) dVar;
            if (cVar.f11400b == lVar2 && cVar.f11401c == pVar) {
                return dVar;
            }
        }
        return new c(dVar);
    }
}
