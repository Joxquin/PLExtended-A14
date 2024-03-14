package kotlin.collections;

import java.util.Collection;
/* loaded from: classes.dex */
public class o extends n {
    public static final int d(Iterable iterable) {
        kotlin.jvm.internal.h.e(iterable, "<this>");
        if (iterable instanceof Collection) {
            return ((Collection) iterable).size();
        }
        return 10;
    }
}
