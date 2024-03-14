package io.grpc.internal;

import X2.InterfaceC0142x;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class W implements InterfaceC1052u {

    /* renamed from: a  reason: collision with root package name */
    public volatile boolean f10021a;

    /* renamed from: b  reason: collision with root package name */
    public InterfaceC1055v f10022b;

    /* renamed from: c  reason: collision with root package name */
    public InterfaceC1052u f10023c;

    /* renamed from: d  reason: collision with root package name */
    public X2.L0 f10024d;

    /* renamed from: f  reason: collision with root package name */
    public V f10026f;

    /* renamed from: g  reason: collision with root package name */
    public long f10027g;

    /* renamed from: h  reason: collision with root package name */
    public long f10028h;

    /* renamed from: e  reason: collision with root package name */
    public List f10025e = new ArrayList();

    /* renamed from: i  reason: collision with root package name */
    public List f10029i = new ArrayList();

    @Override // io.grpc.internal.InterfaceC1052u
    public final void a(int i4) {
        O2.m.k("May only be called after start", this.f10022b != null);
        if (this.f10021a) {
            this.f10023c.a(i4);
        } else {
            p(new P(this, i4, 0));
        }
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void b(int i4) {
        O2.m.k("May only be called before start", this.f10022b == null);
        ((ArrayList) this.f10029i).add(new P(this, i4, 1));
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void c(InterfaceC1055v interfaceC1055v) {
        X2.L0 l02;
        boolean z4;
        O2.m.k("already started", this.f10022b == null);
        synchronized (this) {
            l02 = this.f10024d;
            z4 = this.f10021a;
            if (!z4) {
                V v4 = new V(interfaceC1055v);
                this.f10026f = v4;
                interfaceC1055v = v4;
            }
            this.f10022b = interfaceC1055v;
            this.f10027g = System.nanoTime();
        }
        if (l02 != null) {
            interfaceC1055v.d(l02, ClientStreamListener$RpcProgress.PROCESSED, new X2.r0());
        } else if (z4) {
            r(interfaceC1055v);
        }
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void d(X2.E e4) {
        O2.m.k("May only be called before start", this.f10022b == null);
        this.f10029i.add(new S(2, this, e4));
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final boolean e() {
        if (this.f10021a) {
            return this.f10023c.e();
        }
        return false;
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void f(X2.H h4) {
        O2.m.k("May only be called before start", this.f10022b == null);
        O2.m.h(h4, "decompressorRegistry");
        ((ArrayList) this.f10029i).add(new S(1, this, h4));
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void flush() {
        O2.m.k("May only be called after start", this.f10022b != null);
        if (this.f10021a) {
            this.f10023c.flush();
        } else {
            p(new Q(2, this));
        }
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public void g(X2.L0 l02) {
        boolean z4 = true;
        O2.m.k("May only be called after start", this.f10022b != null);
        O2.m.h(l02, "reason");
        synchronized (this) {
            try {
                InterfaceC1052u interfaceC1052u = this.f10023c;
                if (interfaceC1052u == null) {
                    G1 g12 = G1.f9883a;
                    if (interfaceC1052u != null) {
                        z4 = false;
                    }
                    O2.m.l("realStream already set to %s", interfaceC1052u, z4);
                    this.f10023c = g12;
                    this.f10028h = System.nanoTime();
                    this.f10024d = l02;
                    z4 = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z4) {
            p(new S(5, this, l02));
            return;
        }
        q();
        s(l02);
        this.f10022b.d(l02, ClientStreamListener$RpcProgress.PROCESSED, new X2.r0());
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void h(int i4) {
        O2.m.k("May only be called before start", this.f10022b == null);
        ((ArrayList) this.f10029i).add(new P(this, i4, 2));
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void i(InputStream inputStream) {
        O2.m.k("May only be called after start", this.f10022b != null);
        O2.m.h(inputStream, "message");
        if (this.f10021a) {
            this.f10023c.i(inputStream);
        } else {
            p(new S(4, this, inputStream));
        }
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void j(String str) {
        O2.m.k("May only be called before start", this.f10022b == null);
        O2.m.h(str, "authority");
        ((ArrayList) this.f10029i).add(new S(3, this, str));
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public void k(C1053u0 c1053u0) {
        synchronized (this) {
            if (this.f10022b == null) {
                return;
            }
            if (this.f10023c != null) {
                c1053u0.a(Long.valueOf(this.f10028h - this.f10027g), "buffered_nanos");
                this.f10023c.k(c1053u0);
            } else {
                c1053u0.a(Long.valueOf(System.nanoTime() - this.f10027g), "buffered_nanos");
                c1053u0.f10381a.add("waiting_for_connection");
            }
        }
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void l() {
        O2.m.k("May only be called before start", this.f10022b == null);
        this.f10029i.add(new Q(0, this));
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void m() {
        O2.m.k("May only be called after start", this.f10022b != null);
        p(new Q(3, this));
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void n(boolean z4) {
        O2.m.k("May only be called before start", this.f10022b == null);
        ((ArrayList) this.f10029i).add(new T(this, z4));
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void o(InterfaceC0142x interfaceC0142x) {
        O2.m.k("May only be called before start", this.f10022b == null);
        O2.m.h(interfaceC0142x, "compressor");
        ((ArrayList) this.f10029i).add(new S(0, this, interfaceC0142x));
    }

    public final void p(Runnable runnable) {
        O2.m.k("May only be called after start", this.f10022b != null);
        synchronized (this) {
            if (this.f10021a) {
                runnable.run();
            } else {
                this.f10025e.add(runnable);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0054, code lost:
        r0 = r1.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x005c, code lost:
        if (r0.hasNext() == false) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x005e, code lost:
        ((java.lang.Runnable) r0.next()).run();
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x004e A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0019  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void q() {
        /*
            r5 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
        L5:
            monitor-enter(r5)
            java.util.List r1 = r5.f10025e     // Catch: java.lang.Throwable -> L6d
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L6d
            if (r1 == 0) goto L4f
            r0 = 0
            r5.f10025e = r0     // Catch: java.lang.Throwable -> L6d
            r1 = 1
            r5.f10021a = r1     // Catch: java.lang.Throwable -> L6d
            io.grpc.internal.V r2 = r5.f10026f     // Catch: java.lang.Throwable -> L6d
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L6d
            if (r2 == 0) goto L4e
            java.util.ArrayList r5 = new java.util.ArrayList
            r5.<init>()
        L1e:
            monitor-enter(r2)
            java.util.List r3 = r2.f10012c     // Catch: java.lang.Throwable -> L4b
            boolean r3 = r3.isEmpty()     // Catch: java.lang.Throwable -> L4b
            if (r3 == 0) goto L2d
            r2.f10012c = r0     // Catch: java.lang.Throwable -> L4b
            r2.f10011b = r1     // Catch: java.lang.Throwable -> L4b
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L4b
            goto L4e
        L2d:
            java.util.List r3 = r2.f10012c     // Catch: java.lang.Throwable -> L4b
            r2.f10012c = r5     // Catch: java.lang.Throwable -> L4b
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L4b
            java.util.Iterator r5 = r3.iterator()
        L36:
            boolean r4 = r5.hasNext()
            if (r4 == 0) goto L46
            java.lang.Object r4 = r5.next()
            java.lang.Runnable r4 = (java.lang.Runnable) r4
            r4.run()
            goto L36
        L46:
            r3.clear()
            r5 = r3
            goto L1e
        L4b:
            r5 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L4b
            throw r5
        L4e:
            return
        L4f:
            java.util.List r1 = r5.f10025e     // Catch: java.lang.Throwable -> L6d
            r5.f10025e = r0     // Catch: java.lang.Throwable -> L6d
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L6d
            java.util.Iterator r0 = r1.iterator()
        L58:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto L68
            java.lang.Object r2 = r0.next()
            java.lang.Runnable r2 = (java.lang.Runnable) r2
            r2.run()
            goto L58
        L68:
            r1.clear()
            r0 = r1
            goto L5
        L6d:
            r0 = move-exception
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L6d
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.internal.W.q():void");
    }

    public final void r(InterfaceC1055v interfaceC1055v) {
        Iterator it = ((ArrayList) this.f10029i).iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        this.f10029i = null;
        this.f10023c.c(interfaceC1055v);
    }

    public void s(X2.L0 l02) {
    }

    public final Q t(InterfaceC1052u interfaceC1052u) {
        synchronized (this) {
            if (this.f10023c != null) {
                return null;
            }
            O2.m.h(interfaceC1052u, "stream");
            InterfaceC1052u interfaceC1052u2 = this.f10023c;
            O2.m.l("realStream already set to %s", interfaceC1052u2, interfaceC1052u2 == null);
            this.f10023c = interfaceC1052u;
            this.f10028h = System.nanoTime();
            InterfaceC1055v interfaceC1055v = this.f10022b;
            if (interfaceC1055v == null) {
                this.f10025e = null;
                this.f10021a = true;
            }
            if (interfaceC1055v == null) {
                return null;
            }
            r(interfaceC1055v);
            return new Q(1, this);
        }
    }
}
