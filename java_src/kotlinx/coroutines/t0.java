package kotlinx.coroutines;
/* loaded from: classes.dex */
public final class t0 extends AbstractC1258x {

    /* renamed from: f  reason: collision with root package name */
    public static final /* synthetic */ int f11519f = 0;

    static {
        new t0();
    }

    @Override // kotlinx.coroutines.AbstractC1258x
    public final void B(kotlin.coroutines.i context, Runnable block) {
        kotlin.jvm.internal.h.e(context, "context");
        kotlin.jvm.internal.h.e(block, "block");
        if (((y0) context.e(y0.f11523e)) == null) {
            throw new UnsupportedOperationException("Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls.");
        }
    }

    @Override // kotlinx.coroutines.AbstractC1258x
    public final boolean C(kotlin.coroutines.i context) {
        kotlin.jvm.internal.h.e(context, "context");
        return false;
    }

    @Override // kotlinx.coroutines.AbstractC1258x
    public final String toString() {
        return "Dispatchers.Unconfined";
    }
}
