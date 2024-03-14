package io.grpc.internal;
/* loaded from: classes.dex */
public final class V0 extends X2.V {

    /* renamed from: a  reason: collision with root package name */
    public final X2.W f10013a;

    public V0(Throwable th) {
        X2.L0 e4 = X2.L0.f2134m.f("Panic! This is a bug!").e(th);
        X2.W w4 = X2.W.f2169e;
        O2.m.b("drop status shouldn't be OK", !e4.d());
        this.f10013a = new X2.W(null, e4, true);
    }

    @Override // X2.V
    public final X2.W e() {
        return this.f10013a;
    }

    public final String toString() {
        O2.i iVar = new O2.i(V0.class.getSimpleName());
        iVar.a(this.f10013a, "panicPickResult");
        return iVar.toString();
    }
}
