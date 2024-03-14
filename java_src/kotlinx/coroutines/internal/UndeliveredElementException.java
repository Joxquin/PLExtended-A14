package kotlinx.coroutines.internal;
/* loaded from: classes.dex */
public final class UndeliveredElementException extends RuntimeException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UndeliveredElementException(String message, Throwable th) {
        super(message, th);
        kotlin.jvm.internal.h.e(message, "message");
    }
}
