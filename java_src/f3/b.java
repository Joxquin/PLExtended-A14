package f3;
/* loaded from: classes.dex */
public final class b {
    public static final Object[] a(int i4) {
        if (i4 >= 0) {
            return new Object[i4];
        }
        throw new IllegalArgumentException("capacity must be non-negative.".toString());
    }

    public static final void b(int i4, int i5, Object[] objArr) {
        kotlin.jvm.internal.h.e(objArr, "<this>");
        while (i4 < i5) {
            objArr[i4] = null;
            i4++;
        }
    }
}
