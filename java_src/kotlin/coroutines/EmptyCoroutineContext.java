package kotlin.coroutines;

import java.io.Serializable;
import m3.p;
/* loaded from: classes.dex */
public final class EmptyCoroutineContext implements i, Serializable {

    /* renamed from: d  reason: collision with root package name */
    public static final EmptyCoroutineContext f11247d = new EmptyCoroutineContext();
    private static final long serialVersionUID = 0;

    private EmptyCoroutineContext() {
    }

    private final Object readResolve() {
        return f11247d;
    }

    @Override // kotlin.coroutines.i
    public final g e(h key) {
        kotlin.jvm.internal.h.e(key, "key");
        return null;
    }

    public final int hashCode() {
        return 0;
    }

    @Override // kotlin.coroutines.i
    public final i i(i context) {
        kotlin.jvm.internal.h.e(context, "context");
        return context;
    }

    public final String toString() {
        return "EmptyCoroutineContext";
    }

    @Override // kotlin.coroutines.i
    public final Object x(Object obj, p operation) {
        kotlin.jvm.internal.h.e(operation, "operation");
        return obj;
    }

    @Override // kotlin.coroutines.i
    public final i z(h key) {
        kotlin.jvm.internal.h.e(key, "key");
        return this;
    }
}
