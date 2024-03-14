package io.grpc.internal;

import java.util.concurrent.TimeUnit;
/* renamed from: io.grpc.internal.d2  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC0996d2 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f10099d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f10100e;

    public /* synthetic */ RunnableC0996d2(int i4, Object obj) {
        this.f10099d = i4;
        this.f10100e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1016i2 c1016i2;
        boolean z4 = false;
        switch (this.f10099d) {
            case 0:
                r2 r2Var = (r2) this.f10100e;
                if (r2Var.f10277w) {
                    return;
                }
                r2Var.f10272r.a();
                return;
            case 1:
                r2 r2Var2 = (r2) ((RunnableC1000e2) this.f10100e).f10103e;
                p2 s4 = r2Var2.s(r2Var2.f10269o.f10167e, false);
                synchronized (((r2) ((RunnableC1000e2) this.f10100e).f10103e).f10263i) {
                    try {
                        Object obj = this.f10100e;
                        c1016i2 = null;
                        if (((C1016i2) ((RunnableC1000e2) obj).f10104f).f10144c) {
                            z4 = true;
                        } else {
                            ((r2) ((RunnableC1000e2) obj).f10103e).f10269o = ((r2) ((RunnableC1000e2) obj).f10103e).f10269o.a(s4);
                            Object obj2 = this.f10100e;
                            if (((r2) ((RunnableC1000e2) obj2).f10103e).w(((r2) ((RunnableC1000e2) obj2).f10103e).f10269o)) {
                                Object obj3 = this.f10100e;
                                if (((r2) ((RunnableC1000e2) obj3).f10103e).f10267m != null) {
                                    q2 q2Var = ((r2) ((RunnableC1000e2) obj3).f10103e).f10267m;
                                    if (q2Var.f10232d.get() > q2Var.f10230b) {
                                    }
                                }
                                Object obj4 = this.f10100e;
                                c1016i2 = new C1016i2(((r2) ((RunnableC1000e2) obj4).f10103e).f10263i);
                                ((r2) ((RunnableC1000e2) obj4).f10103e).f10274t = c1016i2;
                            }
                            Object obj5 = this.f10100e;
                            r2 r2Var3 = (r2) ((RunnableC1000e2) obj5).f10103e;
                            C1028l2 c1028l2 = ((r2) ((RunnableC1000e2) obj5).f10103e).f10269o;
                            if (!c1028l2.f10170h) {
                                c1028l2 = new C1028l2(c1028l2.f10164b, c1028l2.f10165c, c1028l2.f10166d, c1028l2.f10168f, c1028l2.f10169g, c1028l2.f10163a, true, c1028l2.f10167e);
                            }
                            r2Var3.f10269o = c1028l2;
                            ((r2) ((RunnableC1000e2) this.f10100e).f10103e).f10274t = null;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (z4) {
                    s4.f10206a.g(X2.L0.f2127f.f("Unneeded hedging"));
                    return;
                }
                if (c1016i2 != null) {
                    r2 r2Var4 = (r2) ((RunnableC1000e2) this.f10100e).f10103e;
                    c1016i2.a(r2Var4.f10258d.schedule(new RunnableC1000e2(1, r2Var4, c1016i2), r2Var4.f10261g.f10281b, TimeUnit.NANOSECONDS));
                }
                ((r2) ((RunnableC1000e2) this.f10100e).f10103e).u(s4);
                return;
            default:
                o2 o2Var = ((m2) this.f10100e).f10178e;
                ((m2) this.f10100e).f10178e.f10199b.u(o2Var.f10199b.s(o2Var.f10198a.f10209d + 1, false));
                return;
        }
    }
}
