package io.grpc.internal;

import X2.AbstractC0119i;
import io.grpc.ConnectivityState;
/* renamed from: io.grpc.internal.g1  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1007g1 extends X2.V {

    /* renamed from: a  reason: collision with root package name */
    public C0985b f10116a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f10117b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ C1048s1 f10118c;

    public C1007g1(C1048s1 c1048s1) {
        this.f10118c = c1048s1;
    }

    @Override // X2.V
    public final X2.Y a(X2.U u4) {
        C1048s1 c1048s1 = this.f10118c;
        c1048s1.f10340r.d();
        O2.m.k("Channel is being terminated", !c1048s1.f10303M);
        return new C1043q1(c1048s1, u4, this);
    }

    @Override // X2.V
    public final AbstractC0119i b() {
        return this.f10118c.f10309S;
    }

    @Override // X2.V
    public final X2.P0 c() {
        return this.f10118c.f10340r;
    }

    @Override // X2.V
    public final void f() {
        C1048s1 c1048s1 = this.f10118c;
        c1048s1.f10340r.d();
        this.f10117b = true;
        c1048s1.f10340r.execute(new Z0(1, this));
    }

    @Override // X2.V
    public final void g(ConnectivityState connectivityState, X2.V v4) {
        C1048s1 c1048s1 = this.f10118c;
        c1048s1.f10340r.d();
        c1048s1.f10340r.execute(new RunnableC1003f1(this, v4, connectivityState));
    }
}
