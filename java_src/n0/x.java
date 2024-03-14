package n0;

import java.util.Collections;
import x0.C1456a;
/* loaded from: classes.dex */
public final class x extends f {

    /* renamed from: i  reason: collision with root package name */
    public final Object f11801i;

    public x(x0.c cVar, Object obj) {
        super(Collections.emptyList());
        k(cVar);
        this.f11801i = obj;
    }

    @Override // n0.f
    public final float c() {
        return 1.0f;
    }

    @Override // n0.f
    public final Object f() {
        x0.c cVar = this.f11751e;
        Object obj = this.f11801i;
        float f4 = this.f11750d;
        return cVar.b(0.0f, 0.0f, obj, obj, f4, f4, f4);
    }

    @Override // n0.f
    public final Object g(C1456a c1456a, float f4) {
        return f();
    }

    @Override // n0.f
    public final void i() {
        if (this.f11751e != null) {
            super.i();
        }
    }

    @Override // n0.f
    public final void j(float f4) {
        this.f11750d = f4;
    }
}
