package io.grpc.internal;

import X2.AbstractC0121j;
import X2.AbstractC0123k;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.logging.Logger;
/* loaded from: classes.dex */
public class L extends AbstractC0123k {

    /* renamed from: j  reason: collision with root package name */
    public static final I f9929j;

    /* renamed from: a  reason: collision with root package name */
    public final ScheduledFuture f9930a;

    /* renamed from: b  reason: collision with root package name */
    public final Executor f9931b;

    /* renamed from: c  reason: collision with root package name */
    public final X2.C f9932c;

    /* renamed from: d  reason: collision with root package name */
    public volatile boolean f9933d;

    /* renamed from: e  reason: collision with root package name */
    public AbstractC0121j f9934e;

    /* renamed from: f  reason: collision with root package name */
    public AbstractC0123k f9935f;

    /* renamed from: g  reason: collision with root package name */
    public X2.L0 f9936g;

    /* renamed from: h  reason: collision with root package name */
    public List f9937h = new ArrayList();

    /* renamed from: i  reason: collision with root package name */
    public K f9938i;

    static {
        Logger.getLogger(L.class.getName());
        f9929j = new I();
    }

    public L(Executor executor, ScheduledExecutorServiceC1040p1 scheduledExecutorServiceC1040p1, X2.E e4) {
        ScheduledFuture schedule;
        O2.m.h(executor, "callExecutor");
        this.f9931b = executor;
        O2.m.h(scheduledExecutorServiceC1040p1, "scheduler");
        X2.C b4 = X2.C.b();
        this.f9932c = b4;
        b4.getClass();
        if (e4 == null) {
            schedule = null;
        } else {
            TimeUnit timeUnit = TimeUnit.NANOSECONDS;
            long min = Math.min(Long.MAX_VALUE, e4.c(timeUnit));
            long abs = Math.abs(min);
            TimeUnit timeUnit2 = TimeUnit.SECONDS;
            long nanos = abs / timeUnit2.toNanos(1L);
            long abs2 = Math.abs(min) % timeUnit2.toNanos(1L);
            StringBuilder sb = new StringBuilder();
            if (min < 0) {
                sb.append("ClientCall started after deadline exceeded. Deadline exceeded after -");
            } else {
                sb.append("Deadline exceeded after ");
            }
            sb.append(nanos);
            sb.append(String.format(Locale.US, ".%09d", Long.valueOf(abs2)));
            sb.append("s. ");
            schedule = scheduledExecutorServiceC1040p1.schedule(new E(0, this, sb), min, timeUnit);
        }
        this.f9930a = schedule;
    }

    @Override // X2.AbstractC0123k
    public final void a(String str, Throwable th) {
        X2.L0 l02 = X2.L0.f2127f;
        X2.L0 f4 = str != null ? l02.f(str) : l02.f("Call cancelled without message");
        if (th != null) {
            f4 = f4.e(th);
        }
        g(f4, false);
    }

    @Override // X2.AbstractC0123k
    public final void b() {
        h(new H(0, this));
    }

    @Override // X2.AbstractC0123k
    public final void c(int i4) {
        if (this.f9933d) {
            this.f9935f.c(i4);
        } else {
            h(new G(this, i4));
        }
    }

    @Override // X2.AbstractC0123k
    public final void d(Object obj) {
        if (this.f9933d) {
            this.f9935f.d(obj);
        } else {
            h(new E(2, this, obj));
        }
    }

    @Override // X2.AbstractC0123k
    public final void e(AbstractC0121j abstractC0121j, X2.r0 r0Var) {
        X2.L0 l02;
        boolean z4;
        O2.m.k("already started", this.f9934e == null);
        synchronized (this) {
            O2.m.h(abstractC0121j, "listener");
            this.f9934e = abstractC0121j;
            l02 = this.f9936g;
            z4 = this.f9933d;
            if (!z4) {
                K k4 = new K(abstractC0121j);
                this.f9938i = k4;
                abstractC0121j = k4;
            }
        }
        if (l02 != null) {
            this.f9931b.execute(new J(this, abstractC0121j, l02));
        } else if (z4) {
            this.f9935f.e(abstractC0121j, r0Var);
        } else {
            h(new D(this, abstractC0121j, r0Var, 0));
        }
    }

    public void f() {
    }

    public final void g(X2.L0 l02, boolean z4) {
        AbstractC0121j abstractC0121j;
        boolean z5;
        synchronized (this) {
            try {
                AbstractC0123k abstractC0123k = this.f9935f;
                if (abstractC0123k == null) {
                    I i4 = f9929j;
                    z5 = false;
                    O2.m.l("realCall already set to %s", abstractC0123k, abstractC0123k == null);
                    ScheduledFuture scheduledFuture = this.f9930a;
                    if (scheduledFuture != null) {
                        scheduledFuture.cancel(false);
                    }
                    this.f9935f = i4;
                    abstractC0121j = this.f9934e;
                    this.f9936g = l02;
                } else if (z4) {
                    return;
                } else {
                    abstractC0121j = null;
                    z5 = true;
                }
                if (z5) {
                    h(new E(1, this, l02));
                } else {
                    if (abstractC0121j != null) {
                        this.f9931b.execute(new J(this, abstractC0121j, l02));
                    }
                    i();
                }
                f();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void h(Runnable runnable) {
        synchronized (this) {
            if (this.f9933d) {
                runnable.run();
            } else {
                this.f9937h.add(runnable);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0029, code lost:
        r0 = r1.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0031, code lost:
        if (r0.hasNext() == false) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0033, code lost:
        ((java.lang.Runnable) r0.next()).run();
     */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0019  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void i() {
        /*
            r3 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
        L5:
            monitor-enter(r3)
            java.util.List r1 = r3.f9937h     // Catch: java.lang.Throwable -> L42
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L42
            if (r1 == 0) goto L24
            r0 = 0
            r3.f9937h = r0     // Catch: java.lang.Throwable -> L42
            r0 = 1
            r3.f9933d = r0     // Catch: java.lang.Throwable -> L42
            io.grpc.internal.K r0 = r3.f9938i     // Catch: java.lang.Throwable -> L42
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L42
            if (r0 == 0) goto L23
            java.util.concurrent.Executor r1 = r3.f9931b
            io.grpc.internal.F r2 = new io.grpc.internal.F
            r2.<init>(r3, r0)
            r1.execute(r2)
        L23:
            return
        L24:
            java.util.List r1 = r3.f9937h     // Catch: java.lang.Throwable -> L42
            r3.f9937h = r0     // Catch: java.lang.Throwable -> L42
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L42
            java.util.Iterator r0 = r1.iterator()
        L2d:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto L3d
            java.lang.Object r2 = r0.next()
            java.lang.Runnable r2 = (java.lang.Runnable) r2
            r2.run()
            goto L2d
        L3d:
            r1.clear()
            r0 = r1
            goto L5
        L42:
            r0 = move-exception
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L42
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.internal.L.i():void");
    }

    public final String toString() {
        O2.i b4 = O2.j.b(this);
        b4.a(this.f9935f, "realCall");
        return b4.toString();
    }
}
