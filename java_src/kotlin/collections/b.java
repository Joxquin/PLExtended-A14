package kotlin.collections;

import com.android.launcher3.util.C0479l;
/* loaded from: classes.dex */
public final class b {
    public static void a(int i4, int i5, int i6) {
        if (i4 >= 0 && i5 <= i6) {
            if (i4 > i5) {
                throw new IllegalArgumentException(C0479l.a("fromIndex: ", i4, " > toIndex: ", i5));
            }
            return;
        }
        throw new IndexOutOfBoundsException("fromIndex: " + i4 + ", toIndex: " + i5 + ", size: " + i6);
    }
}
