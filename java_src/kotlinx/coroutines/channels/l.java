package kotlinx.coroutines.channels;

import java.util.concurrent.CancellationException;
/* loaded from: classes.dex */
public final class l {
    public static final void a(r rVar, Throwable th) {
        kotlin.jvm.internal.h.e(rVar, "<this>");
        if (th != null) {
            r0 = th instanceof CancellationException ? (CancellationException) th : null;
            if (r0 == null) {
                r0 = new CancellationException("Channel was consumed, consumer had failed");
                r0.initCause(th);
            }
        }
        rVar.b(r0);
    }
}
