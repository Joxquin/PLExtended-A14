package io.grpc.internal;
/* renamed from: io.grpc.internal.b1  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0987b1 implements D1 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C1048s1 f10060a;

    public /* synthetic */ C0987b1(C1048s1 c1048s1) {
        this.f10060a = c1048s1;
    }

    @Override // io.grpc.internal.D1
    public void a() {
        C1048s1 c1048s1 = this.f10060a;
        O2.m.k("Channel must have been shut down", c1048s1.f10301K.get());
        c1048s1.f10303M = true;
        c1048s1.q(false);
        C1048s1.j(c1048s1);
        C1048s1.k(c1048s1);
    }

    @Override // io.grpc.internal.D1
    public void b(X2.L0 l02) {
        O2.m.k("Channel must have been shut down", this.f10060a.f10301K.get());
    }

    @Override // io.grpc.internal.D1
    public void c(boolean z4) {
        C1048s1 c1048s1 = this.f10060a;
        c1048s1.f10323e0.c(c1048s1.f10299I, z4);
    }

    @Override // io.grpc.internal.D1
    public void d() {
    }
}
