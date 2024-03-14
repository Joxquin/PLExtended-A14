package n0;

import android.graphics.PointF;
import x0.C1456a;
/* loaded from: classes.dex */
public final class j extends m {
    @Override // n0.f
    public final Object g(C1456a c1456a, float f4) {
        return Float.valueOf(m(c1456a, f4));
    }

    public final float l() {
        return m(b(), d());
    }

    public final float m(C1456a c1456a, float f4) {
        Float f5;
        if (c1456a.f12808b == null || c1456a.f12809c == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        x0.c cVar = this.f11751e;
        Object obj = c1456a.f12808b;
        if (cVar == null || (f5 = (Float) cVar.b(c1456a.f12813g, c1456a.f12814h.floatValue(), (Float) obj, (Float) c1456a.f12809c, f4, e(), this.f11750d)) == null) {
            if (c1456a.f12815i == -3987645.8f) {
                c1456a.f12815i = ((Float) obj).floatValue();
            }
            float f6 = c1456a.f12815i;
            if (c1456a.f12816j == -3987645.8f) {
                c1456a.f12816j = ((Float) c1456a.f12809c).floatValue();
            }
            float f7 = c1456a.f12816j;
            PointF pointF = w0.f.f12733a;
            return w.f.a(f7, f6, f4, f6);
        }
        return f5.floatValue();
    }
}
