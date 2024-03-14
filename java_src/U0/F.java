package u0;

import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.JsonReader$Token;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p0.C1339a;
import v0.C1430a;
/* loaded from: classes.dex */
public final class F implements L {

    /* renamed from: a  reason: collision with root package name */
    public static final F f12374a = new F();

    /* renamed from: b  reason: collision with root package name */
    public static final C1430a f12375b = C1430a.a("c", "v", "i", "o");

    @Override // u0.L
    public final Object a(com.airbnb.lottie.parser.moshi.a aVar, float f4) {
        if (aVar.n() == JsonReader$Token.BEGIN_ARRAY) {
            aVar.a();
        }
        aVar.b();
        List list = null;
        List list2 = null;
        List list3 = null;
        boolean z4 = false;
        while (aVar.h()) {
            int r4 = aVar.r(f12375b);
            if (r4 == 0) {
                z4 = aVar.i();
            } else if (r4 == 1) {
                list = s.c(aVar, f4);
            } else if (r4 == 2) {
                list2 = s.c(aVar, f4);
            } else if (r4 != 3) {
                aVar.t();
                aVar.u();
            } else {
                list3 = s.c(aVar, f4);
            }
        }
        aVar.d();
        if (aVar.n() == JsonReader$Token.END_ARRAY) {
            aVar.c();
        }
        if (list == null || list2 == null || list3 == null) {
            throw new IllegalArgumentException("Shape data was missing information.");
        }
        if (list.isEmpty()) {
            return new r0.m(new PointF(), false, Collections.emptyList());
        }
        int size = list.size();
        PointF pointF = (PointF) list.get(0);
        ArrayList arrayList = new ArrayList(size);
        for (int i4 = 1; i4 < size; i4++) {
            PointF pointF2 = (PointF) list.get(i4);
            int i5 = i4 - 1;
            arrayList.add(new C1339a(w0.f.a((PointF) list.get(i5), (PointF) list3.get(i5)), w0.f.a(pointF2, (PointF) list2.get(i4)), pointF2));
        }
        if (z4) {
            PointF pointF3 = (PointF) list.get(0);
            int i6 = size - 1;
            arrayList.add(new C1339a(w0.f.a((PointF) list.get(i6), (PointF) list3.get(i6)), w0.f.a(pointF3, (PointF) list2.get(0)), pointF3));
        }
        return new r0.m(pointF, z4, arrayList);
    }
}
