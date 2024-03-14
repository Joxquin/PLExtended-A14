package io.grpc.internal;

import X2.AbstractC0114f0;
import X2.AbstractC0117h;
import X2.AbstractC0123k;
import X2.C0115g;
import X2.C0129n;
import X2.C0131o;
import X2.C0143y;
import X2.InterfaceC0125l;
import io.grpc.ChannelLogger$ChannelLogLevel;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.logging.Logger;
import java.util.regex.Pattern;
/* renamed from: io.grpc.internal.s1  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1048s1 extends AbstractC0114f0 implements X2.P {

    /* renamed from: j0  reason: collision with root package name */
    public static final Logger f10283j0 = Logger.getLogger(C1048s1.class.getName());

    /* renamed from: k0  reason: collision with root package name */
    public static final Pattern f10284k0 = Pattern.compile("[a-zA-Z][a-zA-Z0-9+.-]*:/.*");

    /* renamed from: l0  reason: collision with root package name */
    public static final X2.L0 f10285l0;

    /* renamed from: m0  reason: collision with root package name */
    public static final X2.L0 f10286m0;

    /* renamed from: n0  reason: collision with root package name */
    public static final X2.L0 f10287n0;

    /* renamed from: o0  reason: collision with root package name */
    public static final C1 f10288o0;

    /* renamed from: p0  reason: collision with root package name */
    public static final S0 f10289p0;

    /* renamed from: q0  reason: collision with root package name */
    public static final Y0 f10290q0;

    /* renamed from: A  reason: collision with root package name */
    public boolean f10291A;

    /* renamed from: B  reason: collision with root package name */
    public C1007g1 f10292B;

    /* renamed from: C  reason: collision with root package name */
    public volatile X2.V f10293C;

    /* renamed from: D  reason: collision with root package name */
    public boolean f10294D;

    /* renamed from: E  reason: collision with root package name */
    public final Set f10295E;

    /* renamed from: F  reason: collision with root package name */
    public Collection f10296F;

    /* renamed from: G  reason: collision with root package name */
    public final Object f10297G;

    /* renamed from: H  reason: collision with root package name */
    public final Set f10298H;

    /* renamed from: I  reason: collision with root package name */
    public final O f10299I;

    /* renamed from: J  reason: collision with root package name */
    public final C1045r1 f10300J;

    /* renamed from: K  reason: collision with root package name */
    public final AtomicBoolean f10301K;

    /* renamed from: L  reason: collision with root package name */
    public boolean f10302L;

    /* renamed from: M  reason: collision with root package name */
    public boolean f10303M;

    /* renamed from: N  reason: collision with root package name */
    public volatile boolean f10304N;

    /* renamed from: O  reason: collision with root package name */
    public final CountDownLatch f10305O;

    /* renamed from: P  reason: collision with root package name */
    public final U0 f10306P;

    /* renamed from: Q  reason: collision with root package name */
    public final C1021k f10307Q;

    /* renamed from: R  reason: collision with root package name */
    public final C1029m f10308R;

    /* renamed from: S  reason: collision with root package name */
    public final C1025l f10309S;

    /* renamed from: T  reason: collision with root package name */
    public final X2.M f10310T;

    /* renamed from: U  reason: collision with root package name */
    public final C1037o1 f10311U;

    /* renamed from: V  reason: collision with root package name */
    public ManagedChannelImpl$ResolutionState f10312V;

    /* renamed from: W  reason: collision with root package name */
    public C1 f10313W;

    /* renamed from: X  reason: collision with root package name */
    public boolean f10314X;

    /* renamed from: Y  reason: collision with root package name */
    public final boolean f10315Y;

    /* renamed from: Z  reason: collision with root package name */
    public final C1012h2 f10316Z;

    /* renamed from: a0  reason: collision with root package name */
    public final long f10317a0;

    /* renamed from: b0  reason: collision with root package name */
    public final long f10318b0;

    /* renamed from: c0  reason: collision with root package name */
    public final boolean f10319c0;

    /* renamed from: d  reason: collision with root package name */
    public final X2.Q f10320d;

    /* renamed from: d0  reason: collision with root package name */
    public final C0987b1 f10321d0;

    /* renamed from: e  reason: collision with root package name */
    public final String f10322e;

    /* renamed from: e0  reason: collision with root package name */
    public final C0999e1 f10323e0;

    /* renamed from: f  reason: collision with root package name */
    public final X2.x0 f10324f;

    /* renamed from: f0  reason: collision with root package name */
    public X2.O0 f10325f0;

    /* renamed from: g  reason: collision with root package name */
    public final X2.v0 f10326g;

    /* renamed from: g0  reason: collision with root package name */
    public C1006g0 f10327g0;

    /* renamed from: h  reason: collision with root package name */
    public final C1001f f10328h;

    /* renamed from: h0  reason: collision with root package name */
    public final C0987b1 f10329h0;

    /* renamed from: i  reason: collision with root package name */
    public final InterfaceC1064y f10330i;

    /* renamed from: i0  reason: collision with root package name */
    public final V1 f10331i0;

    /* renamed from: j  reason: collision with root package name */
    public final C1017j f10332j;

    /* renamed from: k  reason: collision with root package name */
    public final ScheduledExecutorServiceC1040p1 f10333k;

    /* renamed from: l  reason: collision with root package name */
    public final Executor f10334l;

    /* renamed from: m  reason: collision with root package name */
    public final H2 f10335m;

    /* renamed from: n  reason: collision with root package name */
    public final H1 f10336n;

    /* renamed from: o  reason: collision with root package name */
    public final U0 f10337o;

    /* renamed from: p  reason: collision with root package name */
    public final U0 f10338p;

    /* renamed from: q  reason: collision with root package name */
    public final K2 f10339q;

    /* renamed from: r  reason: collision with root package name */
    public final X2.P0 f10340r;

    /* renamed from: s  reason: collision with root package name */
    public final X2.H f10341s;

    /* renamed from: t  reason: collision with root package name */
    public final C0143y f10342t;

    /* renamed from: u  reason: collision with root package name */
    public final O2.q f10343u;

    /* renamed from: v  reason: collision with root package name */
    public final long f10344v;

    /* renamed from: w  reason: collision with root package name */
    public final B f10345w;

    /* renamed from: x  reason: collision with root package name */
    public final C1002f0 f10346x;

    /* renamed from: y  reason: collision with root package name */
    public final AbstractC0117h f10347y;

    /* renamed from: z  reason: collision with root package name */
    public X2.A0 f10348z;

    static {
        X2.L0 l02 = X2.L0.f2135n;
        f10285l0 = l02.f("Channel shutdownNow invoked");
        f10286m0 = l02.f("Channel shutdown invoked");
        f10287n0 = l02.f("Subchannel shutdown invoked");
        f10288o0 = new C1(null, new HashMap(), new HashMap(), null, null, null);
        f10289p0 = new S0();
        f10290q0 = new Y0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v7, types: [X2.n] */
    public C1048s1(C1063x1 c1063x1, InterfaceC1064y interfaceC1064y, C1002f0 c1002f0, H2 h22, C1036o0 c1036o0, List list) {
        J2 j22 = K2.f9928a;
        X2.P0 p02 = new X2.P0(new W0(this));
        this.f10340r = p02;
        this.f10345w = new B();
        this.f10295E = new HashSet(16, 0.75f);
        this.f10297G = new Object();
        this.f10298H = new HashSet(1, 0.75f);
        this.f10300J = new C1045r1(this);
        this.f10301K = new AtomicBoolean(false);
        this.f10305O = new CountDownLatch(1);
        this.f10312V = ManagedChannelImpl$ResolutionState.NO_RESOLUTION;
        this.f10313W = f10288o0;
        this.f10314X = false;
        this.f10316Z = new C1012h2();
        C0987b1 c0987b1 = new C0987b1(this);
        this.f10321d0 = c0987b1;
        this.f10323e0 = new C0999e1(this);
        this.f10329h0 = new C0987b1(this);
        String str = c1063x1.f10409e;
        O2.m.h(str, "target");
        this.f10322e = str;
        X2.Q q4 = new X2.Q("Channel", str, X2.Q.f2159d.incrementAndGet());
        this.f10320d = q4;
        this.f10339q = j22;
        H2 h23 = c1063x1.f10405a;
        O2.m.h(h23, "executorPool");
        this.f10335m = h23;
        Object a4 = h23.a();
        O2.m.h(a4, "executor");
        Executor executor = (Executor) a4;
        this.f10334l = executor;
        this.f10330i = interfaceC1064y;
        C1017j c1017j = new C1017j(interfaceC1064y, c1063x1.f10410f, executor);
        this.f10332j = c1017j;
        ScheduledExecutorServiceC1040p1 scheduledExecutorServiceC1040p1 = new ScheduledExecutorServiceC1040p1(c1017j.s());
        this.f10333k = scheduledExecutorServiceC1040p1;
        C1029m c1029m = new C1029m(q4, j22.a(), E.c.a("Channel for '", str, "'"));
        this.f10308R = c1029m;
        C1025l c1025l = new C1025l(c1029m, j22);
        this.f10309S = c1025l;
        S1 s12 = C1044r0.f10241h;
        boolean z4 = c1063x1.f10419o;
        this.f10319c0 = z4;
        C1001f c1001f = new C1001f(c1063x1.f10411g);
        this.f10328h = c1001f;
        H2 h24 = c1063x1.f10406b;
        O2.m.h(h24, "offloadExecutorPool");
        this.f10338p = new U0(h24);
        t2 t2Var = new t2(z4, c1063x1.f10415k, c1063x1.f10416l, c1001f);
        c1063x1.f10428x.getClass();
        s12.getClass();
        X2.v0 v0Var = new X2.v0(443, s12, p02, t2Var, scheduledExecutorServiceC1040p1, c1025l, new X0(this));
        this.f10326g = v0Var;
        X2.x0 x0Var = c1063x1.f10408d;
        this.f10324f = x0Var;
        this.f10348z = n(str, x0Var, v0Var);
        this.f10336n = h22;
        this.f10337o = new U0(h22);
        O o4 = new O(executor, p02);
        this.f10299I = o4;
        o4.b(c0987b1);
        this.f10346x = c1002f0;
        this.f10315Y = c1063x1.f10421q;
        C1037o1 c1037o1 = new C1037o1(this, this.f10348z.a());
        this.f10311U = c1037o1;
        int i4 = C0131o.f2209a;
        Iterator it = ((ArrayList) list).iterator();
        while (it.hasNext()) {
            c1037o1 = new C0129n(c1037o1, (InterfaceC0125l) it.next());
        }
        this.f10347y = c1037o1;
        O2.m.h(c1036o0, "stopwatchSupplier");
        this.f10343u = c1036o0;
        long j4 = c1063x1.f10414j;
        if (j4 == -1) {
            this.f10344v = j4;
        } else {
            O2.m.e(j4 >= C1063x1.f10399A, "invalid idleTimeoutMillis %s", j4);
            this.f10344v = j4;
        }
        this.f10331i0 = new V1(new T0(this), this.f10340r, this.f10332j.s(), new O2.o());
        X2.H h4 = c1063x1.f10412h;
        O2.m.h(h4, "decompressorRegistry");
        this.f10341s = h4;
        C0143y c0143y = c1063x1.f10413i;
        O2.m.h(c0143y, "compressorRegistry");
        this.f10342t = c0143y;
        this.f10318b0 = c1063x1.f10417m;
        this.f10317a0 = c1063x1.f10418n;
        this.f10306P = new U0(this);
        this.f10307Q = new C1021k(j22);
        X2.M m4 = c1063x1.f10420p;
        m4.getClass();
        this.f10310T = m4;
        X2.M.a(m4.f2141a, this);
        if (this.f10315Y) {
            return;
        }
        this.f10314X = true;
    }

    public static void j(C1048s1 c1048s1) {
        if (c1048s1.f10302L) {
            Iterator it = ((HashSet) c1048s1.f10295E).iterator();
            while (it.hasNext()) {
                H0 h02 = (H0) it.next();
                h02.getClass();
                X2.L0 l02 = f10285l0;
                RunnableC1065y0 runnableC1065y0 = new RunnableC1065y0(h02, l02, 0);
                X2.P0 p02 = h02.f9901n;
                p02.execute(runnableC1065y0);
                p02.execute(new RunnableC1065y0(h02, l02, 1));
            }
            Iterator it2 = ((HashSet) c1048s1.f10298H).iterator();
            if (it2.hasNext()) {
                ((I1) it2.next()).getClass();
                throw null;
            }
        }
    }

    public static void k(C1048s1 c1048s1) {
        if (!c1048s1.f10304N && c1048s1.f10301K.get() && ((HashSet) c1048s1.f10295E).isEmpty() && ((HashSet) c1048s1.f10298H).isEmpty()) {
            c1048s1.f10309S.a(ChannelLogger$ChannelLogLevel.INFO, "Terminated");
            X2.M.b(c1048s1.f10310T.f2141a, c1048s1);
            c1048s1.f10335m.b(c1048s1.f10334l);
            c1048s1.f10337o.a();
            c1048s1.f10338p.a();
            c1048s1.f10332j.close();
            c1048s1.f10304N = true;
            c1048s1.f10305O.countDown();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0047, code lost:
        if (r3 != null) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static X2.A0 n(java.lang.String r7, X2.x0 r8, X2.v0 r9) {
        /*
            java.lang.String r0 = "/"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r2 = 0
            java.net.URI r3 = new java.net.URI     // Catch: java.net.URISyntaxException -> Le
            r3.<init>(r7)     // Catch: java.net.URISyntaxException -> Le
            goto L17
        Le:
            r3 = move-exception
            java.lang.String r3 = r3.getMessage()
            r1.append(r3)
            r3 = r2
        L17:
            if (r3 == 0) goto L20
            X2.A0 r3 = r8.c(r3, r9)
            if (r3 == 0) goto L20
            goto L49
        L20:
            java.util.regex.Pattern r3 = io.grpc.internal.C1048s1.f10284k0
            java.util.regex.Matcher r3 = r3.matcher(r7)
            boolean r3 = r3.matches()
            java.lang.String r4 = ""
            if (r3 != 0) goto L51
            java.net.URI r3 = new java.net.URI     // Catch: java.net.URISyntaxException -> L4a
            java.lang.String r5 = r8.b()     // Catch: java.net.URISyntaxException -> L4a
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.net.URISyntaxException -> L4a
            r6.<init>(r0)     // Catch: java.net.URISyntaxException -> L4a
            r6.append(r7)     // Catch: java.net.URISyntaxException -> L4a
            java.lang.String r0 = r6.toString()     // Catch: java.net.URISyntaxException -> L4a
            r3.<init>(r5, r4, r0, r2)     // Catch: java.net.URISyntaxException -> L4a
            X2.A0 r3 = r8.c(r3, r9)
            if (r3 == 0) goto L51
        L49:
            return r3
        L4a:
            r7 = move-exception
            java.lang.IllegalArgumentException r8 = new java.lang.IllegalArgumentException
            r8.<init>(r7)
            throw r8
        L51:
            java.lang.IllegalArgumentException r8 = new java.lang.IllegalArgumentException
            r9 = 2
            java.lang.Object[] r9 = new java.lang.Object[r9]
            r0 = 0
            r9[r0] = r7
            int r7 = r1.length()
            if (r7 <= 0) goto L72
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            java.lang.String r0 = " ("
            r7.<init>(r0)
            r7.append(r1)
            java.lang.String r0 = ")"
            r7.append(r0)
            java.lang.String r4 = r7.toString()
        L72:
            r7 = 1
            r9[r7] = r4
            java.lang.String r7 = "cannot find a NameResolver for %s%s"
            java.lang.String r7 = java.lang.String.format(r7, r9)
            r8.<init>(r7)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.internal.C1048s1.n(java.lang.String, X2.x0, X2.v0):X2.A0");
    }

    @Override // X2.AbstractC0117h
    public final String a() {
        return this.f10347y.a();
    }

    @Override // X2.P
    public final X2.Q e() {
        return this.f10320d;
    }

    @Override // X2.AbstractC0117h
    public final AbstractC0123k g(X2.u0 u0Var, C0115g c0115g) {
        return this.f10347y.g(u0Var, c0115g);
    }

    @Override // X2.AbstractC0114f0
    public final boolean h() {
        return this.f10301K.get();
    }

    @Override // X2.AbstractC0114f0
    public final /* bridge */ /* synthetic */ AbstractC0114f0 i() {
        p();
        return this;
    }

    public final void l(boolean z4) {
        ScheduledFuture scheduledFuture;
        V1 v12 = this.f10331i0;
        v12.f10019f = false;
        if (!z4 || (scheduledFuture = v12.f10020g) == null) {
            return;
        }
        scheduledFuture.cancel(false);
        v12.f10020g = null;
    }

    public final void m() {
        this.f10340r.d();
        if (this.f10301K.get() || this.f10294D) {
            return;
        }
        if (!this.f10323e0.f10376a.isEmpty()) {
            l(false);
        } else {
            o();
        }
        if (this.f10292B != null) {
            return;
        }
        this.f10309S.a(ChannelLogger$ChannelLogLevel.INFO, "Exiting idle mode");
        C1007g1 c1007g1 = new C1007g1(this);
        C1001f c1001f = this.f10328h;
        c1001f.getClass();
        c1007g1.f10116a = new C0985b(c1001f, c1007g1);
        this.f10292B = c1007g1;
        this.f10348z.d(new C1015i1(this, c1007g1, this.f10348z));
        this.f10291A = true;
    }

    public final void o() {
        long j4;
        long j5 = this.f10344v;
        if (j5 == -1) {
            return;
        }
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        V1 v12 = this.f10331i0;
        v12.getClass();
        long nanos = timeUnit.toNanos(j5);
        TimeUnit timeUnit2 = TimeUnit.NANOSECONDS;
        O2.o oVar = v12.f10017d;
        if (oVar.f1523b) {
            oVar.f1522a.getClass();
            int i4 = O2.l.f1520a;
            j4 = (System.nanoTime() - oVar.f1524c) + 0;
        } else {
            j4 = 0;
        }
        long convert = timeUnit2.convert(j4, timeUnit2) + nanos;
        v12.f10019f = true;
        if (convert - v12.f10018e < 0 || v12.f10020g == null) {
            ScheduledFuture scheduledFuture = v12.f10020g;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(false);
            }
            v12.f10020g = v12.f10014a.schedule(new U1(v12, 1, 0), nanos, timeUnit2);
        }
        v12.f10018e = convert;
    }

    public final void p() {
        this.f10309S.a(ChannelLogger$ChannelLogLevel.DEBUG, "shutdown() called");
        if (this.f10301K.compareAndSet(false, true)) {
            T0 t02 = new T0(this, 1);
            X2.P0 p02 = this.f10340r;
            p02.execute(t02);
            C1037o1 c1037o1 = this.f10311U;
            c1037o1.f10197g.f10340r.execute(new RunnableC1023k1(c1037o1, 0));
            p02.execute(new T0(this, 0));
        }
    }

    public final void q(boolean z4) {
        this.f10340r.d();
        if (z4) {
            O2.m.k("nameResolver is not started", this.f10291A);
            O2.m.k("lbHelper is null", this.f10292B != null);
        }
        if (this.f10348z != null) {
            this.f10340r.d();
            X2.O0 o02 = this.f10325f0;
            if (o02 != null) {
                o02.a();
                this.f10325f0 = null;
                this.f10327g0 = null;
            }
            this.f10348z.c();
            this.f10291A = false;
            if (z4) {
                this.f10348z = n(this.f10322e, this.f10324f, this.f10326g);
            } else {
                this.f10348z = null;
            }
        }
        C1007g1 c1007g1 = this.f10292B;
        if (c1007g1 != null) {
            C0985b c0985b = c1007g1.f10116a;
            c0985b.f10057b.c();
            c0985b.f10057b = null;
            this.f10292B = null;
        }
        this.f10293C = null;
    }

    public final String toString() {
        O2.i b4 = O2.j.b(this);
        b4.b("logId", this.f10320d.f2162c);
        b4.a(this.f10322e, "target");
        return b4.toString();
    }
}
