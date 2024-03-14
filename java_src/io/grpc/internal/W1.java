package io.grpc.internal;

import io.grpc.StatusException;
import io.grpc.StatusRuntimeException;
import java.lang.Thread;
import java.util.List;
/* loaded from: classes.dex */
public final class W1 implements Thread.UncaughtExceptionHandler {
    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        X2.L0 e4;
        List list = X2.L0.f2125d;
        O2.m.h(th, "t");
        Throwable th2 = th;
        while (true) {
            if (th2 == null) {
                e4 = X2.L0.f2128g.e(th);
                break;
            } else if (!(th2 instanceof StatusException)) {
                if (th2 instanceof StatusRuntimeException) {
                    e4 = ((StatusRuntimeException) th2).a();
                    break;
                }
                th2 = th2.getCause();
            } else {
                e4 = ((StatusException) th2).a();
                break;
            }
        }
        throw new StatusRuntimeException(e4.f("Uncaught exception in the SynchronizationContext. Re-thrown."), null);
    }
}
