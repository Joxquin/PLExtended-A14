package io.grpc.internal;

import io.grpc.ChannelLogger$ChannelLogLevel;
import io.grpc.ConnectivityState;
import java.lang.Thread;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes.dex */
public final class W0 implements Thread.UncaughtExceptionHandler {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C1048s1 f10030a;

    public W0(C1048s1 c1048s1) {
        this.f10030a = c1048s1;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        Logger logger = C1048s1.f10283j0;
        Level level = Level.SEVERE;
        logger.log(level, "[" + this.f10030a.f10320d + "] Uncaught exception in the SynchronizationContext. Panic!", th);
        C1048s1 c1048s1 = this.f10030a;
        if (c1048s1.f10294D) {
            return;
        }
        c1048s1.f10294D = true;
        c1048s1.l(true);
        c1048s1.q(false);
        V0 v02 = new V0(th);
        c1048s1.f10293C = v02;
        c1048s1.f10299I.h(v02);
        c1048s1.f10309S.a(ChannelLogger$ChannelLogLevel.ERROR, "PANIC! Entering TRANSIENT_FAILURE");
        c1048s1.f10345w.a(ConnectivityState.TRANSIENT_FAILURE);
    }
}
