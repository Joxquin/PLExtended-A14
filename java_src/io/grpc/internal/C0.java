package io.grpc.internal;

import X2.C0115g;
/* loaded from: classes.dex */
public final class C0 extends AbstractC1018j0 {

    /* renamed from: d  reason: collision with root package name */
    public final InterfaceC1067z f9836d;

    /* renamed from: e  reason: collision with root package name */
    public final C1021k f9837e;

    public C0(InterfaceC1067z interfaceC1067z, C1021k c1021k) {
        this.f9836d = interfaceC1067z;
        this.f9837e = c1021k;
    }

    @Override // io.grpc.internal.AbstractC1018j0
    public final InterfaceC1067z a() {
        return this.f9836d;
    }

    @Override // io.grpc.internal.InterfaceC1058w
    public final InterfaceC1052u c(X2.u0 u0Var, X2.r0 r0Var, C0115g c0115g, X2.r[] rVarArr) {
        return new B0(this, a().c(u0Var, r0Var, c0115g, rVarArr));
    }
}
