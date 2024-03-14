package androidx.slice;

import b0.C0307a;
import i0.c;
import i0.e;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Objects;
/* loaded from: classes.dex */
public final class SliceParcelizer {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v7, types: [java.lang.Object[], java.lang.Object] */
    public static Slice read(c cVar) {
        Slice slice = new Slice();
        e eVar = slice.f4052a;
        if (cVar.j(1)) {
            eVar = cVar.r();
        }
        slice.f4052a = (SliceSpec) eVar;
        slice.f4053b = (SliceItem[]) cVar.e(2, slice.f4053b);
        slice.f4054c = (String[]) cVar.e(3, slice.f4054c);
        slice.f4055d = cVar.p(4, slice.f4055d);
        for (int length = slice.f4053b.length - 1; length >= 0; length--) {
            SliceItem[] sliceItemArr = slice.f4053b;
            SliceItem sliceItem = sliceItemArr[length];
            if (sliceItem.f4059d == null) {
                if (C0307a.a(sliceItemArr, sliceItem)) {
                    int length2 = sliceItemArr.length;
                    int i4 = 0;
                    while (true) {
                        if (i4 >= length2) {
                            break;
                        } else if (!Objects.equals(sliceItemArr[i4], sliceItem)) {
                            i4++;
                        } else if (length2 == 1) {
                            sliceItemArr = null;
                        } else {
                            ?? r32 = (Object[]) Array.newInstance(SliceItem.class, length2 - 1);
                            System.arraycopy(sliceItemArr, 0, r32, 0, i4);
                            System.arraycopy(sliceItemArr, i4 + 1, r32, i4, (length2 - i4) - 1);
                            sliceItemArr = r32;
                        }
                    }
                }
                SliceItem[] sliceItemArr2 = sliceItemArr;
                slice.f4053b = sliceItemArr2;
                if (sliceItemArr2 == null) {
                    slice.f4053b = new SliceItem[0];
                }
            }
        }
        return slice;
    }

    public static void write(Slice slice, c cVar) {
        cVar.getClass();
        slice.getClass();
        SliceSpec sliceSpec = slice.f4052a;
        if (sliceSpec != null) {
            cVar.s(1);
            cVar.E(sliceSpec);
        }
        if (!Arrays.equals(Slice.f4051f, slice.f4053b)) {
            cVar.t(2, slice.f4053b);
        }
        if (!Arrays.equals(Slice.f4050e, slice.f4054c)) {
            cVar.t(3, slice.f4054c);
        }
        String str = slice.f4055d;
        if (str != null) {
            cVar.B(4, str);
        }
    }
}
