package kotlinx.coroutines.internal;
/* loaded from: classes.dex */
public final class DiagnosticCoroutineContextException extends RuntimeException {

    /* renamed from: d  reason: collision with root package name */
    public final transient kotlin.coroutines.i f11443d;

    public DiagnosticCoroutineContextException(kotlin.coroutines.i context) {
        kotlin.jvm.internal.h.e(context, "context");
        this.f11443d = context;
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    @Override // java.lang.Throwable
    public final String getLocalizedMessage() {
        return this.f11443d.toString();
    }
}
