package io.grpc.internal;

import X2.AbstractC0111e;
import X2.AbstractC0116g0;
import X2.C0143y;
import java.net.SocketAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: io.grpc.internal.x1  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1063x1 extends AbstractC0116g0 {

    /* renamed from: a  reason: collision with root package name */
    public final H2 f10405a;

    /* renamed from: b  reason: collision with root package name */
    public final H2 f10406b;

    /* renamed from: c  reason: collision with root package name */
    public final List f10407c;

    /* renamed from: d  reason: collision with root package name */
    public final X2.x0 f10408d;

    /* renamed from: e  reason: collision with root package name */
    public final String f10409e;

    /* renamed from: f  reason: collision with root package name */
    public final AbstractC0111e f10410f;

    /* renamed from: g  reason: collision with root package name */
    public final String f10411g;

    /* renamed from: h  reason: collision with root package name */
    public final X2.H f10412h;

    /* renamed from: i  reason: collision with root package name */
    public final C0143y f10413i;

    /* renamed from: j  reason: collision with root package name */
    public final long f10414j;

    /* renamed from: k  reason: collision with root package name */
    public final int f10415k;

    /* renamed from: l  reason: collision with root package name */
    public final int f10416l;

    /* renamed from: m  reason: collision with root package name */
    public final long f10417m;

    /* renamed from: n  reason: collision with root package name */
    public final long f10418n;

    /* renamed from: o  reason: collision with root package name */
    public final boolean f10419o;

    /* renamed from: p  reason: collision with root package name */
    public final X2.M f10420p;

    /* renamed from: q  reason: collision with root package name */
    public final boolean f10421q;

    /* renamed from: r  reason: collision with root package name */
    public final boolean f10422r;

    /* renamed from: s  reason: collision with root package name */
    public final boolean f10423s;

    /* renamed from: t  reason: collision with root package name */
    public final boolean f10424t;

    /* renamed from: u  reason: collision with root package name */
    public final boolean f10425u;

    /* renamed from: v  reason: collision with root package name */
    public final boolean f10426v;

    /* renamed from: w  reason: collision with root package name */
    public final InterfaceC1051t1 f10427w;

    /* renamed from: x  reason: collision with root package name */
    public final C1060w1 f10428x;

    /* renamed from: y  reason: collision with root package name */
    public static final Logger f10403y = Logger.getLogger(C1063x1.class.getName());

    /* renamed from: z  reason: collision with root package name */
    public static final long f10404z = TimeUnit.MINUTES.toMillis(30);

    /* renamed from: A  reason: collision with root package name */
    public static final long f10399A = TimeUnit.SECONDS.toMillis(1);

    /* renamed from: B  reason: collision with root package name */
    public static final H2 f10400B = new H2(C1044r0.f10244k);

    /* renamed from: C  reason: collision with root package name */
    public static final X2.H f10401C = X2.H.f2110d;

    /* renamed from: D  reason: collision with root package name */
    public static final C0143y f10402D = C0143y.f2249b;

    public C1063x1(SocketAddress socketAddress, String str, io.grpc.binder.b bVar) {
        X2.E0 e02;
        H2 h22 = f10400B;
        this.f10405a = h22;
        this.f10406b = h22;
        this.f10407c = new ArrayList();
        Logger logger = X2.E0.f2100e;
        synchronized (X2.E0.class) {
            if (X2.E0.f2101f == null) {
                ArrayList arrayList = new ArrayList();
                try {
                    arrayList.add(C0998e0.class);
                } catch (ClassNotFoundException e4) {
                    X2.E0.f2100e.log(Level.FINE, "Unable to find DNS NameResolver", (Throwable) e4);
                }
                List<X2.B0> a4 = X2.I0.a(X2.B0.class, Collections.unmodifiableList(arrayList), X2.B0.class.getClassLoader(), new X2.D0());
                if (a4.isEmpty()) {
                    X2.E0.f2100e.warning("No NameResolverProviders found via ServiceLoader, including for DNS. This is probably due to a broken build. If using ProGuard, check your configuration");
                }
                X2.E0.f2101f = new X2.E0();
                for (X2.B0 b02 : a4) {
                    Logger logger2 = X2.E0.f2100e;
                    logger2.fine("Service loader found " + b02);
                    if (b02.f()) {
                        X2.E0 e03 = X2.E0.f2101f;
                        synchronized (e03) {
                            O2.m.b("isAvailable() returned false", b02.f());
                            e03.f2104c.add(b02);
                        }
                    }
                }
                X2.E0.f2101f.a();
            }
            e02 = X2.E0.f2101f;
        }
        this.f10408d = e02.f2102a;
        this.f10411g = "pick_first";
        this.f10412h = f10401C;
        this.f10413i = f10402D;
        this.f10414j = f10404z;
        this.f10415k = 5;
        this.f10416l = 5;
        this.f10417m = 16777216L;
        this.f10418n = 1048576L;
        this.f10419o = true;
        this.f10420p = X2.M.f2140d;
        this.f10421q = true;
        this.f10422r = true;
        this.f10423s = true;
        this.f10424t = true;
        this.f10425u = true;
        this.f10426v = true;
        try {
            this.f10409e = new URI("directaddress", "", "/" + socketAddress, null).toString();
            this.f10410f = null;
            this.f10427w = bVar;
            this.f10408d = new C1057v1(socketAddress, str);
            this.f10428x = new C1060w1();
        } catch (URISyntaxException e5) {
            throw new RuntimeException(e5);
        }
    }
}
