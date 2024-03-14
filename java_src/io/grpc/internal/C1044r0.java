package io.grpc.internal;

import X2.AbstractC0130n0;
import X2.AbstractC0133p;
import X2.C0107c;
import X2.C0113f;
import X2.C0115g;
import X2.C0118h0;
import X2.C0120i0;
import X2.C0134p0;
import X2.C0135q;
import java.nio.charset.Charset;
import java.util.BitSet;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import java.util.logging.Logger;
/* renamed from: io.grpc.internal.r0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1044r0 {

    /* renamed from: a  reason: collision with root package name */
    public static final Logger f10234a = Logger.getLogger(C1044r0.class.getName());

    /* renamed from: b  reason: collision with root package name */
    public static final C0120i0 f10235b;

    /* renamed from: c  reason: collision with root package name */
    public static final C0120i0 f10236c;

    /* renamed from: d  reason: collision with root package name */
    public static final C0134p0 f10237d;

    /* renamed from: e  reason: collision with root package name */
    public static final C0120i0 f10238e;

    /* renamed from: f  reason: collision with root package name */
    public static final C0134p0 f10239f;

    /* renamed from: g  reason: collision with root package name */
    public static final C0120i0 f10240g;

    /* renamed from: h  reason: collision with root package name */
    public static final S1 f10241h;

    /* renamed from: i  reason: collision with root package name */
    public static final C0113f f10242i;

    /* renamed from: j  reason: collision with root package name */
    public static final C1030m0 f10243j;

    /* renamed from: k  reason: collision with root package name */
    public static final C1033n0 f10244k;

    /* renamed from: l  reason: collision with root package name */
    public static final C1033n0 f10245l;

    /* renamed from: m  reason: collision with root package name */
    public static final C1036o0 f10246m;

    static {
        Charset.forName("US-ASCII");
        f10235b = new C0120i0("grpc-timeout", new C1036o0());
        C0118h0 c0118h0 = X2.r0.f2220d;
        f10236c = new C0120i0("grpc-encoding", c0118h0);
        C1036o0 c1036o0 = new C1036o0();
        boolean z4 = "grpc-accept-encoding".charAt(0) == ':';
        BitSet bitSet = AbstractC0130n0.f2205d;
        f10237d = new C0134p0("grpc-accept-encoding", z4, c1036o0);
        f10238e = new C0120i0("content-encoding", c0118h0);
        f10239f = new C0134p0("accept-encoding", "accept-encoding".charAt(0) == ':', new C1036o0());
        f10240g = new C0120i0("content-length", c0118h0);
        AbstractC0130n0.a("content-type", c0118h0);
        AbstractC0130n0.a("te", c0118h0);
        AbstractC0130n0.a("user-agent", c0118h0);
        int i4 = O2.c.f1508b;
        O2.d.f1509b.getClass();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        timeUnit.toNanos(20L);
        TimeUnit.HOURS.toNanos(2L);
        timeUnit.toNanos(20L);
        f10241h = new S1();
        f10242i = new C0113f("io.grpc.internal.CALL_OPTIONS_RPC_OWNED_BY_BALANCER");
        f10243j = new C1030m0();
        f10244k = new C1033n0(0);
        f10245l = new C1033n0(1);
        f10246m = new C1036o0();
    }

    public static X2.r[] a(C0115g c0115g, X2.r0 r0Var, int i4, boolean z4) {
        List list = c0115g.f2197g;
        int size = list.size() + 1;
        X2.r[] rVarArr = new X2.r[size];
        C0107c c0107c = C0107c.f2181b;
        C0115g c0115g2 = C0115g.f2190k;
        C0135q c0135q = new C0135q(c0107c, c0115g, i4, z4);
        for (int i5 = 0; i5 < list.size(); i5++) {
            AbstractC0133p abstractC0133p = (AbstractC0133p) list.get(i5);
            rVarArr[i5] = abstractC0133p instanceof C0992c2 ? abstractC0133p.a() : new C1042q0(abstractC0133p, c0135q, r0Var);
        }
        rVarArr[size - 1] = f10243j;
        return rVarArr;
    }

    public static R2.k b(String str) {
        Boolean bool = Boolean.TRUE;
        String.format(Locale.ROOT, str, 0);
        return new R2.k(Executors.defaultThreadFactory(), str, new AtomicLong(0L), bool);
    }

    public static InterfaceC1058w c(X2.W w4, boolean z4) {
        X2.Y y4 = w4.f2170a;
        E1 a4 = y4 != null ? ((L2) y4.c()).a() : null;
        if (a4 != null) {
            AbstractC0133p abstractC0133p = w4.f2171b;
            return abstractC0133p == null ? a4 : new C1039p0(abstractC0133p, a4);
        }
        X2.L0 l02 = w4.f2172c;
        if (!l02.d()) {
            if (w4.f2173d) {
                return new C1014i0(l02, ClientStreamListener$RpcProgress.DROPPED);
            }
            if (!z4) {
                return new C1014i0(l02, ClientStreamListener$RpcProgress.PROCESSED);
            }
        }
        return null;
    }
}
