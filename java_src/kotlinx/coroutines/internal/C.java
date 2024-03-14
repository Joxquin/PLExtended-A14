package kotlinx.coroutines.internal;
/* loaded from: classes.dex */
public final class C {
    public static final B a(Object obj) {
        if (obj != C1235b.f11460a) {
            kotlin.jvm.internal.h.c(obj, "null cannot be cast to non-null type S of kotlinx.coroutines.internal.SegmentOrClosed");
            return (B) obj;
        }
        throw new IllegalStateException("Does not contain segment".toString());
    }

    public static final boolean b(Object obj) {
        return obj == C1235b.f11460a;
    }
}
