package n0;

import android.graphics.PointF;
import java.util.List;
import x0.C1456a;
/* loaded from: classes.dex */
public final class r extends m {

    /* renamed from: i  reason: collision with root package name */
    public final x0.d f11774i;

    public r(List list) {
        super(list);
        this.f11774i = new x0.d();
    }

    @Override // n0.f
    public final Object g(C1456a c1456a, float f4) {
        Object obj;
        x0.d dVar;
        Object obj2 = c1456a.f12808b;
        if (obj2 == null || (obj = c1456a.f12809c) == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        x0.d dVar2 = (x0.d) obj2;
        x0.d dVar3 = (x0.d) obj;
        x0.c cVar = this.f11751e;
        if (cVar == null || (dVar = (x0.d) cVar.b(c1456a.f12813g, c1456a.f12814h.floatValue(), dVar2, dVar3, f4, e(), this.f11750d)) == null) {
            float f5 = dVar2.f12832a;
            float f6 = dVar3.f12832a;
            PointF pointF = w0.f.f12733a;
            float a4 = w.f.a(f6, f5, f4, f5);
            float f7 = dVar2.f12833b;
            float a5 = w.f.a(dVar3.f12833b, f7, f4, f7);
            x0.d dVar4 = this.f11774i;
            dVar4.f12832a = a4;
            dVar4.f12833b = a5;
            return dVar4;
        }
        return dVar;
    }
}
