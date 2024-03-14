package m0;

import android.graphics.PointF;
import java.util.ArrayList;
import java.util.List;
import n0.InterfaceC1313a;
import p0.C1339a;
/* loaded from: classes.dex */
public final class r implements t, InterfaceC1313a {

    /* renamed from: a  reason: collision with root package name */
    public final com.airbnb.lottie.a f11707a;

    /* renamed from: b  reason: collision with root package name */
    public final n0.f f11708b;

    /* renamed from: c  reason: collision with root package name */
    public r0.m f11709c;

    public r(com.airbnb.lottie.a aVar, s0.b bVar, r0.l lVar) {
        this.f11707a = aVar;
        lVar.getClass();
        n0.f a4 = lVar.f12124a.a();
        this.f11708b = a4;
        bVar.d(a4);
        a4.a(this);
    }

    public static int d(int i4, int i5) {
        int i6 = i4 / i5;
        if ((i4 ^ i5) < 0 && i5 * i6 != i4) {
            i6--;
        }
        return i4 - (i6 * i5);
    }

    @Override // n0.InterfaceC1313a
    public final void b() {
        this.f11707a.invalidateSelf();
    }

    @Override // m0.InterfaceC1303d
    public final void c(List list, List list2) {
    }

    @Override // m0.t
    public final r0.m i(r0.m mVar) {
        ArrayList arrayList;
        float f4;
        boolean z4;
        int i4;
        r0.m mVar2 = mVar;
        ArrayList arrayList2 = (ArrayList) mVar2.f12125a;
        if (arrayList2.size() <= 2) {
            return mVar2;
        }
        float floatValue = ((Float) this.f11708b.f()).floatValue();
        if (floatValue == 0.0f) {
            return mVar2;
        }
        List list = mVar2.f12125a;
        boolean z5 = mVar2.f12127c;
        ArrayList arrayList3 = (ArrayList) list;
        int i5 = 1;
        int size = arrayList3.size() - 1;
        int i6 = 0;
        int i7 = 0;
        while (size >= 0) {
            C1339a c1339a = (C1339a) arrayList3.get(size);
            int i8 = size - 1;
            C1339a c1339a2 = (C1339a) arrayList3.get(d(i8, arrayList3.size()));
            PointF pointF = (size != 0 || z5) ? c1339a2.f11899c : mVar2.f12126b;
            i7 = (((size != 0 || z5) ? c1339a2.f11898b : pointF).equals(pointF) && c1339a.f11897a.equals(pointF) && !(!mVar2.f12127c && size == 0 && size == arrayList3.size() - 1)) ? i7 + 2 : i7 + 1;
            size = i8;
        }
        r0.m mVar3 = this.f11709c;
        if (mVar3 == null || ((ArrayList) mVar3.f12125a).size() != i7) {
            ArrayList arrayList4 = new ArrayList(i7);
            for (int i9 = 0; i9 < i7; i9++) {
                arrayList4.add(new C1339a());
            }
            this.f11709c = new r0.m(new PointF(0.0f, 0.0f), false, arrayList4);
        }
        r0.m mVar4 = this.f11709c;
        mVar4.f12127c = z5;
        PointF pointF2 = mVar2.f12126b;
        mVar4.a(pointF2.x, pointF2.y);
        List list2 = mVar4.f12125a;
        boolean z6 = mVar2.f12127c;
        int i10 = 0;
        while (i6 < arrayList2.size()) {
            C1339a c1339a3 = (C1339a) arrayList2.get(i6);
            C1339a c1339a4 = (C1339a) arrayList2.get(d(i6 - 1, arrayList2.size()));
            C1339a c1339a5 = (C1339a) arrayList2.get(d(i6 - 2, arrayList2.size()));
            PointF pointF3 = (i6 != 0 || z6) ? c1339a4.f11899c : mVar2.f12126b;
            PointF pointF4 = (i6 != 0 || z6) ? c1339a4.f11898b : pointF3;
            PointF pointF5 = c1339a3.f11897a;
            PointF pointF6 = c1339a5.f11899c;
            i5 = (!mVar2.f12127c && i6 == 0 && i6 == arrayList2.size() - i5) ? 0 : 0;
            boolean equals = pointF4.equals(pointF3);
            PointF pointF7 = c1339a3.f11899c;
            if (equals && pointF5.equals(pointF3) && i5 == 0) {
                float f5 = pointF3.x;
                float f6 = f5 - pointF6.x;
                float f7 = pointF3.y;
                float f8 = f7 - pointF6.y;
                float f9 = pointF7.x - f5;
                float f10 = pointF7.y - f7;
                arrayList = arrayList2;
                i4 = i6;
                float min = Math.min(floatValue / ((float) Math.hypot(f6, f8)), 0.5f);
                float min2 = Math.min(floatValue / ((float) Math.hypot(f9, f10)), 0.5f);
                float f11 = pointF3.x;
                float a4 = w.f.a(pointF6.x, f11, min, f11);
                float f12 = pointF3.y;
                float a5 = w.f.a(pointF6.y, f12, min, f12);
                float a6 = w.f.a(pointF7.x, f11, min2, f11);
                float a7 = w.f.a(pointF7.y, f12, min2, f12);
                float f13 = a4 - ((a4 - f11) * 0.5519f);
                float f14 = a5 - ((a5 - f12) * 0.5519f);
                float f15 = a6 - ((a6 - f11) * 0.5519f);
                float f16 = a7 - ((a7 - f12) * 0.5519f);
                ArrayList arrayList5 = (ArrayList) list2;
                f4 = floatValue;
                C1339a c1339a6 = (C1339a) arrayList5.get(d(i10 - 1, arrayList5.size()));
                C1339a c1339a7 = (C1339a) arrayList5.get(i10);
                z4 = z6;
                c1339a6.f11898b.set(a4, a5);
                c1339a6.f11899c.set(a4, a5);
                if (i4 == 0) {
                    mVar4.a(a4, a5);
                }
                c1339a7.f11897a.set(f13, f14);
                i10++;
                c1339a7.f11898b.set(f15, f16);
                c1339a7.f11899c.set(a6, a7);
                ((C1339a) arrayList5.get(i10)).f11897a.set(a6, a7);
            } else {
                arrayList = arrayList2;
                f4 = floatValue;
                z4 = z6;
                i4 = i6;
                ArrayList arrayList6 = (ArrayList) list2;
                C1339a c1339a8 = (C1339a) arrayList6.get(d(i10 - 1, arrayList6.size()));
                PointF pointF8 = c1339a4.f11899c;
                c1339a8.f11898b.set(pointF8.x, pointF8.y);
                PointF pointF9 = c1339a4.f11899c;
                c1339a8.f11899c.set(pointF9.x, pointF9.y);
                ((C1339a) arrayList6.get(i10)).f11897a.set(pointF7.x, pointF7.y);
            }
            i10++;
            i6 = i4 + 1;
            i5 = 1;
            arrayList2 = arrayList;
            mVar2 = mVar;
            floatValue = f4;
            z6 = z4;
        }
        return mVar4;
    }
}
