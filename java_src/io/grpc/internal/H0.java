package io.grpc.internal;

import X2.AbstractC0119i;
import X2.C0107c;
import X2.C0144z;
import io.grpc.ChannelLogger$ChannelLogLevel;
import io.grpc.ConnectivityState;
import io.grpc.HttpConnectProxiedSocketAddress;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
import java.util.logging.Level;
/* loaded from: classes.dex */
public final class H0 implements X2.P, L2 {

    /* renamed from: A  reason: collision with root package name */
    public X2.L0 f9890A;

    /* renamed from: d  reason: collision with root package name */
    public final X2.Q f9891d;

    /* renamed from: e  reason: collision with root package name */
    public final String f9892e;

    /* renamed from: f  reason: collision with root package name */
    public final String f9893f;

    /* renamed from: g  reason: collision with root package name */
    public final C1002f0 f9894g;

    /* renamed from: h  reason: collision with root package name */
    public final U0 f9895h;

    /* renamed from: i  reason: collision with root package name */
    public final InterfaceC1064y f9896i;

    /* renamed from: j  reason: collision with root package name */
    public final ScheduledExecutorService f9897j;

    /* renamed from: k  reason: collision with root package name */
    public final X2.M f9898k;

    /* renamed from: l  reason: collision with root package name */
    public final C1021k f9899l;

    /* renamed from: m  reason: collision with root package name */
    public final AbstractC0119i f9900m;

    /* renamed from: n  reason: collision with root package name */
    public final X2.P0 f9901n;

    /* renamed from: o  reason: collision with root package name */
    public final D0 f9902o;

    /* renamed from: p  reason: collision with root package name */
    public volatile List f9903p;

    /* renamed from: q  reason: collision with root package name */
    public C1006g0 f9904q;

    /* renamed from: r  reason: collision with root package name */
    public final O2.o f9905r;

    /* renamed from: s  reason: collision with root package name */
    public X2.O0 f9906s;

    /* renamed from: t  reason: collision with root package name */
    public X2.O0 f9907t;

    /* renamed from: u  reason: collision with root package name */
    public E1 f9908u;

    /* renamed from: x  reason: collision with root package name */
    public InterfaceC1067z f9911x;

    /* renamed from: y  reason: collision with root package name */
    public volatile E1 f9912y;

    /* renamed from: v  reason: collision with root package name */
    public final Collection f9909v = new ArrayList();

    /* renamed from: w  reason: collision with root package name */
    public final C1056v0 f9910w = new C1056v0(this);

    /* renamed from: z  reason: collision with root package name */
    public volatile C0144z f9913z = C0144z.a(ConnectivityState.IDLE);

    public H0(List list, String str, C1002f0 c1002f0, C1017j c1017j, ScheduledExecutorService scheduledExecutorService, O2.q qVar, X2.P0 p02, U0 u02, X2.M m4, C1021k c1021k, C1029m c1029m, X2.Q q4, C1025l c1025l) {
        O2.m.h(list, "addressGroups");
        O2.m.b("addressGroups is empty", !list.isEmpty());
        for (Object obj : list) {
            O2.m.h(obj, "addressGroups contains null entry");
        }
        List unmodifiableList = Collections.unmodifiableList(new ArrayList(list));
        this.f9903p = unmodifiableList;
        this.f9902o = new D0(unmodifiableList);
        this.f9892e = str;
        this.f9893f = null;
        this.f9894g = c1002f0;
        this.f9896i = c1017j;
        this.f9897j = scheduledExecutorService;
        this.f9905r = (O2.o) qVar.get();
        this.f9901n = p02;
        this.f9895h = u02;
        this.f9898k = m4;
        this.f9899l = c1021k;
        O2.m.h(c1029m, "channelTracer");
        O2.m.h(q4, "logId");
        this.f9891d = q4;
        O2.m.h(c1025l, "channelLogger");
        this.f9900m = c1025l;
    }

    public static void g(H0 h02, ConnectivityState connectivityState) {
        h02.f9901n.d();
        h02.i(C0144z.a(connectivityState));
    }

