package r;

import kotlin.jvm.internal.h;
/* renamed from: r.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1367a {

    /* renamed from: a  reason: collision with root package name */
    public static final int[] f12064a = new int[0];

    /* renamed from: b  reason: collision with root package name */
    public static final long[] f12065b = new long[0];

    /* renamed from: c  reason: collision with root package name */
    public static final Object[] f12066c = new Object[0];

    public static final int a(int i4, int i5, int[] array) {
        h.e(array, "array");
        int i6 = i4 - 1;
        int i7 = 0;
        while (i7 <= i6) {
            int i8 = (i7 + i6) >>> 1;
            int i9 = array[i8];
            if (i9 < i5) {
                i7 = i8 + 1;
            } else if (i9 <= i5) {
                return i8;
            } else {
                i6 = i8 - 1;
            }
        }
        return ~i7;
    }

    public static final int b(long[] array, int i4, long j4) {
        h.e(array, "array");
        int i5 = i4 - 1;
        int i6 = 0;
        while (i6 <= i5) {
            int i7 = (i6 + i5) >>> 1;
            int i8 = (array[i7] > j4 ? 1 : (array[i7] == j4 ? 0 : -1));
            if (i8 < 0) {
                i6 = i7 + 1;
            } else if (i8 <= 0) {
                return i7;
            } else {
                i5 = i7 - 1;
            }
        }
        return ~i6;
    }
}
