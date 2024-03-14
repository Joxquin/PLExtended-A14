package io.grpc.internal;
/* renamed from: io.grpc.internal.h0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1010h0 extends G1 {

    /* renamed from: b  reason: collision with root package name */
    public boolean f10122b;

    /* renamed from: c  reason: collision with root package name */
    public final X2.L0 f10123c;

    /* renamed from: d  reason: collision with root package name */
    public final ClientStreamListener$RpcProgress f10124d;

    /* renamed from: e  reason: collision with root package name */
    public final X2.r[] f10125e;

    public C1010h0(X2.L0 l02, X2.r[] rVarArr) {
        this(l02, ClientStreamListener$RpcProgress.PROCESSED, rVarArr);
    }

    @Override // io.grpc.internal.G1, io.grpc.internal.InterfaceC1052u
    public final void c(InterfaceC1055v interfaceC1055v) {
        O2.m.k("already started", !this.f10122b);
        this.f10122b = true;
        X2.r[] rVarArr = this.f10125e;
        int length = rVarArr.length;
        int i4 = 0;
        while (true) {
            X2.L0 l02 = this.f10123c;
            if (i4 >= length) {
                interfaceC1055v.d(l02, this.f10124d, new X2.r0());
                return;
            }
            rVarArr[i4].l(l02);
            i4++;
        }
    }

    @Override // io.grpc.internal.G1, io.grpc.internal.InterfaceC1052u
    public final void k(C1053u0 c1053u0) {
        c1053u0.a(this.f10123c, "error");
        c1053u0.a(this.f10124d, "progress");
    }

    public C1010h0(X2.L0 l02, ClientStreamListener$RpcProgress clientStreamListener$RpcProgress, X2.r[] rVarArr) {
        O2.m.b("error must not be OK", !l02.d());
        this.f10123c = l02;
        this.f10124d = clientStreamListener$RpcProgress;
        this.f10125e = rVarArr;
    }
}
