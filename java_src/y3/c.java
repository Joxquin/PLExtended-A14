package y3;

import kotlin.jvm.internal.h;
import okio.SegmentedByteString;
/* loaded from: classes.dex */
public final class c {
    public static final int a(SegmentedByteString segmentedByteString, int i4) {
        int i5;
        h.e(segmentedByteString, "<this>");
        int[] iArr = segmentedByteString.f11883h;
        int i6 = i4 + 1;
        int length = segmentedByteString.f11882g.length;
        h.e(iArr, "<this>");
        int i7 = length - 1;
        int i8 = 0;
        while (true) {
            if (i8 <= i7) {
                i5 = (i8 + i7) >>> 1;
                int i9 = iArr[i5];
                if (i9 >= i6) {
                    if (i9 <= i6) {
                        break;
                    }
                    i7 = i5 - 1;
                } else {
                    i8 = i5 + 1;
                }
            } else {
                i5 = (-i8) - 1;
                break;
            }
        }
        return i5 >= 0 ? i5 : ~i5;
    }
}
