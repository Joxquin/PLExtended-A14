package n0;

import android.graphics.Path;
import android.graphics.PointF;
import java.util.ArrayList;
import java.util.List;
import p0.C1339a;
import w0.C1446c;
import x0.C1456a;
/* loaded from: classes.dex */
public final class s extends f {

    /* renamed from: i  reason: collision with root package name */
    public final r0.m f11775i;

    /* renamed from: j  reason: collision with root package name */
    public final Path f11776j;

    /* renamed from: k  reason: collision with root package name */
    public List f11777k;

    public s(List list) {
        super(list);
        this.f11775i = new r0.m();
        this.f11776j = new Path();
    }

    @Override // n0.f
    public final Object g(C1456a c1456a, float f4) {
        r0.m mVar = (r0.m) c1456a.f12808b;
        r0.m mVar2 = (r0.m) c1456a.f12809c;
        r0.m mVar3 = this.f11775i;
        if (mVar3.f12126b == null) {
            mVar3.f12126b = new PointF();
        }
        int i4 = 0;
        mVar3.f12127c = mVar.f12127c || mVar2.f12127c;
        ArrayList arrayList = (ArrayList) mVar.f12125a;
        int size = arrayList.size();
        int size2 = ((ArrayList) mVar2.f12125a).size();
        List list = mVar2.f12125a;
        if (size != size2) {
            C1446c.b("Curves must have the same number of control points. Shape 1: " + arrayList.size() + "\tShape 2: " + ((ArrayList) list).size());
        }
        ArrayList arrayList2 = (ArrayList) list;
        int min = Math.min(arrayList.size(), arrayList2.size());
        ArrayList arrayList3 = (ArrayList) mVar3.f12125a;
        if (arrayList3.size() < min) {
            for (int size3 = arrayList3.size(); size3 < min; size3++) {
                arrayList3.add(new C1339a());
            }
        } else if (arrayList3.size() > min) {
            for (int size4 = arrayList3.size() - 1; size4 >= min; size4--) {
                arrayList3.remove(arrayList3.size() - 1);
            }
        }
        PointF pointF = mVar.f12126b;
        PointF pointF2 = mVar2.f12126b;
        float f5 = pointF.x;
        float f6 = pointF2.x;
        PointF pointF3 = w0.f.f12733a;
        float a4 = w.f.a(f6, f5, f4, f5);
        float f7 = pointF.y;
        mVar3.a(a4, ((pointF2.y - f7) * f4) + f7);
        for (int size5 = arrayList3.size() - 1; size5 >= 0; size5--) {
            C1339a c1339a = (C1339a) arrayList.get(size5);
            C1339a c1339a2 = (C1339a) arrayList2.get(size5);
            PointF pointF4 = c1339a.f11897a;
            PointF pointF5 = c1339a2.f11897a;
            float f8 = pointF4.x;
            float a5 = w.f.a(pointF5.x, f8, f4, f8);
            float f9 = pointF4.y;
            ((C1339a) arrayList3.get(size5)).f11897a.set(a5, w.f.a(pointF5.y, f9, f4, f9));
            PointF pointF6 = c1339a.f11898b;
            float f10 = pointF6.x;
            PointF pointF7 = c1339a2.f11898b;
            float a6 = w.f.a(pointF7.x, f10, f4, f10);
            float f11 = pointF6.y;
            ((C1339a) arrayList3.get(size5)).f11898b.set(a6, w.f.a(pointF7.y, f11, f4, f11));
            PointF pointF8 = c1339a.f11899c;
            float f12 = pointF8.x;
            PointF pointF9 = c1339a2.f11899c;
            float a7 = w.f.a(pointF9.x, f12, f4, f12);
            float f13 = pointF8.y;
            ((C1339a) arrayList3.get(size5)).f11899c.set(a7, w.f.a(pointF9.y, f13, f4, f13));
        }
        List list2 = this.f11777k;
        if (list2 != null) {
            for (int size6 = list2.size() - 1; size6 >= 0; size6--) {
                mVar3 = ((m0.t) this.f11777k.get(size6)).i(mVar3);
            }
        }
        Path path = this.f11776j;
        path.reset();
        PointF pointF10 = mVar3.f12126b;
        path.moveTo(pointF10.x, pointF10.y);
        PointF pointF11 = w0.f.f12733a;
        pointF11.set(pointF10.x, pointF10.y);
        while (true) {
            ArrayList arrayList4 = (ArrayList) mVar3.f12125a;
            if (i4 >= arrayList4.size()) {
                break;
            }
            C1339a c1339a3 = (C1339a) arrayList4.get(i4);
            PointF pointF12 = c1339a3.f11897a;
            boolean equals = pointF12.equals(pointF11);
            PointF pointF13 = c1339a3.f11898b;
            PointF pointF14 = c1339a3.f11899c;
            if (equals && pointF13.equals(pointF14)) {
                path.lineTo(pointF14.x, pointF14.y);
            } else {
                path.cubicTo(pointF12.x, pointF12.y, pointF13.x, pointF13.y, pointF14.x, pointF14.y);
            }
            pointF11.set(pointF14.x, pointF14.y);
            i4++;
        }
        if (mVar3.f12127c) {
            path.close();
        }
        return path;
    }
}
