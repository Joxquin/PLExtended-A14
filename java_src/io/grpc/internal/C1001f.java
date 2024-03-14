package io.grpc.internal;

import X2.AbstractC0108c0;
import X2.C0110d0;
import X2.C0112e0;
import java.util.List;
import java.util.logging.Logger;
/* renamed from: io.grpc.internal.f  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1001f {

    /* renamed from: a  reason: collision with root package name */
    public final C0112e0 f10105a;

    /* renamed from: b  reason: collision with root package name */
    public final String f10106b;

    public C1001f(String str) {
        C0112e0 c0112e0;
        Logger logger = C0112e0.f2184c;
        synchronized (C0112e0.class) {
            if (C0112e0.f2185d == null) {
                List<AbstractC0108c0> a4 = X2.I0.a(AbstractC0108c0.class, C0112e0.f2186e, AbstractC0108c0.class.getClassLoader(), new C0110d0());
                C0112e0.f2185d = new C0112e0();
                for (AbstractC0108c0 abstractC0108c0 : a4) {
                    Logger logger2 = C0112e0.f2184c;
                    logger2.fine("Service loader found " + abstractC0108c0);
                    if (abstractC0108c0.j()) {
                        C0112e0 c0112e02 = C0112e0.f2185d;
                        synchronized (c0112e02) {
                            O2.m.b("isAvailable() returned false", abstractC0108c0.j());
                            c0112e02.f2187a.add(abstractC0108c0);
                        }
                    }
                }
                C0112e0.f2185d.b();
            }
            c0112e0 = C0112e0.f2185d;
        }
        O2.m.h(c0112e0, "registry");
        this.f10105a = c0112e0;
        O2.m.h(str, "defaultPolicy");
        this.f10106b = str;
    }

    public static AbstractC0108c0 a(C1001f c1001f, String str) {
        AbstractC0108c0 a4 = c1001f.f10105a.a(str);
        if (a4 != null) {
            return a4;
        }
        throw new AutoConfiguredLoadBalancerFactory$PolicyException(E.c.a("Trying to load '", str, "' because using default policy, but it's unavailable"), 0);
    }
}
