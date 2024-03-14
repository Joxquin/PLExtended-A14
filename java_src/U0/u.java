package u0;

import com.airbnb.lottie.parser.moshi.JsonReader$Token;
import java.util.ArrayList;
import java.util.List;
import k0.C1198m;
import v0.C1430a;
import x0.C1456a;
/* loaded from: classes.dex */
public final class u {

    /* renamed from: a  reason: collision with root package name */
    public static final C1430a f12422a = C1430a.a("k");

    public static List a(com.airbnb.lottie.parser.moshi.a aVar, C1198m c1198m, float f4, L l4, boolean z4) {
        ArrayList arrayList = new ArrayList();
        if (aVar.n() == JsonReader$Token.STRING) {
            c1198m.a("Lottie doesn't support expressions.");
            return arrayList;
        }
        aVar.b();
        while (aVar.h()) {
            if (aVar.r(f12422a) != 0) {
                aVar.u();
            } else if (aVar.n() == JsonReader$Token.BEGIN_ARRAY) {
                aVar.a();
                if (aVar.n() == JsonReader$Token.NUMBER) {
                    arrayList.add(t.b(aVar, c1198m, f4, l4, false, z4));
                } else {
                    while (aVar.h()) {
                        arrayList.add(t.b(aVar, c1198m, f4, l4, true, z4));
                    }
                }
                aVar.c();
            } else {
                arrayList.add(t.b(aVar, c1198m, f4, l4, false, z4));
            }
        }
        aVar.d();
        b(arrayList);
        return arrayList;
    }

    public static void b(List list) {
        int i4;
        Object obj;
        ArrayList arrayList = (ArrayList) list;
        int size = arrayList.size();
        int i5 = 0;
        while (true) {
            i4 = size - 1;
            if (i5 >= i4) {
                break;
            }
            C1456a c1456a = (C1456a) arrayList.get(i5);
            i5++;
            C1456a c1456a2 = (C1456a) arrayList.get(i5);
            c1456a.f12814h = Float.valueOf(c1456a2.f12813g);
            if (c1456a.f12809c == null && (obj = c1456a2.f12808b) != null) {
                c1456a.f12809c = obj;
                if (c1456a instanceof n0.o) {
                    ((n0.o) c1456a).d();
                }
            }
        }
        C1456a c1456a3 = (C1456a) arrayList.get(i4);
        if ((c1456a3.f12808b == null || c1456a3.f12809c == null) && arrayList.size() > 1) {
            arrayList.remove(c1456a3);
        }
    }
}
