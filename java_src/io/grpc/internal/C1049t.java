package io.grpc.internal;

import X2.AbstractC0121j;
import X2.AbstractC0123k;
import X2.C0115g;
import X2.C0143y;
import io.grpc.MethodDescriptor$MethodType;
import java.nio.charset.Charset;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: io.grpc.internal.t  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1049t extends AbstractC0123k {

    /* renamed from: t  reason: collision with root package name */
    public static final Logger f10355t = Logger.getLogger(C1049t.class.getName());

    /* renamed from: u  reason: collision with root package name */
    public static final byte[] f10356u = "gzip".getBytes(Charset.forName("US-ASCII"));

    /* renamed from: a  reason: collision with root package name */
    public final X2.u0 f10357a;

    /* renamed from: b  reason: collision with root package name */
    public final c3.d f10358b;

    /* renamed from: c  reason: collision with root package name */
    public final Executor f10359c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f10360d;

    /* renamed from: e  reason: collision with root package name */
    public final C1021k f10361e;

    /* renamed from: f  reason: collision with root package name */
    public final X2.C f10362f;

    /* renamed from: g  reason: collision with root package name */
    public volatile ScheduledFuture f10363g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f10364h;

    /* renamed from: i  reason: collision with root package name */
    public C0115g f10365i;

    /* renamed from: j  reason: collision with root package name */
    public InterfaceC1052u f10366j;

    /* renamed from: k  reason: collision with root package name */
    public volatile boolean f10367k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f10368l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f10369m;

    /* renamed from: n  reason: collision with root package name */
    public final C0987b1 f10370n;

    /* renamed from: p  reason: collision with root package name */
    public final ScheduledExecutorService f10372p;

    /* renamed from: q  reason: collision with root package name */
    public boolean f10373q;

    /* renamed from: o  reason: collision with root package name */
    public final r f10371o = new r(this);

    /* renamed from: r  reason: collision with root package name */
    public X2.H f10374r = X2.H.f2110d;

    /* renamed from: s  reason: collision with root package name */
    public C0143y f10375s = C0143y.f2249b;

    public C1049t(X2.u0 u0Var, Executor executor, C0115g c0115g, C0987b1 c0987b1, ScheduledExecutorService scheduledExecutorService, C1021k c1021k) {
        this.f10357a = u0Var;
        String str = u0Var.f2231b;
        System.identityHashCode(this);
        c3.c.f4274a.getClass();
        this.f10358b = c3.a.f4272a;
        boolean z4 = true;
        if (executor == com.google.common.util.concurrent.e.a()) {
            this.f10359c = new u2();
            this.f10360d = true;
        } else {
            this.f10359c = new y2(executor);
            this.f10360d = false;
        }
        this.f10361e = c1021k;
        this.f10362f = X2.C.b();
        MethodDescriptor$MethodType methodDescriptor$MethodType = MethodDescriptor$MethodType.UNARY;
        MethodDescriptor$MethodType methodDescriptor$MethodType2 = u0Var.f2230a;
        if (methodDescriptor$MethodType2 != methodDescriptor$MethodType && methodDescriptor$MethodType2 != MethodDescriptor$MethodType.SERVER_STREAMING) {
            z4 = false;
        }
        this.f10364h = z4;
        this.f10365i = c0115g;
        this.f10370n = c0987b1;
        this.f10372p = scheduledExecutorService;
    }

    @Override // X2.AbstractC0123k
    public final void a(String str, Throwable th) {
        c3.c.a();
        try {
            f(str, th);
        } finally {
            c3.c.b();
        }
    }

    @Override // X2.AbstractC0123k
    public final void b() {
        c3.c.a();
        try {
            O2.m.k("Not started", this.f10366j != null);
            O2.m.k("call was cancelled", !this.f10368l);
            O2.m.k("call already half-closed", !this.f10369m);
            this.f10369m = true;
            this.f10366j.m();
        } finally {
            c3.c.b();
        }
    }

    @Override // X2.AbstractC0123k
    public final void c(int i4) {
        c3.c.a();
        try {
            boolean z4 = true;
            O2.m.k("Not started", this.f10366j != null);
            if (i4 < 0) {
                z4 = false;
            }
            O2.m.b("Number requested must be non-negative", z4);
            this.f10366j.a(i4);
        } finally {
            c3.c.b();
        }
    }

    @Override // X2.AbstractC0123k
    public final void d(Object obj) {
        c3.c.a();
        try {
            h(obj);
        } finally {
            c3.c.b();
        }
    }

    @Override // X2.AbstractC0123k
    public final void e(AbstractC0121j abstractC0121j, X2.r0 r0Var) {
        c3.c.a();
        try {
            i(abstractC0121j, r0Var);
        } finally {
            c3.c.b();
        }
    }

    public final void f(String str, Throwable th) {
        if (str == null && th == null) {
            th = new CancellationException("Cancelled without a message or cause");
            f10355t.log(Level.WARNING, "Cancelling without a message or cause is suboptimal", th);
        }
        if (this.f10368l) {
            return;
        }
        this.f10368l = true;
        try {
            if (this.f10366j != null) {
                X2.L0 l02 = X2.L0.f2127f;
                X2.L0 f4 = str != null ? l02.f(str) : l02.f("Call cancelled without message");
                if (th != null) {
                    f4 = f4.e(th);
                }
                this.f10366j.g(f4);
            }
        } finally {
            g();
        }
    }

    public final void g() {
        this.f10362f.getClass();
        ScheduledFuture scheduledFuture = this.f10363g;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
    }

    public final void h(Object obj) {
        O2.m.k("Not started", this.f10366j != null);
        O2.m.k("call was cancelled", !this.f10368l);
        O2.m.k("call was half-closed", !this.f10369m);
        try {
            InterfaceC1052u interfaceC1052u = this.f10366j;
            if (interfaceC1052u instanceof r2) {
                ((r2) interfaceC1052u).A(obj);
            } else {
                interfaceC1052u.i(this.f10357a.f2233d.a(obj));
            }
            if (this.f10364h) {
                return;
            }
            this.f10366j.flush();
        } catch (Error e4) {
            this.f10366j.g(X2.L0.f2127f.f("Client sendMessage() failed with Error"));
            throw e4;
        } catch (RuntimeException e5) {
            this.f10366j.g(X2.L0.f2127f.e(e5).f("Failed to stream message"));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x006e, code lost:
        if ((r10 < 0 ? 65535 : r10 > 0 ? 1 : 0) < 0) goto L24;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v7, types: [X2.x] */
    /* JADX WARN: Type inference failed for: r19v0, types: [java.lang.Object, X2.r0] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void i(X2.AbstractC0121j r18, X2.r0 r19) {
        /*
            Method dump skipped, instructions count: 918
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.internal.C1049t.i(X2.j, X2.r0):void");
    }

    public final String toString() {
        O2.i b4 = O2.j.b(this);
        b4.a(this.f10357a, "method");
        return b4.toString();
    }
}
