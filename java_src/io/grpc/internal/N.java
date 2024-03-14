package io.grpc.internal;
/* loaded from: classes.dex */
public final class N extends W {

    /* renamed from: j  reason: collision with root package name */
    public final P1 f9952j;

    /* renamed from: k  reason: collision with root package name */
    public final X2.C f9953k = X2.C.b();

    /* renamed from: l  reason: collision with root package name */
    public final X2.r[] f9954l;

    /* renamed from: m  reason: collision with root package name */
    public final /* synthetic */ O f9955m;

    public N(O o4, P1 p12, X2.r[] rVarArr) {
        this.f9955m = o4;
        this.f9952j = p12;
        this.f9954l = rVarArr;
    }

    @Override // io.grpc.internal.W, io.grpc.internal.InterfaceC1052u
    public final void g(X2.L0 l02) {
        super.g(l02);
        synchronized (this.f9955m.f9960e) {
            O o4 = this.f9955m;
            if (o4.f9965j != null) {
                boolean remove = o4.f9967l.remove(this);
                if (!this.f9955m.g() && remove) {
                    O o5 = this.f9955m;
                    o5.f9962g.b(o5.f9964i);
                    O o6 = this.f9955m;
                    if (o6.f9968m != null) {
                        o6.f9962g.b(o6.f9965j);
                        this.f9955m.f9965j = null;
                    }
                }
            }
        }
        this.f9955m.f9962g.a();
    }

    @Override // io.grpc.internal.W, io.grpc.internal.InterfaceC1052u
    public final void k(C1053u0 c1053u0) {
        if (Boolean.TRUE.equals(this.f9952j.f9978a.f2198h)) {
            c1053u0.f10381a.add("wait_for_ready");
        }
        super.k(c1053u0);
    }

    @Override // io.grpc.internal.W
    public final void s(X2.L0 l02) {
        for (X2.r rVar : this.f9954l) {
            rVar.l(l02);
        }
    }
}
