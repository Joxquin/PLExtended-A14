package kotlinx.coroutines;
/* loaded from: classes.dex */
public final class CompletionHandlerException extends RuntimeException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CompletionHandlerException(String message, Throwable th) {
        super(message, th);
        kotlin.jvm.internal.h.e(message, "message");
    }
}
