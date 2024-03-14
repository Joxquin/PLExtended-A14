package n0;

import android.graphics.PointF;
import x0.C1456a;
/* loaded from: classes.dex */
public final class l extends m {
    @Override // n0.f
    public final Object g(C1456a c1456a, float f4) {
        return Integer.valueOf(l(c1456a, f4));
    }

    public final int l(C1456a c1456a, float f4) {
        Integer num;
        Object obj = c1456a.f12808b;
        if (obj == null || c1456a.f12809c == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        x0.c cVar = this.f11751e;
        if (cVar == null || (num = (Integer) cVar.b(c1456a.f12813g, c1456a.f12814h.floatValue(), (Integer) obj, (Integer) c1456a.f12809c, f4, e(), this.f11750d)) == null) {
            if (c1456a.f12817k == 784923401) {
                c1456a.f12817k = ((Integer) obj).intValue();
            }
            int i4 = c1456a.f12817k;
            if (c1456a.f12818l == 784923401) {
                c1456a.f12818l = ((Integer) c1456a.f12809c).intValue();
            }
            int i5 = c1456a.f12818l;
            PointF pointF = w0.f.f12733a;
            return (int) ((f4 * (i5 - i4)) + i4);
        }
        return num.intValue();
    }
}
