package kotlinx.coroutines;

import kotlinx.coroutines.internal.C1240g;
import kotlinx.coroutines.internal.C1241h;
/* renamed from: kotlinx.coroutines.j  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1245j {
    public static final C1232h a(kotlin.coroutines.c cVar) {
        C1232h c1232h;
        boolean z4 = true;
        if (cVar instanceof C1240g) {
            C1240g c1240g = (C1240g) cVar;
            t3.f fVar = c1240g.f11468k;
            while (true) {
                Object obj = fVar.f12366b;
                if (obj == null) {
                    c1240g.f11468k.d(C1241h.f11470b);
                    c1232h = null;
                    break;
                } else if (obj instanceof C1232h) {
                    if (c1240g.f11468k.a(obj, C1241h.f11470b)) {
                        c1232h = (C1232h) obj;
                        break;
                    }
                } else if (obj != C1241h.f11470b && !(obj instanceof Throwable)) {
                    throw new IllegalStateException(("Inconsistent state " + obj).toString());
                }
            }
            if (c1232h != null) {
                Object obj2 = c1232h.f11427j.f12366b;
                if (!(obj2 instanceof C1251p) || ((C1251p) obj2).f11505d == null) {
                    c1232h.f11426i.d(536870911);
                    c1232h.f11427j.d(C1226b.f11332d);
                } else {
                    c1232h.m();
                    z4 = false;
                }
                C1232h c1232h2 = z4 ? c1232h : null;
                if (c1232h2 != null) {
                    return c1232h2;
                }
            }
            return new C1232h(2, cVar);
        }
        return new C1232h(1, cVar);
    }
}
