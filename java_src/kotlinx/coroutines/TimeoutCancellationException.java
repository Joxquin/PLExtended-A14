package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
/* loaded from: classes.dex */
public final class TimeoutCancellationException extends CancellationException {

    /* renamed from: d  reason: collision with root package name */
    public final transient a0 f11323d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TimeoutCancellationException(String message, a0 a0Var) {
        super(message);
        kotlin.jvm.internal.h.e(message, "message");
        this.f11323d = a0Var;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TimeoutCancellationException(String message) {
        this(message, null);
        kotlin.jvm.internal.h.e(message, "message");
    }
}
