package n0;

import android.graphics.PointF;
import java.util.List;
import x0.C1456a;
/* loaded from: classes.dex */
public final class q extends m {

    /* renamed from: i  reason: collision with root package name */
    public final PointF f11773i;

    public q(List list) {
        super(list);
        this.f11773i = new PointF();
    }

    @Override // n0.f
    public final Object g(C1456a c1456a, float f4) {
        return h(c1456a, f4, f4, f4);
    }

    @Override // n0.f
    /* renamed from: l */
    public final PointF h(C1456a c1456a, float f4, float f5, float f6) {
        Object obj;
        PointF pointF;
        Object obj2 = c1456a.f12808b;
        if (obj2 == null || (obj = c1456a.f12809c) == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        PointF pointF2 = (PointF) obj2;
        PointF pointF3 = (PointF) obj;
        x0.c cVar = this.f11751e;
        if (cVar == null || (pointF = (PointF) cVar.b(c1456a.f12813g, c1456a.f12814h.floatValue(), pointF2, pointF3, f4, e(), this.f11750d)) == null) {
            PointF pointF4 = this.f11773i;
            float f7 = pointF2.x;
            float a4 = w.f.a(pointF3.x, f7, f5, f7);
            float f8 = pointF2.y;
            pointF4.set(a4, ((pointF3.y - f8) * f6) + f8);
            return pointF4;
        }
        return pointF;
    }
}
