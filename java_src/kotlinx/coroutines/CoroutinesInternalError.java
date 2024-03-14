package kotlinx.coroutines;
/* loaded from: classes.dex */
public final class CoroutinesInternalError extends Error {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoroutinesInternalError(String message, Throwable th) {
        super(message, th);
        kotlin.jvm.internal.h.e(message, "message");
    }
}
