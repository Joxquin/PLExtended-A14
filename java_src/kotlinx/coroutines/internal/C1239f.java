package kotlinx.coroutines.internal;

import kotlinx.coroutines.InterfaceC1260z;
/* renamed from: kotlinx.coroutines.internal.f  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1239f {
    public static final void a(kotlin.coroutines.i context, Throwable exception) {
        Throwable runtimeException;
        kotlin.jvm.internal.h.e(context, "context");
        kotlin.jvm.internal.h.e(exception, "exception");
        for (InterfaceC1260z interfaceC1260z : C1238e.f11463a) {
            try {
                interfaceC1260z.y(context, exception);
            } catch (Throwable th) {
                if (exception == th) {
                    runtimeException = exception;
                } else {
                    runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th);
                    e3.a.a(runtimeException, exception);
                }
                Thread currentThread = Thread.currentThread();
                currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, runtimeException);
            }
        }
        try {
            e3.a.a(exception, new DiagnosticCoroutineContextException(context));
        } catch (Throwable unused) {
        }
        Thread currentThread2 = Thread.currentThread();
        currentThread2.getUncaughtExceptionHandler().uncaughtException(currentThread2, exception);
    }
}
