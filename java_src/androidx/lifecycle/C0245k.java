package androidx.lifecycle;
/* renamed from: androidx.lifecycle.k  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0245k {
    public static Lifecycle$Event a(Lifecycle$State state) {
        kotlin.jvm.internal.h.e(state, "state");
        int ordinal = state.ordinal();
        if (ordinal != 2) {
            if (ordinal != 3) {
                if (ordinal != 4) {
                    return null;
                }
                return Lifecycle$Event.ON_PAUSE;
            }
            return Lifecycle$Event.ON_STOP;
        }
        return Lifecycle$Event.ON_DESTROY;
    }

    public static Lifecycle$Event b(Lifecycle$State state) {
        kotlin.jvm.internal.h.e(state, "state");
        int ordinal = state.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    return null;
                }
                return Lifecycle$Event.ON_RESUME;
            }
            return Lifecycle$Event.ON_START;
        }
        return Lifecycle$Event.ON_CREATE;
    }

    public static Lifecycle$Event c(Lifecycle$State state) {
        kotlin.jvm.internal.h.e(state, "state");
        int ordinal = state.ordinal();
        if (ordinal != 2) {
            if (ordinal != 3) {
                if (ordinal != 4) {
                    return null;
                }
                return Lifecycle$Event.ON_RESUME;
            }
            return Lifecycle$Event.ON_START;
        }
        return Lifecycle$Event.ON_CREATE;
    }
}
