package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
/* loaded from: classes.dex */
public final class JobCancellationException extends CancellationException {

    /* renamed from: d  reason: collision with root package name */
    public final transient a0 f11309d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JobCancellationException(String message, Throwable th, a0 job) {
        super(message);
        kotlin.jvm.internal.h.e(message, "message");
        kotlin.jvm.internal.h.e(job, "job");
        this.f11309d = job;
        if (th != null) {
            initCause(th);
        }
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof JobCancellationException) {
                JobCancellationException jobCancellationException = (JobCancellationException) obj;
                if (!kotlin.jvm.internal.h.a(jobCancellationException.getMessage(), getMessage()) || !kotlin.jvm.internal.h.a(jobCancellationException.f11309d, this.f11309d) || !kotlin.jvm.internal.h.a(jobCancellationException.getCause(), getCause())) {
                }
            }
            return false;
        }
        return true;
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    public final int hashCode() {
        String message = getMessage();
        kotlin.jvm.internal.h.b(message);
        int hashCode = (this.f11309d.hashCode() + (message.hashCode() * 31)) * 31;
        Throwable cause = getCause();
        return hashCode + (cause != null ? cause.hashCode() : 0);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        String cancellationException = super.toString();
        a0 a0Var = this.f11309d;
        return cancellationException + "; job=" + a0Var;
    }
}
