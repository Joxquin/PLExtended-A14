package n0;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import java.util.List;
import x0.C1456a;
/* loaded from: classes.dex */
public final class p extends m {

    /* renamed from: i  reason: collision with root package name */
    public final PointF f11769i;

    /* renamed from: j  reason: collision with root package name */
    public final float[] f11770j;

    /* renamed from: k  reason: collision with root package name */
    public final PathMeasure f11771k;

    /* renamed from: l  reason: collision with root package name */
    public o f11772l;

    public p(List list) {
        super(list);
        this.f11769i = new PointF();
        this.f11770j = new float[2];
        this.f11771k = new PathMeasure();
    }

    @Override // n0.f
    public final Object g(C1456a c1456a, float f4) {
        PointF pointF;
        o oVar = (o) c1456a;
        Path path = oVar.f11767q;
        if (path == null) {
            return (PointF) c1456a.f12808b;
        }
        x0.c cVar = this.f11751e;
        if (cVar == null || (pointF = (PointF) cVar.b(oVar.f12813g, oVar.f12814h.floatValue(), (PointF) oVar.f12808b, (PointF) oVar.f12809c, e(), f4, this.f11750d)) == null) {
            o oVar2 = this.f11772l;
            PathMeasure pathMeasure = this.f11771k;
            if (oVar2 != oVar) {
                pathMeasure.setPath(path, false);
                this.f11772l = oVar;
            }
            float[] fArr = this.f11770j;
            pathMeasure.getPosTan(pathMeasure.getLength() * f4, fArr, null);
            PointF pointF2 = this.f11769i;
            pointF2.set(fArr[0], fArr[1]);
            return pointF2;
        }
        return pointF;
    }
}
