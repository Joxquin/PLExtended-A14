package androidx.slice;

import i0.c;
/* loaded from: classes.dex */
public final class SliceSpecParcelizer {
    public static SliceSpec read(c cVar) {
        SliceSpec sliceSpec = new SliceSpec();
        sliceSpec.f4071a = cVar.p(1, sliceSpec.f4071a);
        sliceSpec.f4072b = cVar.l(sliceSpec.f4072b, 2);
        return sliceSpec;
    }

    public static void write(SliceSpec sliceSpec, c cVar) {
        cVar.getClass();
        cVar.B(1, sliceSpec.f4071a);
        int i4 = sliceSpec.f4072b;
        if (1 != i4) {
            cVar.s(2);
            cVar.y(i4);
        }
    }
}
