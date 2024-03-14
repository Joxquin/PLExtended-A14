package i3;

import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public class b extends h3.b {
    @Override // h3.b
    public final void a(Throwable cause, Throwable exception) {
        h.e(cause, "cause");
        h.e(exception, "exception");
        Integer num = a.f9651a;
        if (num == null || num.intValue() >= 19) {
            cause.addSuppressed(exception);
        } else {
            super.a(cause, exception);
        }
    }
}
