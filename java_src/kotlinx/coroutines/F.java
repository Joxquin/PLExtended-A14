package kotlinx.coroutines;
/* loaded from: classes.dex */
public final class F {

    /* renamed from: a  reason: collision with root package name */
    public static final G f11305a;

    static {
        G g4;
        String b4 = kotlinx.coroutines.internal.F.b("kotlinx.coroutines.main.delay");
        if (b4 != null ? Boolean.parseBoolean(b4) : false) {
            v3.d dVar = J.f11307a;
            k0 k0Var = kotlinx.coroutines.internal.v.f11495a;
            kotlin.jvm.internal.h.e(k0Var, "<this>");
            k0Var.D();
            g4 = !(k0Var instanceof G) ? E.f11302l : (G) k0Var;
        } else {
            g4 = E.f11302l;
        }
        f11305a = g4;
    }
}
