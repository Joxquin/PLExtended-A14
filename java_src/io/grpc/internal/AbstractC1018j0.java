package io.grpc.internal;
/* renamed from: io.grpc.internal.j0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1018j0 implements InterfaceC1067z {
    public abstract InterfaceC1067z a();

    @Override // io.grpc.internal.E1
    public final Runnable b(D1 d12) {
        return a().b(d12);
    }

    @Override // io.grpc.internal.E1
    public void d(X2.L0 l02) {
        a().d(l02);
    }

    @Override // X2.P
    public final X2.Q e() {
        return a().e();
    }

    @Override // io.grpc.internal.E1
    public void f(X2.L0 l02) {
        a().f(l02);
    }

    public final String toString() {
        O2.i b4 = O2.j.b(this);
        b4.a(a(), "delegate");
        return b4.toString();
    }
}