    public static void h(H0 h02) {
        InetSocketAddress inetSocketAddress;
        HttpConnectProxiedSocketAddress httpConnectProxiedSocketAddress;
        X2.P0 p02 = h02.f9901n;
        p02.d();
        boolean z4 = true;
        O2.m.k("Should have no reconnectTask scheduled", h02.f9906s == null);
        D0 d02 = h02.f9902o;
        if (d02.f9853b != 0 || d02.f9854c != 0) {
            z4 = false;
        }
        if (z4) {
            O2.o oVar = h02.f9905r;
            oVar.f1523b = false;
            oVar.a();
        }
        SocketAddress socketAddress = (SocketAddress) ((X2.I) d02.f9852a.get(d02.f9853b)).f2114a.get(d02.f9854c);
        if (socketAddress instanceof HttpConnectProxiedSocketAddress) {
            httpConnectProxiedSocketAddress = (HttpConnectProxiedSocketAddress) socketAddress;
            inetSocketAddress = httpConnectProxiedSocketAddress.a();
        } else {
            inetSocketAddress = socketAddress;
            httpConnectProxiedSocketAddress = null;
        }
        C0107c c0107c = ((X2.I) d02.f9852a.get(d02.f9853b)).f2115b;
        String str = (String) c0107c.a(X2.I.f2113d);
        C1061x c1061x = new C1061x();
        if (str == null) {
            str = h02.f9892e;
        }
        O2.m.h(str, "authority");
        c1061x.f10392a = str;
        c1061x.f10393b = c0107c;
        c1061x.f10394c = h02.f9893f;
        c1061x.f10395d = httpConnectProxiedSocketAddress;
        G0 g02 = new G0();
        g02.f9882a = h02.f9891d;
        C0 c02 = new C0(h02.f9896i.w(inetSocketAddress, c1061x, g02), h02.f9899l);
        g02.f9882a = c02.e();
        X2.M.a(h02.f9898k.f2143c, c02);
        h02.f9911x = c02;
        ((ArrayList) h02.f9909v).add(c02);
        Runnable b4 = c02.b(new F0(h02, c02));
        if (b4 != null) {
            p02.b(b4);
        }
        h02.f9900m.b(ChannelLogger$ChannelLogLevel.INFO, "Started transport {0}", g02.f9882a);
    }

    public static String j(X2.L0 l02) {
        StringBuilder sb = new StringBuilder();
        sb.append(l02.f2137a);
        String str = l02.f2138b;
        if (str != null) {
            sb.append("(");
            sb.append(str);
            sb.append(")");
        }
        return sb.toString();
    }

    @Override // io.grpc.internal.L2
    public final E1 a() {
        E1 e12 = this.f9912y;
        if (e12 != null) {
            return e12;
        }
        this.f9901n.execute(new RunnableC1059w0(this, 1));
        return null;
    }

    @Override // X2.P
    public final X2.Q e() {
        return this.f9891d;
    }

    public final void i(C0144z c0144z) {
        this.f9901n.d();
        if (this.f9913z.f2251a != c0144z.f2251a) {
            boolean z4 = this.f9913z.f2251a != ConnectivityState.SHUTDOWN;
            O2.m.k("Cannot transition out of SHUTDOWN to " + c0144z, z4);
            this.f9913z = c0144z;
            U0 u02 = this.f9895h;
            X2.Z z5 = (X2.Z) u02.f10006a;
            O2.m.k("listener is null", z5 != null);
            z5.a(c0144z);
            ConnectivityState connectivityState = c0144z.f2251a;
            if (connectivityState == ConnectivityState.TRANSIENT_FAILURE || connectivityState == ConnectivityState.IDLE) {
                ((C1043q1) u02.f10007b).f10219b.getClass();
                if (((C1043q1) u02.f10007b).f10219b.f10117b) {
                    return;
                }
                C1048s1.f10283j0.log(Level.WARNING, "LoadBalancer should call Helper.refreshNameResolution() to refresh name resolution if subchannel state becomes TRANSIENT_FAILURE or IDLE. This will no longer happen automatically in the future releases");
                C1048s1 c1048s1 = ((C1043q1) u02.f10007b).f10228k;
                c1048s1.f10340r.d();
                X2.P0 p02 = c1048s1.f10340r;
                p02.d();
                X2.O0 o02 = c1048s1.f10325f0;
                if (o02 != null) {
                    o02.a();
                    c1048s1.f10325f0 = null;
                    c1048s1.f10327g0 = null;
                }
                p02.d();
                if (c1048s1.f10291A) {
                    c1048s1.f10348z.b();
                }
                ((C1043q1) u02.f10007b).f10219b.f10117b = true;
            }
        }
    }

    public final String toString() {
        O2.i b4 = O2.j.b(this);
        b4.b("logId", this.f9891d.f2162c);
        b4.a(this.f9903p, "addressGroups");
        return b4.toString();
    }
}
