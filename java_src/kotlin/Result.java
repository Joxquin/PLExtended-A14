package kotlin;

import java.io.Serializable;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public final class Result implements Serializable {
    private final Object value;

    /* loaded from: classes.dex */
    public final class Failure implements Serializable {
        public final Throwable exception;

        public Failure(Throwable exception) {
            h.e(exception, "exception");
            this.exception = exception;
        }

        public final boolean equals(Object obj) {
            return (obj instanceof Failure) && h.a(this.exception, ((Failure) obj).exception);
        }

        public final int hashCode() {
            return this.exception.hashCode();
        }

        public final String toString() {
            return "Failure(" + this.exception + ')';
        }
    }

    public static final Throwable a(Object obj) {
        if (obj instanceof Failure) {
            return ((Failure) obj).exception;
        }
        return null;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof Result) && h.a(this.value, ((Result) obj).value);
    }

    public final int hashCode() {
        Object obj = this.value;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public final String toString() {
        Object obj = this.value;
        if (obj instanceof Failure) {
            return ((Failure) obj).toString();
        }
        return "Success(" + obj + ')';
    }
}
