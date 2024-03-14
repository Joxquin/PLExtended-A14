package x3;
/* loaded from: classes.dex */
public final class a {
    public static final boolean a(int i4, int i5, int i6, byte[] a4, byte[] b4) {
        kotlin.jvm.internal.h.e(a4, "a");
        kotlin.jvm.internal.h.e(b4, "b");
        for (int i7 = 0; i7 < i6; i7++) {
            if (a4[i7 + i4] != b4[i7 + i5]) {
                return false;
            }
        }
        return true;
    }

    public static final void b(long j4, long j5, long j6) {
        if ((j5 | j6) < 0 || j5 > j4 || j4 - j5 < j6) {
            throw new ArrayIndexOutOfBoundsException("size=" + j4 + " offset=" + j5 + " byteCount=" + j6);
        }
    }
}
