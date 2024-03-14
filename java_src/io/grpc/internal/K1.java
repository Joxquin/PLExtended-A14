package io.grpc.internal;
/* loaded from: classes.dex */
public final class K1 extends X2.V {

    /* renamed from: a  reason: collision with root package name */
    public final X2.W f9927a;

    public K1(X2.W w4) {
        O2.m.h(w4, "result");
        this.f9927a = w4;
    }

    @Override // X2.V
    public final X2.W e() {
        return this.f9927a;
    }

    public final String toString() {
        O2.i iVar = new O2.i(K1.class.getSimpleName());
        iVar.a(this.f9927a, "result");
        return iVar.toString();
    }
}
