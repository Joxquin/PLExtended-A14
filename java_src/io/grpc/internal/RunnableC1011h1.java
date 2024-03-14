package io.grpc.internal;

import X2.AbstractC0104a0;
import X2.AbstractC0108c0;
import X2.C0103a;
import X2.C0105b;
import X2.C0107c;
import io.grpc.ChannelLogger$ChannelLogLevel;
import io.grpc.ConnectivityState;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: io.grpc.internal.h1  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC1011h1 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f10126d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f10127e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Object f10128f;

    public /* synthetic */ RunnableC1011h1(int i4, Object obj, Object obj2) {
        this.f10126d = i4;
        this.f10127e = obj;
        this.f10128f = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1 c12;
        X2.L0 l02;
        Object obj;
        switch (this.f10126d) {
            case 0:
                X2.z0 z0Var = (X2.z0) this.f10128f;
                List list = z0Var.f2253a;
                C1025l c1025l = ((C1015i1) this.f10127e).f10141c.f10309S;
                ChannelLogger$ChannelLogLevel channelLogger$ChannelLogLevel = ChannelLogger$ChannelLogLevel.DEBUG;
                c1025l.b(channelLogger$ChannelLogLevel, "Resolved address: {0}, config={1}", list, z0Var.f2254b);
                C1048s1 c1048s1 = ((C1015i1) this.f10127e).f10141c;
                ManagedChannelImpl$ResolutionState managedChannelImpl$ResolutionState = c1048s1.f10312V;
                ManagedChannelImpl$ResolutionState managedChannelImpl$ResolutionState2 = ManagedChannelImpl$ResolutionState.SUCCESS;
                ChannelLogger$ChannelLogLevel channelLogger$ChannelLogLevel2 = ChannelLogger$ChannelLogLevel.INFO;
                if (managedChannelImpl$ResolutionState != managedChannelImpl$ResolutionState2) {
                    c1048s1.f10309S.b(channelLogger$ChannelLogLevel2, "Address resolved: {0}", list);
                    ((C1015i1) this.f10127e).f10141c.f10312V = managedChannelImpl$ResolutionState2;
                }
                ((C1015i1) this.f10127e).f10141c.f10327g0 = null;
                X2.z0 z0Var2 = (X2.z0) this.f10128f;
                X2.w0 w0Var = z0Var2.f2255c;
                C0105b c0105b = X2.O.f2153a;
                X2.O o4 = (X2.O) z0Var2.f2254b.a(c0105b);
                C1 c13 = (w0Var == null || (obj = w0Var.f2248b) == null) ? null : (C1) obj;
                X2.L0 l03 = w0Var != null ? w0Var.f2247a : null;
                Object obj2 = this.f10127e;
                C1048s1 c1048s12 = ((C1015i1) obj2).f10141c;
                if (c1048s12.f10315Y) {
                    if (c13 != null) {
                        C1037o1 c1037o1 = c1048s12.f10311U;
                        if (o4 != null) {
                            c1037o1.i(o4);
                            if (c13.b() != null) {
                                ((C1015i1) this.f10127e).f10141c.f10309S.a(channelLogger$ChannelLogLevel, "Method configs in service config will be discarded due to presence ofconfig-selector");
                            }
                        } else {
                            c1037o1.i(c13.b());
                        }
                    } else if (l03 != null) {
                        C1048s1 c1048s13 = ((C1015i1) obj2).f10141c;
                        if (!c1048s13.f10314X) {
                            c1048s13.f10309S.a(channelLogger$ChannelLogLevel2, "Fallback to error due to invalid first service config without default config");
                            ((C1015i1) this.f10127e).a(w0Var.f2247a);
                            return;
                        }
                        c13 = c1048s13.f10313W;
                    } else {
                        c13 = C1048s1.f10288o0;
                        ((C1015i1) obj2).f10141c.f10311U.i(null);
                    }
                    if (!c13.equals(((C1015i1) this.f10127e).f10141c.f10313W)) {
                        C1025l c1025l2 = ((C1015i1) this.f10127e).f10141c.f10309S;
                        Object[] objArr = new Object[1];
                        objArr[0] = c13 == C1048s1.f10288o0 ? " to empty" : "";
                        c1025l2.b(channelLogger$ChannelLogLevel2, "Service config changed{0}", objArr);
                        ((C1015i1) this.f10127e).f10141c.f10313W = c13;
                    }
                    try {
                        ((C1015i1) this.f10127e).f10141c.f10314X = true;
                    } catch (RuntimeException e4) {
                        Logger logger = C1048s1.f10283j0;
                        Level level = Level.WARNING;
                        logger.log(level, "[" + ((C1015i1) this.f10127e).f10141c.f10320d + "] Unexpected exception from parsing service config", (Throwable) e4);
                    }
                    c12 = c13;
                } else {
                    if (c13 != null) {
                        c1048s12.f10309S.a(channelLogger$ChannelLogLevel2, "Service config from name resolver discarded by channel settings");
                    }
                    ((C1015i1) this.f10127e).f10141c.getClass();
                    c12 = C1048s1.f10288o0;
                    if (o4 != null) {
                        ((C1015i1) this.f10127e).f10141c.f10309S.a(channelLogger$ChannelLogLevel2, "Config selector from name resolver discarded by channel settings");
                    }
                    ((C1015i1) this.f10127e).f10141c.f10311U.i(c12.b());
                }
                C0107c c0107c = ((X2.z0) this.f10128f).f2254b;
                C1015i1 c1015i1 = (C1015i1) this.f10127e;
                if (c1015i1.f10139a == c1015i1.f10141c.f10292B) {
                    c0107c.getClass();
                    C0103a c0103a = new C0103a(c0107c);
                    c0103a.b(c0105b);
                    Map map = c12.f9843f;
                    if (map != null) {
                        c0103a.c(AbstractC0104a0.f2179a, map);
                        c0103a.a();
                    }
                    C0985b c0985b = ((C1015i1) this.f10127e).f10139a.f10116a;
                    C0107c c0107c2 = C0107c.f2181b;
                    C0107c a4 = c0103a.a();
                    O2.m.h(list, "addresses");
                    List unmodifiableList = Collections.unmodifiableList(new ArrayList(list));
                    O2.m.h(a4, "attributes");
                    c0985b.getClass();
                    A2 a22 = (A2) c12.f9842e;
                    X2.V v4 = c0985b.f10056a;
                    if (a22 == null) {
                        try {
                            C1001f c1001f = c0985b.f10059d;
                            a22 = new A2(C1001f.a(c1001f, c1001f.f10106b), null);
                        } catch (AutoConfiguredLoadBalancerFactory$PolicyException e5) {
                            v4.g(ConnectivityState.TRANSIENT_FAILURE, new C0993d(X2.L0.f2134m.f(e5.getMessage())));
                            c0985b.f10057b.c();
                            c0985b.f10058c = null;
                            c0985b.f10057b = new C0997e();
                            l02 = X2.L0.f2126e;
                        }
                    }
                    AbstractC0108c0 abstractC0108c0 = c0985b.f10058c;
                    AbstractC0108c0 abstractC0108c02 = a22.f9828a;
                    if (abstractC0108c0 == null || !abstractC0108c02.h().equals(c0985b.f10058c.h())) {
                        v4.g(ConnectivityState.CONNECTING, new C0989c());
                        c0985b.f10057b.c();
                        c0985b.f10058c = abstractC0108c02;
                        AbstractC0104a0 abstractC0104a0 = c0985b.f10057b;
                        c0985b.f10057b = abstractC0108c02.d(v4);
                        v4.b().b(channelLogger$ChannelLogLevel2, "Load balancer changed from {0} to {1}", abstractC0104a0.getClass().getSimpleName(), c0985b.f10057b.getClass().getSimpleName());
                    }
                    Object obj3 = a22.f9829b;
                    if (obj3 != null) {
                        v4.b().b(channelLogger$ChannelLogLevel, "Load-balancing config: {0}", obj3);
                    }
                    AbstractC0104a0 abstractC0104a02 = c0985b.f10057b;
                    if (unmodifiableList.isEmpty()) {
                        abstractC0104a02.getClass();
                        X2.L0 l04 = X2.L0.f2135n;
                        l02 = l04.f("NameResolver returned no usable address. addrs=" + unmodifiableList + ", attrs=" + a4);
                    } else {
                        C0107c c0107c3 = C0107c.f2181b;
                        abstractC0104a02.b(new X2.X(unmodifiableList, a4, obj3));
                        l02 = X2.L0.f2126e;
                    }
                    if (l02.d()) {
                        return;
                    }
                    C1015i1.f((C1015i1) this.f10127e, l02.a(((C1015i1) this.f10127e).f10140b + " was used"));
                    return;
                }
                return;
            case 1:
                C1015i1.f((C1015i1) this.f10127e, (X2.L0) this.f10128f);
                return;
            default:
                if (((C1037o1) this.f10127e).f10194d.get() == C1048s1.f10289p0) {
                    C1048s1 c1048s14 = ((C1037o1) this.f10127e).f10197g;
                    if (c1048s14.f10296F == null) {
                        c1048s14.f10296F = new LinkedHashSet();
                        C1048s1 c1048s15 = ((C1037o1) this.f10127e).f10197g;
                        c1048s15.f10323e0.c(c1048s15.f10297G, true);
                    }
                    ((C1037o1) this.f10127e).f10197g.f10296F.add((C1034n1) this.f10128f);
                    return;
                }
                C1034n1 c1034n1 = (C1034n1) this.f10128f;
                C1048s1 c1048s16 = c1034n1.f10184n.f10197g;
                c1048s16.getClass();
                Executor executor = c1034n1.f10183m.f2192b;
                if (executor == null) {
                    executor = c1048s16.f10334l;
                }
                executor.execute(new RunnableC1031m1(c1034n1, 0));
                return;
        }
    }
}
