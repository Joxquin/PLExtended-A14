package kotlinx.coroutines.internal;

import j.C1080K;
/* loaded from: classes.dex */
public final class l {
    public static final void a(int i4) {
        if (!(i4 >= 1)) {
            throw new IllegalArgumentException(C1080K.a("Expected positive parallelism level, but got ", i4).toString());
        }
    }
}
