package n0;

import android.graphics.Path;
import android.graphics.PointF;
import k0.C1198m;
import x0.C1456a;
/* loaded from: classes.dex */
public final class o extends C1456a {

    /* renamed from: q  reason: collision with root package name */
    public Path f11767q;

    /* renamed from: r  reason: collision with root package name */
    public final C1456a f11768r;

    public o(C1198m c1198m, C1456a c1456a) {
        super(c1198m, (PointF) c1456a.f12808b, (PointF) c1456a.f12809c, c1456a.f12810d, c1456a.f12811e, c1456a.f12812f, c1456a.f12813g, c1456a.f12814h);
        this.f11768r = c1456a;
        d();
    }

    public final void d() {
        Object obj;
        Object obj2 = this.f12809c;
        Object obj3 = this.f12808b;
        boolean z4 = (obj2 == null || obj3 == null || !((PointF) obj3).equals(((PointF) obj2).x, ((PointF) obj2).y)) ? false : true;
        if (obj3 == null || (obj = this.f12809c) == null || z4) {
            return;
        }
        PointF pointF = (PointF) obj3;
        PointF pointF2 = (PointF) obj;
        C1456a c1456a = this.f11768r;
        PointF pointF3 = c1456a.f12821o;
        PointF pointF4 = c1456a.f12822p;
        w0.g gVar = w0.h.f12735a;
        Path path = new Path();
        path.moveTo(pointF.x, pointF.y);
        if (pointF3 == null || pointF4 == null || (pointF3.length() == 0.0f && pointF4.length() == 0.0f)) {
            path.lineTo(pointF2.x, pointF2.y);
        } else {
            float f4 = pointF.x;
            float f5 = pointF2.x;
            float f6 = pointF2.y;
            path.cubicTo(pointF3.x + f4, pointF.y + pointF3.y, f5 + pointF4.x, f6 + pointF4.y, f5, f6);
        }
        this.f11767q = path;
    }
}
