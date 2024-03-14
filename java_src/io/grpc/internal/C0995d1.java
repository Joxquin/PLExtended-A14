package io.grpc.internal;

import X2.AbstractC0117h;
import X2.AbstractC0121j;
import X2.AbstractC0123k;
import X2.C0115g;
import X2.InterfaceC0125l;
import java.util.concurrent.Executor;
/* renamed from: io.grpc.internal.d1  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0995d1 extends X2.J {

    /* renamed from: a  reason: collision with root package name */
    public final X2.O f10092a;

    /* renamed from: b  reason: collision with root package name */
    public final AbstractC0117h f10093b;

    /* renamed from: c  reason: collision with root package name */
    public final Executor f10094c;

    /* renamed from: d  reason: collision with root package name */
    public final X2.u0 f10095d;

    /* renamed from: e  reason: collision with root package name */
    public final X2.C f10096e;

    /* renamed from: f  reason: collision with root package name */
    public C0115g f10097f;

    /* renamed from: g  reason: collision with root package name */
    public AbstractC0123k f10098g;

    public C0995d1(X2.O o4, C1019j1 c1019j1, Executor executor, X2.u0 u0Var, C0115g c0115g) {
        this.f10092a = o4;
        this.f10093b = c1019j1;
        this.f10095d = u0Var;
        Executor executor2 = c0115g.f2192b;
        executor = executor2 != null ? executor2 : executor;
        this.f10094c = executor;
        C0115g c0115g2 = new C0115g(c0115g);
        c0115g2.f2192b = executor;
        this.f10097f = c0115g2;
        this.f10096e = X2.C.b();
    }

    @Override // X2.AbstractC0123k
    public final void a(String str, Throwable th) {
        AbstractC0123k abstractC0123k = this.f10098g;
        if (abstractC0123k != null) {
            abstractC0123k.a(str, th);
        }
    }

    @Override // X2.AbstractC0123k
    public final void e(AbstractC0121j abstractC0121j, X2.r0 r0Var) {
        C0115g c0115g = this.f10097f;
        X2.u0 u0Var = this.f10095d;
        O2.m.h(u0Var, "method");
        O2.m.h(r0Var, "headers");
        O2.m.h(c0115g, "callOptions");
        X2.N a4 = this.f10092a.a();
        X2.L0 l02 = a4.f2147a;
        if (!l02.d()) {
            this.f10094c.execute(new C0991c1(this, abstractC0121j, l02));
            this.f10098g = C1048s1.f10290q0;
            return;
        }
        C1 c12 = (C1) a4.f2148b;
        c12.getClass();
        A1 a12 = (A1) c12.f9839b.get(u0Var.f2231b);
        if (a12 == null) {
            a12 = (A1) c12.f9840c.get(u0Var.f2232c);
        }
        if (a12 == null) {
            a12 = c12.f9838a;
        }
        if (a12 != null) {
            this.f10097f = this.f10097f.b(A1.f9821g, a12);
        }
        InterfaceC0125l interfaceC0125l = a4.f2149c;
        if (interfaceC0125l != null) {
            this.f10098g = interfaceC0125l.a();
        } else {
            this.f10098g = this.f10093b.g(u0Var, this.f10097f);
        }
        this.f10098g.e(abstractC0121j, r0Var);
    }
}
