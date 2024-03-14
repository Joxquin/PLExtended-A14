package e3;

import kotlin.Result;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public final class d {
    public static final Result.Failure a(Throwable exception) {
        h.e(exception, "exception");
        return new Result.Failure(exception);
    }

    public static final void b(Object obj) {
        if (obj instanceof Result.Failure) {
            throw ((Result.Failure) obj).exception;
        }
    }
}
