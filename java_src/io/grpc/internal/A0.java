package io.grpc.internal;
/* loaded from: classes.dex */
public final class A0 implements InterfaceC1055v {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ InterfaceC1055v f9819a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ B0 f9820b;

    public A0(B0 b02, InterfaceC1055v interfaceC1055v) {
        this.f9820b = b02;
        this.f9819a = interfaceC1055v;
    }

    @Override // io.grpc.internal.InterfaceC1055v
    public final void a() {
        this.f9819a.a();
    }

    @Override // io.grpc.internal.InterfaceC1055v
    public final void b(X2.r0 r0Var) {
        this.f9819a.b(r0Var);
    }

    @Override // io.grpc.internal.InterfaceC1055v
    public final void c(io.grpc.binder.internal.e eVar) {
        this.f9819a.c(eVar);
    }

    @Override // io.grpc.internal.InterfaceC1055v
    public final void d(X2.L0 l02, ClientStreamListener$RpcProgress clientStreamListener$RpcProgress, X2.r0 r0Var) {
        C1021k c1021k = this.f9820b.f9833b.f9837e;
        if (l02.d()) {
            c1021k.f10153c.a();
        } else {
            c1021k.f10154d.a();
        }
        this.f9819a.d(l02, clientStreamListener$RpcProgress, r0Var);
    }

    /* renamed from: e */
    public final String toString() {
        O2.i b4 = O2.j.b(this);
        b4.a(this.f9819a, "delegate");
        return b4.toString();
    }
}
