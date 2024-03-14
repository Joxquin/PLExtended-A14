package androidx.slice;

import i0.c;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class SliceItemParcelizer {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0097, code lost:
        if (r6.equals("bundle") == false) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.slice.SliceItem read(i0.c r10) {
        /*
            Method dump skipped, instructions count: 332
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.slice.SliceItemParcelizer.read(i0.c):androidx.slice.SliceItem");
    }

    public static void write(SliceItem sliceItem, c cVar) {
        cVar.getClass();
        sliceItem.getClass();
        sliceItem.f4061f = new SliceItemHolder(sliceItem.f4057b, sliceItem.f4059d);
        if (!Arrays.equals(Slice.f4050e, sliceItem.f4056a)) {
            cVar.t(1, sliceItem.f4056a);
        }
        if (!"text".equals(sliceItem.f4057b)) {
            cVar.B(2, sliceItem.f4057b);
        }
        String str = sliceItem.f4058c;
        if (str != null) {
            cVar.B(3, str);
        }
        SliceItemHolder sliceItemHolder = sliceItem.f4061f;
        cVar.s(4);
        cVar.E(sliceItemHolder);
    }
}
