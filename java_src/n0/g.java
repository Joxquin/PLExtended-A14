package n0;

import w0.C1444a;
import x0.C1456a;
/* loaded from: classes.dex */
public final class g extends m {
    @Override // n0.f
    public final Object g(C1456a c1456a, float f4) {
        return Integer.valueOf(l(c1456a, f4));
    }

    public final int l(C1456a c1456a, float f4) {
        Integer num;
        if (c1456a.f12808b == null || c1456a.f12809c == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        x0.c cVar = this.f11751e;
        Object obj = c1456a.f12808b;
        return (cVar == null || (num = (Integer) cVar.b(c1456a.f12813g, c1456a.f12814h.floatValue(), (Integer) obj, (Integer) c1456a.f12809c, f4, e(), this.f11750d)) == null) ? C1444a.c(((Integer) obj).intValue(), ((Integer) c1456a.f12809c).intValue(), w0.f.b(f4, 0.0f, 1.0f)) : num.intValue();
    }
}
