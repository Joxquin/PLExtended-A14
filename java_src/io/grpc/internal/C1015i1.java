package io.grpc.internal;

import io.grpc.ChannelLogger$ChannelLogLevel;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: io.grpc.internal.i1  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1015i1 extends X2.x0 {

    /* renamed from: a  reason: collision with root package name */
    public final C1007g1 f10139a;

    /* renamed from: b  reason: collision with root package name */
    public final X2.A0 f10140b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ C1048s1 f10141c;

    public C1015i1(C1048s1 c1048s1, C1007g1 c1007g1, X2.A0 a02) {
        this.f10141c = c1048s1;
        this.f10139a = c1007g1;
        O2.m.h(a02, "resolver");
        this.f10140b = a02;
    }

    public static void f(C1015i1 c1015i1, X2.L0 l02) {
        c1015i1.getClass();
        Logger logger = C1048s1.f10283j0;
        Level level = Level.WARNING;
        C1048s1 c1048s1 = c1015i1.f10141c;
        logger.log(level, "[{0}] Failed to resolve name. status={1}", new Object[]{c1048s1.f10320d, l02});
        C1037o1 c1037o1 = c1048s1.f10311U;
        if (c1037o1.f10194d.get() == C1048s1.f10289p0) {
            c1037o1.i(null);
        }
        ManagedChannelImpl$ResolutionState managedChannelImpl$ResolutionState = c1048s1.f10312V;
        ManagedChannelImpl$ResolutionState managedChannelImpl$ResolutionState2 = ManagedChannelImpl$ResolutionState.ERROR;
        C1025l c1025l = c1048s1.f10309S;
        if (managedChannelImpl$ResolutionState != managedChannelImpl$ResolutionState2) {
            c1025l.b(ChannelLogger$ChannelLogLevel.WARNING, "Failed to resolve name: {0}", l02);
            c1048s1.f10312V = managedChannelImpl$ResolutionState2;
        }
        C1007g1 c1007g1 = c1048s1.f10292B;
        C1007g1 c1007g12 = c1015i1.f10139a;
        if (c1007g12 != c1007g1) {
            return;
        }
        c1007g12.f10116a.f10057b.a(l02);
        X2.O0 o02 = c1048s1.f10325f0;
        if (o02 != null) {
            X2.N0 n02 = o02.f2154a;
            if ((n02.f2152f || n02.f2151e) ? false : true) {
                return;
            }
        }
        if (c1048s1.f10327g0 == null) {
            c1048s1.f10346x.getClass();
            c1048s1.f10327g0 = new C1006g0();
        }
        long a4 = c1048s1.f10327g0.a();
        c1025l.b(ChannelLogger$ChannelLogLevel.DEBUG, "Scheduling DNS resolution backoff for {0} ns", Long.valueOf(a4));
        c1048s1.f10325f0 = c1048s1.f10340r.c(new T0(c1048s1, 3), a4, TimeUnit.NANOSECONDS, c1048s1.f10332j.s());
    }

    @Override // X2.y0
    public final void a(X2.L0 l02) {
        O2.m.b("the error status must not be OK", !l02.d());
        this.f10141c.f10340r.execute(new RunnableC1011h1(1, this, l02));
    }

    @Override // X2.x0
    public final void d(X2.z0 z0Var) {
        this.f10141c.f10340r.execute(new RunnableC1011h1(0, this, z0Var));
    }
}
