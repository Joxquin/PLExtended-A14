package kotlinx.coroutines;

import kotlinx.coroutines.internal.C1239f;
/* loaded from: classes.dex */
public final class A {
    public static final void a(kotlin.coroutines.i context, Throwable exception) {
        kotlin.jvm.internal.h.e(context, "context");
        kotlin.jvm.internal.h.e(exception, "exception");
        try {
            InterfaceC1260z interfaceC1260z = (InterfaceC1260z) context.e(C1259y.f11522d);
            if (interfaceC1260z != null) {
                interfaceC1260z.y(context, exception);
            } else {
                C1239f.a(context, exception);
            }
        } catch (Throwable th) {
            if (exception != th) {
                RuntimeException runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th);
                e3.a.a(runtimeException, exception);
                exception = runtimeException;
            }
            C1239f.a(context, exception);
        }
    }
}
