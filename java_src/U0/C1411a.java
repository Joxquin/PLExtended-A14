package u0;

import com.airbnb.lottie.parser.moshi.JsonReader$Token;
import java.util.ArrayList;
import k0.C1198m;
import q0.C1360b;
import v0.C1430a;
import x0.C1456a;
/* renamed from: u0.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1411a {

    /* renamed from: a  reason: collision with root package name */
    public static final C1430a f12382a = C1430a.a("k", "x", "y");

    public static q0.e a(com.airbnb.lottie.parser.moshi.b bVar, C1198m c1198m) {
        ArrayList arrayList = new ArrayList();
        if (bVar.n() == JsonReader$Token.BEGIN_ARRAY) {
            bVar.a();
            while (bVar.h()) {
                arrayList.add(new n0.o(c1198m, t.b(bVar, c1198m, w0.h.c(), y.f12431a, bVar.n() == JsonReader$Token.BEGIN_OBJECT, false)));
            }
            bVar.c();
            u.b(arrayList);
        } else {
            arrayList.add(new C1456a(s.b(bVar, w0.h.c())));
        }
        return new q0.e(arrayList);
    }

    public static q0.m b(com.airbnb.lottie.parser.moshi.b bVar, C1198m c1198m) {
        bVar.b();
        q0.e eVar = null;
        C1360b c1360b = null;
        boolean z4 = false;
        C1360b c1360b2 = null;
        while (bVar.n() != JsonReader$Token.END_OBJECT) {
            int r4 = bVar.r(f12382a);
            if (r4 != 0) {
                JsonReader$Token jsonReader$Token = JsonReader$Token.STRING;
                if (r4 != 1) {
                    if (r4 != 2) {
                        bVar.t();
                        bVar.u();
                    } else if (bVar.n() == jsonReader$Token) {
                        bVar.u();
                        z4 = true;
                    } else {
                        c1360b = C1414d.b(bVar, c1198m, true);
                    }
                } else if (bVar.n() == jsonReader$Token) {
                    bVar.u();
                    z4 = true;
                } else {
                    c1360b2 = C1414d.b(bVar, c1198m, true);
                }
            } else {
                eVar = a(bVar, c1198m);
            }
        }
        bVar.d();
        if (z4) {
            c1198m.a("Lottie doesn't support expressions.");
        }
        return eVar != null ? eVar : new q0.i(c1360b2, c1360b);
    }
}
