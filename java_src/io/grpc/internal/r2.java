package io.grpc.internal;

import X2.AbstractC0130n0;
import X2.C0118h0;
import X2.C0120i0;
import X2.InterfaceC0142x;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public abstract class r2 implements InterfaceC1052u {

    /* renamed from: A  reason: collision with root package name */
    public static final Random f10251A;

    /* renamed from: x  reason: collision with root package name */
    public static final C0120i0 f10252x;

    /* renamed from: y  reason: collision with root package name */
    public static final C0120i0 f10253y;

    /* renamed from: z  reason: collision with root package name */
    public static final X2.L0 f10254z;

    /* renamed from: a  reason: collision with root package name */
    public final X2.u0 f10255a;

    /* renamed from: b  reason: collision with root package name */
    public final Executor f10256b;

    /* renamed from: d  reason: collision with root package name */
    public final ScheduledExecutorService f10258d;

    /* renamed from: e  reason: collision with root package name */
    public final X2.r0 f10259e;

    /* renamed from: f  reason: collision with root package name */
    public final s2 f10260f;

    /* renamed from: g  reason: collision with root package name */
    public final C1047s0 f10261g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f10262h;

    /* renamed from: j  reason: collision with root package name */
    public final C1012h2 f10264j;

    /* renamed from: k  reason: collision with root package name */
    public final long f10265k;

    /* renamed from: l  reason: collision with root package name */
    public final long f10266l;

    /* renamed from: m  reason: collision with root package name */
    public final q2 f10267m;

    /* renamed from: q  reason: collision with root package name */
    public long f10271q;

    /* renamed from: r  reason: collision with root package name */
    public InterfaceC1055v f10272r;

    /* renamed from: s  reason: collision with root package name */
    public C1016i2 f10273s;

    /* renamed from: t  reason: collision with root package name */
    public C1016i2 f10274t;

    /* renamed from: u  reason: collision with root package name */
    public long f10275u;

    /* renamed from: v  reason: collision with root package name */
    public X2.L0 f10276v;

    /* renamed from: w  reason: collision with root package name */
    public boolean f10277w;

    /* renamed from: c  reason: collision with root package name */
    public final X2.P0 f10257c = new X2.P0(new W1());

    /* renamed from: i  reason: collision with root package name */
    public final Object f10263i = new Object();

    /* renamed from: n  reason: collision with root package name */
    public final C1053u0 f10268n = new C1053u0();

    /* renamed from: o  reason: collision with root package name */
    public volatile C1028l2 f10269o = new C1028l2(new ArrayList(8), Collections.emptyList(), null, null, false, false, false, 0);

    /* renamed from: p  reason: collision with root package name */
    public final AtomicBoolean f10270p = new AtomicBoolean();

    static {
        C0118h0 c0118h0 = X2.r0.f2220d;
        BitSet bitSet = AbstractC0130n0.f2205d;
        f10252x = new C0120i0("grpc-previous-rpc-attempts", c0118h0);
        f10253y = new C0120i0("grpc-retry-pushback-ms", c0118h0);
        f10254z = X2.L0.f2127f.f("Stream thrown away because RetriableStream committed");
        f10251A = new Random();
    }

    public r2(X2.u0 u0Var, X2.r0 r0Var, C1012h2 c1012h2, long j4, long j5, Executor executor, ScheduledExecutorService scheduledExecutorService, s2 s2Var, C1047s0 c1047s0, q2 q2Var) {
        this.f10255a = u0Var;
        this.f10264j = c1012h2;
        this.f10265k = j4;
        this.f10266l = j5;
        this.f10256b = executor;
        this.f10258d = scheduledExecutorService;
        this.f10259e = r0Var;
        this.f10260f = s2Var;
        if (s2Var != null) {
            this.f10275u = s2Var.f10350b;
        }
        this.f10261g = c1047s0;
        O2.m.b("Should not provide both retryPolicy and hedgingPolicy", s2Var == null || c1047s0 == null);
        this.f10262h = c1047s0 != null;
        this.f10267m = q2Var;
    }

    public static void p(r2 r2Var, p2 p2Var) {
        Y1 r4 = r2Var.r(p2Var);
        if (r4 != null) {
            r4.run();
        }
    }

    public static void q(r2 r2Var, Integer num) {
        r2Var.getClass();
        if (num == null) {
            return;
        }
        if (num.intValue() < 0) {
            r2Var.v();
            return;
        }
        synchronized (r2Var.f10263i) {
            C1016i2 c1016i2 = r2Var.f10274t;
            if (c1016i2 != null) {
                c1016i2.f10144c = true;
                Future future = c1016i2.f10143b;
                C1016i2 c1016i22 = new C1016i2(r2Var.f10263i);
                r2Var.f10274t = c1016i22;
                if (future != null) {
                    future.cancel(false);
                }
                c1016i22.a(r2Var.f10258d.schedule(new RunnableC1000e2(1, r2Var, c1016i22), num.intValue(), TimeUnit.MILLISECONDS));
            }
        }
    }

    public final void A(Object obj) {
        C1028l2 c1028l2 = this.f10269o;
        if (c1028l2.f10163a) {
            c1028l2.f10168f.f10206a.i(this.f10255a.f2233d.a(obj));
        } else {
            t(new X1(this, obj, 4));
        }
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void a(int i4) {
        C1028l2 c1028l2 = this.f10269o;
        if (c1028l2.f10163a) {
            c1028l2.f10168f.f10206a.a(i4);
        } else {
            t(new C0988b2(i4, 2));
        }
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void b(int i4) {
        t(new C0988b2(i4, 0));
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void c(InterfaceC1055v interfaceC1055v) {
        C1016i2 c1016i2;
        this.f10272r = interfaceC1055v;
        X2.L0 z4 = z();
        if (z4 != null) {
            g(z4);
            return;
        }
        synchronized (this.f10263i) {
            this.f10269o.f10164b.add(new C1024k2(this));
        }
        p2 s4 = s(0, false);
        if (this.f10262h) {
            synchronized (this.f10263i) {
                try {
                    this.f10269o = this.f10269o.a(s4);
                    if (w(this.f10269o)) {
                        q2 q2Var = this.f10267m;
                        if (q2Var != null) {
                            if (q2Var.f10232d.get() > q2Var.f10230b) {
                            }
                        }
                        c1016i2 = new C1016i2(this.f10263i);
                        this.f10274t = c1016i2;
                    }
                    c1016i2 = null;
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (c1016i2 != null) {
                c1016i2.a(this.f10258d.schedule(new RunnableC1000e2(1, this, c1016i2), this.f10261g.f10281b, TimeUnit.NANOSECONDS));
            }
        }
        u(s4);
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void d(X2.E e4) {
        t(new X1(this, e4, 2));
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final boolean e() {
        for (p2 p2Var : this.f10269o.f10165c) {
            if (p2Var.f10206a.e()) {
                return true;
            }
        }
        return false;
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void f(X2.H h4) {
        t(new X1(this, h4, 3));
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void flush() {
        C1028l2 c1028l2 = this.f10269o;
        if (c1028l2.f10163a) {
            c1028l2.f10168f.f10206a.flush();
        } else {
            t(new Z1(0));
        }
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void g(X2.L0 l02) {
        p2 p2Var;
        p2 p2Var2 = new p2(0);
        p2Var2.f10206a = new G1();
        Y1 r4 = r(p2Var2);
        if (r4 != null) {
            r4.run();
            this.f10257c.execute(new RunnableC1000e2(0, this, l02));
            return;
        }
        synchronized (this.f10263i) {
            if (this.f10269o.f10165c.contains(this.f10269o.f10168f)) {
                p2Var = this.f10269o.f10168f;
            } else {
                this.f10276v = l02;
                p2Var = null;
            }
            C1028l2 c1028l2 = this.f10269o;
            this.f10269o = new C1028l2(c1028l2.f10164b, c1028l2.f10165c, c1028l2.f10166d, c1028l2.f10168f, true, c1028l2.f10163a, c1028l2.f10170h, c1028l2.f10167e);
        }
        if (p2Var != null) {
            p2Var.f10206a.g(l02);
        }
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void h(int i4) {
        t(new C0988b2(i4, 1));
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void i(InputStream inputStream) {
        throw new IllegalStateException("RetriableStream.writeMessage() should not be called directly");
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void j(String str) {
        t(new X1(this, str, 0));
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void k(C1053u0 c1053u0) {
        C1028l2 c1028l2;
        synchronized (this.f10263i) {
            c1053u0.a(this.f10268n, "closed");
            c1028l2 = this.f10269o;
        }
        if (c1028l2.f10168f != null) {
            C1053u0 c1053u02 = new C1053u0();
            c1028l2.f10168f.f10206a.k(c1053u02);
            c1053u0.a(c1053u02, "committed");
            return;
        }
        C1053u0 c1053u03 = new C1053u0();
        for (p2 p2Var : c1028l2.f10165c) {
            C1053u0 c1053u04 = new C1053u0();
            p2Var.f10206a.k(c1053u04);
            c1053u03.f10381a.add(String.valueOf(c1053u04));
        }
        c1053u0.a(c1053u03, "open");
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void l() {
        t(new Z1(2));
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void m() {
        t(new Z1(1));
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void n(boolean z4) {
        t(new C0984a2(z4));
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void o(InterfaceC0142x interfaceC0142x) {
        t(new X1(this, interfaceC0142x, 1));
    }

    public final Y1 r(p2 p2Var) {
        Collection emptyList;
        boolean z4;
        List list;
        Future future;
        Future future2;
        synchronized (this.f10263i) {
            if (this.f10269o.f10168f != null) {
                return null;
            }
            Collection collection = this.f10269o.f10165c;
            C1028l2 c1028l2 = this.f10269o;
            O2.m.k("Already committed", c1028l2.f10168f == null);
            if (c1028l2.f10165c.contains(p2Var)) {
                list = null;
                emptyList = Collections.singleton(p2Var);
                z4 = true;
            } else {
                emptyList = Collections.emptyList();
                z4 = false;
                list = c1028l2.f10164b;
            }
            this.f10269o = new C1028l2(list, emptyList, c1028l2.f10166d, p2Var, c1028l2.f10169g, z4, c1028l2.f10170h, c1028l2.f10167e);
            this.f10264j.f10129a.addAndGet(-this.f10271q);
            C1016i2 c1016i2 = this.f10273s;
            if (c1016i2 != null) {
                c1016i2.f10144c = true;
                Future future3 = c1016i2.f10143b;
                this.f10273s = null;
                future = future3;
            } else {
                future = null;
            }
            C1016i2 c1016i22 = this.f10274t;
            if (c1016i22 != null) {
                c1016i22.f10144c = true;
                Future future4 = c1016i22.f10143b;
                this.f10274t = null;
                future2 = future4;
            } else {
                future2 = null;
            }
            return new Y1(this, collection, p2Var, future, future2);
        }
    }

    public final p2 s(int i4, boolean z4) {
        p2 p2Var = new p2(i4);
        C0992c2 c0992c2 = new C0992c2(new C1008g2(this, p2Var));
        X2.r0 r0Var = new X2.r0();
        X2.r0 r0Var2 = this.f10259e;
        int i5 = r0Var2.f2223b;
        if (!(i5 == 0)) {
            Object[] objArr = r0Var.f2222a;
            int length = objArr != null ? objArr.length : 0;
            int i6 = r0Var.f2223b;
            int i7 = length - (i6 * 2);
            if ((i6 == 0) || i7 < i5 * 2) {
                r0Var.b((i5 * 2) + (i6 * 2));
            }
            System.arraycopy(r0Var2.f2222a, 0, r0Var.f2222a, r0Var.f2223b * 2, r0Var2.f2223b * 2);
            r0Var.f2223b += r0Var2.f2223b;
        }
        if (i4 > 0) {
            r0Var.d(f10252x, String.valueOf(i4));
        }
        p2Var.f10206a = x(r0Var, c0992c2, i4, z4);
        return p2Var;
    }

    public final void t(InterfaceC1004f2 interfaceC1004f2) {
        Collection<p2> collection;
        synchronized (this.f10263i) {
            if (!this.f10269o.f10163a) {
                this.f10269o.f10164b.add(interfaceC1004f2);
            }
            collection = this.f10269o.f10165c;
        }
        for (p2 p2Var : collection) {
            interfaceC1004f2.a(p2Var);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0036, code lost:
        if (r1 == null) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0038, code lost:
        r9.f10257c.execute(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x003d, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x003e, code lost:
        r0 = r10.f10206a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0044, code lost:
        if (r9.f10269o.f10168f != r10) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0046, code lost:
        r9 = r9.f10276v;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0049, code lost:
        r9 = io.grpc.internal.r2.f10254z;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x004b, code lost:
        r0.g(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x004e, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x007c, code lost:
        r3 = r4.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0084, code lost:
        if (r3.hasNext() == false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0086, code lost:
        r5 = (io.grpc.internal.InterfaceC1004f2) r3.next();
        r5.a(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0091, code lost:
        if ((r5 instanceof io.grpc.internal.C1024k2) == false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0093, code lost:
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0094, code lost:
        if (r2 == false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0096, code lost:
        r5 = r9.f10269o;
        r6 = r5.f10168f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x009a, code lost:
        if (r6 == null) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x009c, code lost:
        if (r6 == r10) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00a1, code lost:
        if (r5.f10169g == false) goto L52;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void u(io.grpc.internal.p2 r10) {
        /*
            r9 = this;
            r0 = 0
            r1 = 0
            r2 = r0
            r3 = r2
            r4 = r1
        L5:
            java.lang.Object r5 = r9.f10263i
            monitor-enter(r5)
            io.grpc.internal.l2 r6 = r9.f10269o     // Catch: java.lang.Throwable -> La6
            if (r2 == 0) goto L1a
            io.grpc.internal.p2 r7 = r6.f10168f     // Catch: java.lang.Throwable -> La6
            if (r7 == 0) goto L14
            if (r7 == r10) goto L14
            monitor-exit(r5)     // Catch: java.lang.Throwable -> La6
            goto L36
        L14:
            boolean r7 = r6.f10169g     // Catch: java.lang.Throwable -> La6
            if (r7 == 0) goto L1a
            monitor-exit(r5)     // Catch: java.lang.Throwable -> La6
            goto L36
        L1a:
            java.util.List r7 = r6.f10164b     // Catch: java.lang.Throwable -> La6
            int r7 = r7.size()     // Catch: java.lang.Throwable -> La6
            if (r3 != r7) goto L4f
            io.grpc.internal.l2 r1 = r6.e(r10)     // Catch: java.lang.Throwable -> La6
            r9.f10269o = r1     // Catch: java.lang.Throwable -> La6
            boolean r1 = r9.e()     // Catch: java.lang.Throwable -> La6
            if (r1 != 0) goto L30
            monitor-exit(r5)     // Catch: java.lang.Throwable -> La6
            return
        L30:
            io.grpc.internal.d2 r1 = new io.grpc.internal.d2     // Catch: java.lang.Throwable -> La6
            r1.<init>(r0, r9)     // Catch: java.lang.Throwable -> La6
            monitor-exit(r5)     // Catch: java.lang.Throwable -> La6
        L36:
            if (r1 == 0) goto L3e
            X2.P0 r9 = r9.f10257c
            r9.execute(r1)
            return
        L3e:
            io.grpc.internal.u r0 = r10.f10206a
            io.grpc.internal.l2 r1 = r9.f10269o
            io.grpc.internal.p2 r1 = r1.f10168f
            if (r1 != r10) goto L49
            X2.L0 r9 = r9.f10276v
            goto L4b
        L49:
            X2.L0 r9 = io.grpc.internal.r2.f10254z
        L4b:
            r0.g(r9)
            return
        L4f:
            boolean r7 = r10.f10207b     // Catch: java.lang.Throwable -> La6
            if (r7 == 0) goto L55
            monitor-exit(r5)     // Catch: java.lang.Throwable -> La6
            return
        L55:
            int r7 = r3 + 128
            java.util.List r8 = r6.f10164b     // Catch: java.lang.Throwable -> La6
            int r8 = r8.size()     // Catch: java.lang.Throwable -> La6
            int r7 = java.lang.Math.min(r7, r8)     // Catch: java.lang.Throwable -> La6
            if (r4 != 0) goto L6f
            java.util.ArrayList r4 = new java.util.ArrayList     // Catch: java.lang.Throwable -> La6
            java.util.List r6 = r6.f10164b     // Catch: java.lang.Throwable -> La6
            java.util.List r3 = r6.subList(r3, r7)     // Catch: java.lang.Throwable -> La6
            r4.<init>(r3)     // Catch: java.lang.Throwable -> La6
            goto L7b
        L6f:
            r4.clear()     // Catch: java.lang.Throwable -> La6
            java.util.List r6 = r6.f10164b     // Catch: java.lang.Throwable -> La6
            java.util.List r3 = r6.subList(r3, r7)     // Catch: java.lang.Throwable -> La6
            r4.addAll(r3)     // Catch: java.lang.Throwable -> La6
        L7b:
            monitor-exit(r5)     // Catch: java.lang.Throwable -> La6
            java.util.Iterator r3 = r4.iterator()
        L80:
            boolean r5 = r3.hasNext()
            if (r5 == 0) goto La3
            java.lang.Object r5 = r3.next()
            io.grpc.internal.f2 r5 = (io.grpc.internal.InterfaceC1004f2) r5
            r5.a(r10)
            boolean r5 = r5 instanceof io.grpc.internal.C1024k2
            if (r5 == 0) goto L94
            r2 = 1
        L94:
            if (r2 == 0) goto L80
            io.grpc.internal.l2 r5 = r9.f10269o
            io.grpc.internal.p2 r6 = r5.f10168f
            if (r6 == 0) goto L9f
            if (r6 == r10) goto L9f
            goto La3
        L9f:
            boolean r5 = r5.f10169g
            if (r5 == 0) goto L80
        La3:
            r3 = r7
            goto L5
        La6:
            r9 = move-exception
            monitor-exit(r5)     // Catch: java.lang.Throwable -> La6
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.internal.r2.u(io.grpc.internal.p2):void");
    }

    public final void v() {
        Future future;
        synchronized (this.f10263i) {
            C1016i2 c1016i2 = this.f10274t;
            future = null;
            if (c1016i2 != null) {
                c1016i2.f10144c = true;
                Future future2 = c1016i2.f10143b;
                this.f10274t = null;
                future = future2;
            }
            C1028l2 c1028l2 = this.f10269o;
            if (!c1028l2.f10170h) {
                c1028l2 = new C1028l2(c1028l2.f10164b, c1028l2.f10165c, c1028l2.f10166d, c1028l2.f10168f, c1028l2.f10169g, c1028l2.f10163a, true, c1028l2.f10167e);
            }
            this.f10269o = c1028l2;
        }
        if (future != null) {
            future.cancel(false);
        }
    }

    public final boolean w(C1028l2 c1028l2) {
        if (c1028l2.f10168f == null) {
            if (c1028l2.f10167e < this.f10261g.f10280a && !c1028l2.f10170h) {
                return true;
            }
        }
        return false;
    }

    public abstract InterfaceC1052u x(X2.r0 r0Var, C0992c2 c0992c2, int i4, boolean z4);

    public abstract void y();

    public abstract X2.L0 z();
}
