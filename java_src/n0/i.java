package n0;

import android.graphics.Color;
import l0.C1265a;
import u0.C1420j;
/* loaded from: classes.dex */
public final class i implements InterfaceC1313a {

    /* renamed from: a  reason: collision with root package name */
    public final InterfaceC1313a f11756a;

    /* renamed from: b  reason: collision with root package name */
    public final g f11757b;

    /* renamed from: c  reason: collision with root package name */
    public final j f11758c;

    /* renamed from: d  reason: collision with root package name */
    public final j f11759d;

    /* renamed from: e  reason: collision with root package name */
    public final j f11760e;

    /* renamed from: f  reason: collision with root package name */
    public final j f11761f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f11762g = true;

    public i(InterfaceC1313a interfaceC1313a, s0.b bVar, C1420j c1420j) {
        this.f11756a = interfaceC1313a;
        f a4 = c1420j.f12394a.a();
        this.f11757b = (g) a4;
        a4.a(this);
        bVar.d(a4);
        f a5 = c1420j.f12395b.a();
        this.f11758c = (j) a5;
        a5.a(this);
        bVar.d(a5);
        f a6 = c1420j.f12396c.a();
        this.f11759d = (j) a6;
        a6.a(this);
        bVar.d(a6);
        f a7 = c1420j.f12397d.a();
        this.f11760e = (j) a7;
        a7.a(this);
        bVar.d(a7);
        f a8 = c1420j.f12398e.a();
        this.f11761f = (j) a8;
        a8.a(this);
        bVar.d(a8);
    }

    public final void a(C1265a c1265a) {
        if (this.f11762g) {
            this.f11762g = false;
            double floatValue = ((Float) this.f11759d.f()).floatValue() * 0.017453292519943295d;
            float floatValue2 = ((Float) this.f11760e.f()).floatValue();
            float sin = ((float) Math.sin(floatValue)) * floatValue2;
            float cos = ((float) Math.cos(floatValue + 3.141592653589793d)) * floatValue2;
            int intValue = ((Integer) this.f11757b.f()).intValue();
            c1265a.setShadowLayer(((Float) this.f11761f.f()).floatValue(), sin, cos, Color.argb(Math.round(((Float) this.f11758c.f()).floatValue()), Color.red(intValue), Color.green(intValue), Color.blue(intValue)));
        }
    }

    @Override // n0.InterfaceC1313a
    public final void b() {
        this.f11762g = true;
        this.f11756a.b();
    }

    public final void c(x0.c cVar) {
        j jVar = this.f11758c;
        if (cVar == null) {
            jVar.k(null);
        } else {
            jVar.k(new h(cVar));
        }
    }
}
