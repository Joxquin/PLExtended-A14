package kotlin.collections;

import java.util.Arrays;
/* loaded from: classes.dex */
public class m extends k {
    public static final void b(int i4, int i5, int i6, byte[] bArr, byte[] destination) {
        kotlin.jvm.internal.h.e(bArr, "<this>");
        kotlin.jvm.internal.h.e(destination, "destination");
        System.arraycopy(bArr, i5, destination, i4, i6 - i5);
    }

    public static final void c(int i4, int i5, int i6, Object[] objArr, Object[] destination) {
        kotlin.jvm.internal.h.e(objArr, "<this>");
        kotlin.jvm.internal.h.e(destination, "destination");
        System.arraycopy(objArr, i5, destination, i4, i6 - i5);
    }

    public static final void d(int i4, int i5, int[] iArr, int[] destination, int i6) {
        kotlin.jvm.internal.h.e(iArr, "<this>");
        kotlin.jvm.internal.h.e(destination, "destination");
        System.arraycopy(iArr, i5, destination, i4, i6 - i5);
    }

    public static /* synthetic */ void e(Object[] objArr, Object[] objArr2, int i4, int i5, int i6) {
        if ((i6 & 4) != 0) {
            i4 = 0;
        }
        if ((i6 & 8) != 0) {
            i5 = objArr.length;
        }
        c(0, i4, i5, objArr, objArr2);
    }

    public static final Object[] f(int i4, int i5, Object[] objArr) {
        kotlin.jvm.internal.h.e(objArr, "<this>");
        k.a(i5, objArr.length);
        Object[] copyOfRange = Arrays.copyOfRange(objArr, i4, i5);
        kotlin.jvm.internal.h.d(copyOfRange, "copyOfRange(this, fromIndex, toIndex)");
        return copyOfRange;
    }
}
