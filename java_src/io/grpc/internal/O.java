package io.grpc.internal;

import X2.C0115g;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.concurrent.Executor;
/* loaded from: classes.dex */
public final class O implements E1 {

    /* renamed from: f  reason: collision with root package name */
    public final Executor f9961f;

    /* renamed from: g  reason: collision with root package name */
    public final X2.P0 f9962g;

    /* renamed from: h  reason: collision with root package name */
    public M f9963h;

    /* renamed from: i  reason: collision with root package name */
    public M f9964i;

    /* renamed from: j  reason: collision with root package name */
    public Runnable f9965j;

    /* renamed from: k  reason: collision with root package name */
    public D1 f9966k;

    /* renamed from: m  reason: collision with root package name */
    public X2.L0 f9968m;

    /* renamed from: n  reason: collision with root package name */
    public X2.V f9969n;

    /* renamed from: o  reason: collision with root package name */
    public long f9970o;

    /* renamed from: d  reason: collision with root package name */
    public final X2.Q f9959d = X2.Q.a(O.class, null);

    /* renamed from: e  reason: collision with root package name */
    public final Object f9960e = new Object();

    /* renamed from: l  reason: collision with root package name */
    public Collection f9967l = new LinkedHashSet();

    public O(Executor executor, X2.P0 p02) {
        this.f9961f = executor;
        this.f9962g = p02;
    }

    public final N a(P1 p12, X2.r[] rVarArr) {
        int size;
        N n4 = new N(this, p12, rVarArr);
        this.f9967l.add(n4);
        synchronized (this.f9960e) {
            size = this.f9967l.size();
        }
        if (size == 1) {
            this.f9962g.b(this.f9963h);
        }
        return n4;
    }

    @Override // io.grpc.internal.E1
    public final Runnable b(D1 d12) {
        this.f9966k = d12;
        this.f9963h = new M(this, d12, 0);
        this.f9964i = new M(this, d12, 1);
        this.f9965j = new M(this, d12, 2);
        return null;
    }

    @Override // io.grpc.internal.InterfaceC1058w
    public final InterfaceC1052u c(X2.u0 u0Var, X2.r0 r0Var, C0115g c0115g, X2.r[] rVarArr) {
        InterfaceC1052u c1010h0;
        try {
            P1 p12 = new P1(u0Var, r0Var, c0115g);
            X2.V v4 = null;
            long j4 = -1;
            while (true) {
                synchronized (this.f9960e) {
                    X2.L0 l02 = this.f9968m;
                    if (l02 == null) {
                        X2.V v5 = this.f9969n;
                        if (v5 != null) {
                            if (v4 != null && j4 == this.f9970o) {
                                c1010h0 = a(p12, rVarArr);
                                break;
                            }
                            j4 = this.f9970o;
                            InterfaceC1058w c4 = C1044r0.c(v5.e(), Boolean.TRUE.equals(c0115g.f2198h));
                            if (c4 != null) {
                                c1010h0 = c4.c(p12.f9980c, p12.f9979b, p12.f9978a, rVarArr);
                                break;
                            }
                            v4 = v5;
                        } else {
                            c1010h0 = a(p12, rVarArr);
                            break;
                        }
                    } else {
                        c1010h0 = new C1010h0(l02, ClientStreamListener$RpcProgress.PROCESSED, rVarArr);
                        break;
                    }
                }
            }
            return c1010h0;
        } finally {
            this.f9962g.a();
        }
    }

    @Override // io.grpc.internal.E1
    public final void d(X2.L0 l02) {
        Collection<N> collection;
        Runnable runnable;
        f(l02);
        synchronized (this.f9960e) {
            collection = this.f9967l;
            runnable = this.f9965j;
            this.f9965j = null;
            if (!collection.isEmpty()) {
                this.f9967l = Collections.emptyList();
            }
        }
        if (runnable != null) {
            for (N n4 : collection) {
                Q t4 = n4.t(new C1010h0(l02, ClientStreamListener$RpcProgress.REFUSED, n4.f9954l));
                if (t4 != null) {
                    t4.run();
                }
            }
            this.f9962g.execute(runnable);
        }
    }

    @Override // X2.P
    public final X2.Q e() {
        return this.f9959d;
    }

    @Override // io.grpc.internal.E1
    public final void f(X2.L0 l02) {
        Runnable runnable;
        synchronized (this.f9960e) {
            if (this.f9968m != null) {
                return;
            }
            this.f9968m = l02;
            this.f9962g.b(new M(this, l02, 3));
            if (!g() && (runnable = this.f9965j) != null) {
                this.f9962g.b(runnable);
                this.f9965j = null;
            }
            this.f9962g.a();
        }
    }

    public final boolean g() {
        boolean z4;
        synchronized (this.f9960e) {
            z4 = !this.f9967l.isEmpty();
        }
        return z4;
    }

    public final void h(X2.V v4) {
        Runnable runnable;
        synchronized (this.f9960e) {
            this.f9969n = v4;
            this.f9970o++;
            if (v4 != null && g()) {
                ArrayList arrayList = new ArrayList(this.f9967l);
                ArrayList arrayList2 = new ArrayList();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    N n4 = (N) it.next();
                    P1 p12 = n4.f9952j;
                    X2.W e4 = v4.e();
                    C0115g c0115g = n4.f9952j.f9978a;
                    InterfaceC1058w c4 = C1044r0.c(e4, Boolean.TRUE.equals(c0115g.f2198h));
                    if (c4 != null) {
                        Executor executor = this.f9961f;
                        Executor executor2 = c0115g.f2192b;
                        if (executor2 != null) {
                            executor = executor2;
                        }
                        X2.C c5 = n4.f9953k;
                        X2.C a4 = c5.a();
                        try {
                            P1 p13 = n4.f9952j;
                            InterfaceC1052u c6 = c4.c(p13.f9980c, p13.f9979b, p13.f9978a, n4.f9954l);
                            c5.c(a4);
                            Q t4 = n4.t(c6);
                            if (t4 != null) {
                                executor.execute(t4);
                            }
                            arrayList2.add(n4);
                        } catch (Throwable th) {
                            c5.c(a4);
                            throw th;
                        }
                    }
                }
                synchronized (this.f9960e) {
                    if (g()) {
                        this.f9967l.removeAll(arrayList2);
                        if (this.f9967l.isEmpty()) {
                            this.f9967l = new LinkedHashSet();
                        }
                        if (!g()) {
                            this.f9962g.b(this.f9964i);
                            if (this.f9968m != null && (runnable = this.f9965j) != null) {
                                this.f9962g.b(runnable);
                                this.f9965j = null;
                            }
                        }
                        this.f9962g.a();
                    }
                }
            }
        }
    }
}
