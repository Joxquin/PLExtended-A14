package io.grpc.internal;

import X2.C0115g;
/* renamed from: io.grpc.internal.i0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1014i0 implements InterfaceC1058w {

    /* renamed from: d  reason: collision with root package name */
    public final X2.L0 f10137d;

    /* renamed from: e  reason: collision with root package name */
    public final ClientStreamListener$RpcProgress f10138e;

    public C1014i0(X2.L0 l02, ClientStreamListener$RpcProgress clientStreamListener$RpcProgress) {
        O2.m.b("error must not be OK", !l02.d());
        this.f10137d = l02;
        this.f10138e = clientStreamListener$RpcProgress;
    }

    @Override // io.grpc.internal.InterfaceC1058w
    public final InterfaceC1052u c(X2.u0 u0Var, X2.r0 r0Var, C0115g c0115g, X2.r[] rVarArr) {
        return new C1010h0(this.f10137d, this.f10138e, rVarArr);
    }

    @Override // X2.P
    public final X2.Q e() {
        throw new UnsupportedOperationException("Not a real transport");
    }
}
