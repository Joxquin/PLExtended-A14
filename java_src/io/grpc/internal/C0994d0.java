package io.grpc.internal;

import com.google.common.base.VerifyException;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.URI;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: io.grpc.internal.d0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0994d0 extends X2.A0 {

    /* renamed from: s  reason: collision with root package name */
    public static final Logger f10067s;

    /* renamed from: t  reason: collision with root package name */
    public static final Set f10068t;

    /* renamed from: u  reason: collision with root package name */
    public static final boolean f10069u;

    /* renamed from: v  reason: collision with root package name */
    public static final boolean f10070v;

    /* renamed from: w  reason: collision with root package name */
    public static final boolean f10071w;

    /* renamed from: x  reason: collision with root package name */
    public static final InterfaceC0990c0 f10072x;

    /* renamed from: y  reason: collision with root package name */
    public static String f10073y;

    /* renamed from: a  reason: collision with root package name */
    public final X2.F0 f10074a;

    /* renamed from: b  reason: collision with root package name */
    public final Random f10075b = new Random();

    /* renamed from: c  reason: collision with root package name */
    public volatile X f10076c = DnsNameResolver$JdkAddressResolver.f9859d;

    /* renamed from: d  reason: collision with root package name */
    public final AtomicReference f10077d = new AtomicReference();

    /* renamed from: e  reason: collision with root package name */
    public final String f10078e;

    /* renamed from: f  reason: collision with root package name */
    public final String f10079f;

    /* renamed from: g  reason: collision with root package name */
    public final int f10080g;

    /* renamed from: h  reason: collision with root package name */
    public final F2 f10081h;

    /* renamed from: i  reason: collision with root package name */
    public final long f10082i;

    /* renamed from: j  reason: collision with root package name */
    public final X2.P0 f10083j;

    /* renamed from: k  reason: collision with root package name */
    public final O2.o f10084k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f10085l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f10086m;

    /* renamed from: n  reason: collision with root package name */
    public Executor f10087n;

    /* renamed from: o  reason: collision with root package name */
    public final boolean f10088o;

    /* renamed from: p  reason: collision with root package name */
    public final X2.x0 f10089p;

    /* renamed from: q  reason: collision with root package name */
    public boolean f10090q;

    /* renamed from: r  reason: collision with root package name */
    public X2.x0 f10091r;

    static {
        InterfaceC0990c0 interfaceC0990c0;
        Logger logger = Logger.getLogger(C0994d0.class.getName());
        f10067s = logger;
        f10068t = Collections.unmodifiableSet(new HashSet(Arrays.asList("clientLanguage", "percentage", "clientHostname", "serviceConfig")));
        String property = System.getProperty("io.grpc.internal.DnsNameResolverProvider.enable_jndi", "true");
        String property2 = System.getProperty("io.grpc.internal.DnsNameResolverProvider.enable_jndi_localhost", "false");
        String property3 = System.getProperty("io.grpc.internal.DnsNameResolverProvider.enable_service_config", "false");
        f10069u = Boolean.parseBoolean(property);
        f10070v = Boolean.parseBoolean(property2);
        f10071w = Boolean.parseBoolean(property3);
        try {
            try {
                try {
                    interfaceC0990c0 = (InterfaceC0990c0) Class.forName("io.grpc.internal.L0", true, C0994d0.class.getClassLoader()).asSubclass(InterfaceC0990c0.class).getConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (Exception e4) {
                    logger.log(Level.FINE, "Can't construct JndiResourceResolverFactory, skipping.", (Throwable) e4);
                }
            } catch (Exception e5) {
                logger.log(Level.FINE, "Can't find JndiResourceResolverFactory ctor, skipping.", (Throwable) e5);
            }
        } catch (ClassCastException e6) {
            logger.log(Level.FINE, "Unable to cast JndiResourceResolverFactory, skipping.", (Throwable) e6);
        } catch (ClassNotFoundException e7) {
            logger.log(Level.FINE, "Unable to find JndiResourceResolverFactory, skipping.", (Throwable) e7);
        }
        if (interfaceC0990c0.b() != null) {
            logger.log(Level.FINE, "JndiResourceResolverFactory not available, skipping.", interfaceC0990c0.b());
            interfaceC0990c0 = null;
        }
        f10072x = interfaceC0990c0;
    }

    public C0994d0(String str, X2.v0 v0Var, C1033n0 c1033n0, O2.o oVar, boolean z4) {
        O2.m.h(v0Var, "args");
        this.f10081h = c1033n0;
        O2.m.h(str, "name");
        URI create = URI.create("//".concat(str));
        O2.m.d("Invalid DNS name: %s", str, create.getHost() != null);
        String authority = create.getAuthority();
        if (authority == null) {
            throw new NullPointerException(O2.p.a("nameUri (%s) doesn't have an authority", create));
        }
        this.f10078e = authority;
        this.f10079f = create.getHost();
        if (create.getPort() == -1) {
            this.f10080g = v0Var.f2239a;
        } else {
            this.f10080g = create.getPort();
        }
        X2.F0 f02 = v0Var.f2240b;
        O2.m.h(f02, "proxyDetector");
        this.f10074a = f02;
        long j4 = 0;
        if (!z4) {
            String property = System.getProperty("networkaddress.cache.ttl");
            long j5 = 30;
            if (property != null) {
                try {
                    j5 = Long.parseLong(property);
                } catch (NumberFormatException unused) {
                    f10067s.log(Level.WARNING, "Property({0}) valid is not valid number format({1}), fall back to default({2})", new Object[]{"networkaddress.cache.ttl", property, 30L});
                }
            }
            j4 = j5 > 0 ? TimeUnit.SECONDS.toNanos(j5) : j5;
        }
        this.f10082i = j4;
        this.f10084k = oVar;
        X2.P0 p02 = v0Var.f2241c;
        O2.m.h(p02, "syncContext");
        this.f10083j = p02;
        Executor executor = v0Var.f2245g;
        this.f10087n = executor;
        this.f10088o = executor == null;
        X2.x0 x0Var = v0Var.f2242d;
        O2.m.h(x0Var, "serviceConfigParser");
        this.f10089p = x0Var;
    }

    public static Map f(Map map, Random random, String str) {
        boolean z4;
        for (Map.Entry entry : map.entrySet()) {
            O2.t.a("Bad key: %s", entry, f10068t.contains(entry.getKey()));
        }
        List c4 = O0.c(map, "clientLanguage");
        boolean z5 = true;
        if (c4 != null && !c4.isEmpty()) {
            Iterator it = c4.iterator();
            while (true) {
                if (it.hasNext()) {
                    if ("java".equalsIgnoreCase((String) it.next())) {
                        z4 = true;
                        break;
                    }
                } else {
                    z4 = false;
                    break;
                }
            }
            if (!z4) {
                return null;
            }
        }
        Double d4 = O0.d(map, "percentage");
        if (d4 != null) {
            int intValue = d4.intValue();
            O2.t.a("Bad percentage: %s", d4, intValue >= 0 && intValue <= 100);
            if (random.nextInt(100) >= intValue) {
                return null;
            }
        }
        List c5 = O0.c(map, "clientHostname");
        if (c5 != null && !c5.isEmpty()) {
            Iterator it2 = c5.iterator();
            while (true) {
                if (it2.hasNext()) {
                    if (((String) it2.next()).equals(str)) {
                        break;
                    }
                } else {
                    z5 = false;
                    break;
                }
            }
            if (!z5) {
                return null;
            }
        }
        Map f4 = O0.f(map, "serviceConfig");
        if (f4 != null) {
            return f4;
        }
        throw new VerifyException(String.format("key '%s' missing in '%s'", map, "serviceConfig"));
    }

    public static List g(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (str.startsWith("grpc_config=")) {
                Object a4 = N0.a(str.substring(12));
                if (!(a4 instanceof List)) {
                    throw new ClassCastException("wrong type " + a4);
                }
                List list2 = (List) a4;
                O0.a(list2);
                arrayList.addAll(list2);
            } else {
                f10067s.log(Level.FINE, "Ignoring non service config {0}", new Object[]{str});
            }
        }
        return arrayList;
    }

    @Override // X2.A0
    public final String a() {
        return this.f10078e;
    }

    @Override // X2.A0
    public final void b() {
        O2.m.k("not started", this.f10091r != null);
        h();
    }

    @Override // X2.A0
    public final void c() {
        if (this.f10086m) {
            return;
        }
        this.f10086m = true;
        Executor executor = this.f10087n;
        if (executor == null || !this.f10088o) {
            return;
        }
        G2.b(this.f10081h, executor);
        this.f10087n = null;
    }

    @Override // X2.A0
    public final void d(X2.x0 x0Var) {
        O2.m.k("already started", this.f10091r == null);
        if (this.f10088o) {
            this.f10087n = (Executor) G2.a(this.f10081h);
        }
        this.f10091r = x0Var;
        h();
    }

    public final Y e() {
        InterfaceC0986b0 interfaceC0986b0;
        InterfaceC0990c0 interfaceC0990c0;
        X2.w0 w0Var;
        String str = this.f10079f;
        Y y4 = new Y();
        try {
            y4.f10036b = i();
            if (f10071w) {
                List emptyList = Collections.emptyList();
                boolean z4 = false;
                if (f10069u) {
                    if ("localhost".equalsIgnoreCase(str)) {
                        z4 = f10070v;
                    } else if (!str.contains(":")) {
                        boolean z5 = true;
                        for (int i4 = 0; i4 < str.length(); i4++) {
                            char charAt = str.charAt(i4);
                            if (charAt != '.') {
                                z5 &= charAt >= '0' && charAt <= '9';
                            }
                        }
                        z4 = true ^ z5;
                    }
                }
                X2.w0 w0Var2 = null;
                if (z4) {
                    interfaceC0986b0 = (InterfaceC0986b0) this.f10077d.get();
                    if (interfaceC0986b0 == null && (interfaceC0990c0 = f10072x) != null) {
                        interfaceC0986b0 = interfaceC0990c0.a();
                    }
                } else {
                    interfaceC0986b0 = null;
                }
                Logger logger = f10067s;
                if (interfaceC0986b0 != null) {
                    try {
                        emptyList = interfaceC0986b0.a("_grpc_config." + str);
                    } catch (Exception e4) {
                        logger.log(Level.FINE, "ServiceConfig resolution failure", (Throwable) e4);
                    }
                }
                if (emptyList.isEmpty()) {
                    logger.log(Level.FINE, "No TXT records found for {0}", new Object[]{str});
                } else {
                    Random random = this.f10075b;
                    if (f10073y == null) {
                        try {
                            f10073y = InetAddress.getLocalHost().getHostName();
                        } catch (UnknownHostException e5) {
                            throw new RuntimeException(e5);
                        }
                    }
                    String str2 = f10073y;
                    try {
                        Iterator it = ((ArrayList) g(emptyList)).iterator();
                        Map map = null;
                        while (it.hasNext()) {
                            try {
                                map = f((Map) it.next(), random, str2);
                                if (map != null) {
                                    break;
                                }
                            } catch (RuntimeException e6) {
                                w0Var = new X2.w0(X2.L0.f2128g.f("failed to pick service config choice").e(e6));
                            }
                        }
                        w0Var = map == null ? null : new X2.w0(map);
                    } catch (IOException | RuntimeException e7) {
                        w0Var = new X2.w0(X2.L0.f2128g.f("failed to parse TXT records").e(e7));
                    }
                    if (w0Var != null) {
                        X2.L0 l02 = w0Var.f2247a;
                        w0Var2 = l02 != null ? new X2.w0(l02) : this.f10089p.e((Map) w0Var.f2248b);
                    }
                }
                y4.f10037c = w0Var2;
            }
            return y4;
        } catch (Exception e8) {
            y4.f10035a = X2.L0.f2135n.f("Unable to resolve host " + str).e(e8);
            return y4;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0034, code lost:
        if (r0.convert(r4, r0) > r2) goto L21;
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void h() {
        /*
            r11 = this;
            boolean r0 = r11.f10090q
            if (r0 != 0) goto L4b
            boolean r0 = r11.f10086m
            if (r0 != 0) goto L4b
            boolean r0 = r11.f10085l
            r1 = 1
            if (r0 == 0) goto L39
            long r2 = r11.f10082i
            r4 = 0
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 == 0) goto L39
            if (r0 <= 0) goto L37
            java.util.concurrent.TimeUnit r0 = java.util.concurrent.TimeUnit.NANOSECONDS
            O2.o r6 = r11.f10084k
            boolean r7 = r6.f1523b
            if (r7 == 0) goto L2e
            O2.s r7 = r6.f1522a
            r7.getClass()
            int r7 = O2.l.f1520a
            long r7 = java.lang.System.nanoTime()
            long r9 = r6.f1524c
            long r7 = r7 - r9
            long r4 = r4 + r7
        L2e:
            long r4 = r0.convert(r4, r0)
            int r0 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r0 <= 0) goto L37
            goto L39
        L37:
            r0 = 0
            goto L3a
        L39:
            r0 = r1
        L3a:
            if (r0 != 0) goto L3d
            goto L4b
        L3d:
            r11.f10090q = r1
            java.util.concurrent.Executor r0 = r11.f10087n
            io.grpc.internal.a0 r1 = new io.grpc.internal.a0
            X2.x0 r2 = r11.f10091r
            r1.<init>(r11, r2)
            r0.execute(r1)
        L4b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.internal.C0994d0.h():void");
    }

    public final List i() {
        try {
            try {
                X x4 = this.f10076c;
                String str = this.f10079f;
                ((DnsNameResolver$JdkAddressResolver) x4).getClass();
                List<InetAddress> unmodifiableList = Collections.unmodifiableList(Arrays.asList(InetAddress.getAllByName(str)));
                ArrayList arrayList = new ArrayList(unmodifiableList.size());
                for (InetAddress inetAddress : unmodifiableList) {
                    arrayList.add(new X2.I(new InetSocketAddress(inetAddress, this.f10080g)));
                }
                return Collections.unmodifiableList(arrayList);
            } catch (Exception e4) {
                O2.r.a(e4);
                throw new RuntimeException(e4);
            }
        } catch (Throwable th) {
            if (0 != 0) {
                f10067s.log(Level.FINE, "Address resolution failure", (Throwable) null);
            }
            throw th;
        }
    }
}
