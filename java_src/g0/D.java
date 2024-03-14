package g0;
/* loaded from: classes.dex */
public final class D extends y {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f9367d;

    /* renamed from: e  reason: collision with root package name */
    public final E f9368e;

    public D(E e4, int i4) {
        this.f9367d = i4;
        if (i4 != 1) {
            this.f9368e = e4;
        } else {
            this.f9368e = e4;
        }
    }

    @Override // g0.y, g0.InterfaceC0951u
    public final void a(x xVar) {
        switch (this.f9367d) {
            case 1:
                E e4 = this.f9368e;
                if (e4.f9372E) {
                    return;
                }
                e4.J();
                e4.f9372E = true;
                return;
            default:
                return;
        }
    }

    @Override // g0.y, g0.InterfaceC0951u
    public final void f(x xVar) {
        switch (this.f9367d) {
            case 0:
                E e4 = this.f9368e;
                e4.f9369B.remove(xVar);
                if (e4.t()) {
                    return;
                }
                e4.x(w.f9445c);
                e4.f9467t = true;
                e4.x(w.f9444b);
                return;
            default:
                return;
        }
    }

    @Override // g0.InterfaceC0951u
    public final void g(x xVar) {
        switch (this.f9367d) {
            case 1:
                E e4 = this.f9368e;
                int i4 = e4.f9371D - 1;
                e4.f9371D = i4;
                if (i4 == 0) {
                    e4.f9372E = false;
                    e4.n();
                }
                xVar.z(this);
                return;
            default:
                return;
        }
    }
}
