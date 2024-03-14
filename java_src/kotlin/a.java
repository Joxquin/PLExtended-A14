package kotlin;

import e3.c;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public class a {
    public static final c a(m3.a initializer) {
        h.e(initializer, "initializer");
        return new SynchronizedLazyImpl(initializer);
    }
}
