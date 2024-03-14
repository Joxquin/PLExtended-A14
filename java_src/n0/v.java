package n0;

import p0.C1340b;
import x0.C1456a;
/* loaded from: classes.dex */
public final class v extends m {
    @Override // n0.f
    public final Object g(C1456a c1456a, float f4) {
        Object obj;
        x0.c cVar = this.f11751e;
        Object obj2 = c1456a.f12808b;
        if (cVar == null) {
            return (f4 != 1.0f || (obj = c1456a.f12809c) == null) ? (C1340b) obj2 : (C1340b) obj;
        }
        float f5 = c1456a.f12813g;
        Float f6 = c1456a.f12814h;
        float floatValue = f6 == null ? Float.MAX_VALUE : f6.floatValue();
        C1340b c1340b = (C1340b) obj2;
        Object obj3 = c1456a.f12809c;
        return (C1340b) cVar.b(f5, floatValue, c1340b, obj3 == null ? c1340b : (C1340b) obj3, f4, d(), this.f11750d);
    }
}
