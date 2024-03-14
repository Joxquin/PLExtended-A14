package n0;

import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.List;
import k0.C1189d;
import x0.C1456a;
/* loaded from: classes.dex */
public abstract class f {

    /* renamed from: c  reason: collision with root package name */
    public final InterfaceC1315c f11749c;

    /* renamed from: e  reason: collision with root package name */
    public x0.c f11751e;

    /* renamed from: a  reason: collision with root package name */
    public final List f11747a = new ArrayList(1);

    /* renamed from: b  reason: collision with root package name */
    public boolean f11748b = false;

    /* renamed from: d  reason: collision with root package name */
    public float f11750d = 0.0f;

    /* renamed from: f  reason: collision with root package name */
    public Object f11752f = null;

    /* renamed from: g  reason: collision with root package name */
    public float f11753g = -1.0f;

    /* renamed from: h  reason: collision with root package name */
    public float f11754h = -1.0f;

    public f(List list) {
        InterfaceC1315c eVar;
        if (list.isEmpty()) {
            eVar = new C1314b();
        } else {
            eVar = list.size() == 1 ? new e(list) : new C1316d(list);
        }
        this.f11749c = eVar;
    }

    public final void a(InterfaceC1313a interfaceC1313a) {
        ((ArrayList) this.f11747a).add(interfaceC1313a);
    }

    public final C1456a b() {
        C1456a d4 = this.f11749c.d();
        C1189d.a();
        return d4;
    }

    public float c() {
        if (this.f11754h == -1.0f) {
            this.f11754h = this.f11749c.a();
        }
        return this.f11754h;
    }

    public final float d() {
        C1456a b4 = b();
        if (b4 == null || b4.c()) {
            return 0.0f;
        }
        return b4.f12810d.getInterpolation(e());
    }

    public final float e() {
        if (this.f11748b) {
            return 0.0f;
        }
        C1456a b4 = b();
        if (b4.c()) {
            return 0.0f;
        }
        return (this.f11750d - b4.b()) / (b4.a() - b4.b());
    }

    public Object f() {
        Interpolator interpolator;
        float e4 = e();
        if (this.f11751e == null && this.f11749c.b(e4)) {
            return this.f11752f;
        }
        C1456a b4 = b();
        Interpolator interpolator2 = b4.f12811e;
        Object g4 = (interpolator2 == null || (interpolator = b4.f12812f) == null) ? g(b4, d()) : h(b4, e4, interpolator2.getInterpolation(e4), interpolator.getInterpolation(e4));
        this.f11752f = g4;
        return g4;
    }

    public abstract Object g(C1456a c1456a, float f4);

    public Object h(C1456a c1456a, float f4, float f5, float f6) {
        throw new UnsupportedOperationException("This animation does not support split dimensions!");
    }

    public void i() {
        int i4 = 0;
        while (true) {
            List list = this.f11747a;
            if (i4 >= ((ArrayList) list).size()) {
                return;
            }
            ((InterfaceC1313a) ((ArrayList) list).get(i4)).b();
            i4++;
        }
    }

    public void j(float f4) {
        InterfaceC1315c interfaceC1315c = this.f11749c;
        if (interfaceC1315c.isEmpty()) {
            return;
        }
        if (this.f11753g == -1.0f) {
            this.f11753g = interfaceC1315c.c();
        }
        float f5 = this.f11753g;
        if (f4 < f5) {
            if (f5 == -1.0f) {
                this.f11753g = interfaceC1315c.c();
            }
            f4 = this.f11753g;
        } else if (f4 > c()) {
            f4 = c();
        }
        if (f4 == this.f11750d) {
            return;
        }
        this.f11750d = f4;
        if (interfaceC1315c.e(f4)) {
            i();
        }
    }

    public final void k(x0.c cVar) {
        x0.c cVar2 = this.f11751e;
        if (cVar2 != null) {
            cVar2.getClass();
        }
        this.f11751e = cVar;
    }
}
