package io.grpc.internal;
/* loaded from: classes.dex */
public final class H2 implements H1 {

    /* renamed from: a  reason: collision with root package name */
    public final F2 f9914a;

    public H2(C1033n0 c1033n0) {
        this.f9914a = c1033n0;
    }

    @Override // io.grpc.internal.H1
    public final Object a() {
        return G2.a(this.f9914a);
    }

    @Override // io.grpc.internal.H1
    public final void b(Object obj) {
        G2.b(this.f9914a, obj);
    }
}
