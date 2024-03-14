package io.grpc.internal;

import X2.AbstractC0111e;
import X2.C0115g;
import X2.C0141w;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: io.grpc.internal.i  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1013i extends AbstractC1018j0 {

    /* renamed from: d  reason: collision with root package name */
    public final InterfaceC1067z f10130d;

    /* renamed from: f  reason: collision with root package name */
    public volatile X2.L0 f10132f;

    /* renamed from: g  reason: collision with root package name */
    public X2.L0 f10133g;

    /* renamed from: h  reason: collision with root package name */
    public X2.L0 f10134h;

    /* renamed from: j  reason: collision with root package name */
    public final /* synthetic */ C1017j f10136j;

    /* renamed from: e  reason: collision with root package name */
    public final AtomicInteger f10131e = new AtomicInteger(-2147483647);

    /* renamed from: i  reason: collision with root package name */
    public final C1005g f10135i = new C1005g(this);

    public C1013i(C1017j c1017j, InterfaceC1067z interfaceC1067z, String str) {
        this.f10136j = c1017j;
        O2.m.h(interfaceC1067z, "delegate");
        this.f10130d = interfaceC1067z;
        O2.m.h(str, "authority");
    }

    public static void g(C1013i c1013i) {
        synchronized (c1013i) {
            if (c1013i.f10131e.get() != 0) {
                return;
            }
            X2.L0 l02 = c1013i.f10133g;
            X2.L0 l03 = c1013i.f10134h;
            c1013i.f10133g = null;
            c1013i.f10134h = null;
            if (l02 != null) {
                super.f(l02);
            }
            if (l03 != null) {
                super.d(l03);
            }
        }
    }

    @Override // io.grpc.internal.AbstractC1018j0
    public final InterfaceC1067z a() {
        return this.f10130d;
    }

    @Override // io.grpc.internal.InterfaceC1058w
    public final InterfaceC1052u c(X2.u0 u0Var, X2.r0 r0Var, C0115g c0115g, X2.r[] rVarArr) {
        boolean z4;
        W w4;
        AbstractC0111e abstractC0111e = c0115g.f2194d;
        if (abstractC0111e == null) {
            abstractC0111e = this.f10136j.f10146e;
        } else {
            AbstractC0111e abstractC0111e2 = this.f10136j.f10146e;
            if (abstractC0111e2 != null) {
                abstractC0111e = new C0141w(abstractC0111e2, abstractC0111e);
            }
        }
        if (abstractC0111e == null) {
            return this.f10131e.get() >= 0 ? new C1010h0(this.f10132f, rVarArr) : this.f10130d.c(u0Var, r0Var, c0115g, rVarArr);
        }
        F1 f12 = new F1(this.f10130d, this.f10135i, rVarArr);
        if (this.f10131e.incrementAndGet() > 0) {
            C1013i c1013i = this.f10135i.f10110a;
            if (c1013i.f10131e.decrementAndGet() == 0) {
                g(c1013i);
            }
            return new C1010h0(this.f10132f, rVarArr);
        }
        C1009h c1009h = new C1009h();
        try {
            Executor executor = c0115g.f2192b;
            Executor executor2 = this.f10136j.f10147f;
            if (executor == null) {
                if (executor2 == null) {
                    throw new NullPointerException("Both parameters are null");
                }
                executor = executor2;
            }
            abstractC0111e.a(c1009h, executor, f12);
        } catch (Throwable th) {
            X2.L0 e4 = X2.L0.f2131j.f("Credentials should use fail() instead of throwing exceptions").e(th);
            O2.m.b("Cannot fail with OK status", !e4.d());
            O2.m.k("apply() or fail() already called", !f12.f9878f);
            C1010h0 c1010h0 = new C1010h0(e4, ClientStreamListener$RpcProgress.PROCESSED, f12.f9875c);
            O2.m.k("already finalized", !f12.f9878f);
            f12.f9878f = true;
            synchronized (f12.f9876d) {
                if (f12.f9877e == null) {
                    f12.f9877e = c1010h0;
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (z4) {
                    C1013i c1013i2 = f12.f9874b.f10110a;
                    if (c1013i2.f10131e.decrementAndGet() == 0) {
                        g(c1013i2);
                    }
                } else {
                    O2.m.k("delayedStream is null", f12.f9879g != null);
                    Q t4 = f12.f9879g.t(c1010h0);
                    if (t4 != null) {
                        t4.run();
                    }
                    C1013i c1013i3 = f12.f9874b.f10110a;
                    if (c1013i3.f10131e.decrementAndGet() == 0) {
                        g(c1013i3);
                    }
                }
            }
        }
        synchronized (f12.f9876d) {
            InterfaceC1052u interfaceC1052u = f12.f9877e;
            w4 = interfaceC1052u;
            if (interfaceC1052u == null) {
                W w5 = new W();
                f12.f9879g = w5;
                f12.f9877e = w5;
                w4 = w5;
            }
        }
        return w4;
    }

    @Override // io.grpc.internal.AbstractC1018j0, io.grpc.internal.E1
    public final void d(X2.L0 l02) {
        O2.m.h(l02, "status");
        synchronized (this) {
            if (this.f10131e.get() < 0) {
                this.f10132f = l02;
                this.f10131e.addAndGet(Integer.MAX_VALUE);
            } else if (this.f10134h != null) {
                return;
            }
            if (this.f10131e.get() != 0) {
                this.f10134h = l02;
            } else {
                super.d(l02);
            }
        }
    }

    @Override // io.grpc.internal.AbstractC1018j0, io.grpc.internal.E1
    public final void f(X2.L0 l02) {
        O2.m.h(l02, "status");
        synchronized (this) {
            if (this.f10131e.get() < 0) {
                this.f10132f = l02;
                this.f10131e.addAndGet(Integer.MAX_VALUE);
                if (this.f10131e.get() != 0) {
                    this.f10133g = l02;
                } else {
                    super.f(l02);
                }
            }
        }
    }
}
