package V;

import androidx.lifecycle.N;
import androidx.lifecycle.Q;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public final class c implements Q {

    /* renamed from: a  reason: collision with root package name */
    public final e[] f1780a;

    public c(e... initializers) {
        h.e(initializers, "initializers");
        this.f1780a = initializers;
    }

    @Override // androidx.lifecycle.Q
    public final N b(Class cls, d dVar) {
        e[] eVarArr;
        N n4 = null;
        for (e eVar : this.f1780a) {
            if (h.a(eVar.f1781a, cls)) {
                Object invoke = eVar.f1782b.invoke(dVar);
                n4 = invoke instanceof N ? (N) invoke : null;
            }
        }
        if (n4 != null) {
            return n4;
        }
        throw new IllegalArgumentException("No initializer set for given class ".concat(cls.getName()));
    }
}
