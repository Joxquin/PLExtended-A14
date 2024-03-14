package kotlinx.coroutines.channels;

import kotlinx.coroutines.w0;
/* loaded from: classes.dex */
public final class t {

    /* renamed from: a  reason: collision with root package name */
    public final w0 f11382a;

    public t(w0 waiter) {
        kotlin.jvm.internal.h.e(waiter, "waiter");
        this.f11382a = waiter;
    }

    public final String toString() {
        return "WaiterEB(" + this.f11382a + ")";
    }
}
