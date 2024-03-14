package y3;

import kotlin.jvm.internal.h;
import x3.l;
/* loaded from: classes.dex */
public final class a {
    static {
        h.d("0123456789abcdef".getBytes(s3.b.f12286a), "this as java.lang.String).getBytes(charset)");
    }

    public static final int a(x3.b bVar, x3.h options, boolean z4) {
        int i4;
        byte[] bArr;
        int i5;
        int i6;
        byte[] bArr2;
        int i7;
        l lVar;
        h.e(bVar, "<this>");
        h.e(options, "options");
        l lVar2 = bVar.f12891d;
        if (lVar2 == null) {
            return z4 ? -2 : -1;
        }
        int i8 = lVar2.f12909b;
        int i9 = lVar2.f12910c;
        int[] iArr = options.f12897e;
        byte[] bArr3 = lVar2.f12908a;
        l lVar3 = lVar2;
        int i10 = -1;
        int i11 = 0;
        loop0: while (true) {
            int i12 = i11 + 1;
            int i13 = iArr[i11];
            int i14 = i12 + 1;
            int i15 = iArr[i12];
            if (i15 != -1) {
                i10 = i15;
            }
            if (lVar3 == null) {
                break;
            }
            if (i13 >= 0) {
                int i16 = i8 + 1;
                int i17 = bArr3[i8] & 255;
                int i18 = i14 + i13;
                while (i14 != i18) {
                    if (i17 == iArr[i14]) {
                        i4 = iArr[i14 + i13];
                        if (i16 == i9) {
                            lVar3 = lVar3.f12913f;
                            h.b(lVar3);
                            i6 = lVar3.f12909b;
                            i5 = lVar3.f12910c;
                            bArr = lVar3.f12908a;
                            if (lVar3 == lVar2) {
                                lVar3 = null;
                            }
                        } else {
                            bArr = bArr3;
                            i5 = i9;
                            i6 = i16;
                        }
                    } else {
                        i14++;
                    }
                }
                return i10;
            }
            int i19 = (i13 * (-1)) + i14;
            while (true) {
                int i20 = i8 + 1;
                int i21 = i14 + 1;
                if ((bArr3[i8] & 255) != iArr[i14]) {
                    return i10;
                }
                boolean z5 = i21 == i19;
                if (i20 == i9) {
                    h.b(lVar3);
                    l lVar4 = lVar3.f12913f;
                    h.b(lVar4);
                    i7 = lVar4.f12909b;
                    int i22 = lVar4.f12910c;
                    bArr2 = lVar4.f12908a;
                    if (lVar4 != lVar2) {
                        lVar = lVar4;
                        i9 = i22;
                    } else if (!z5) {
                        break loop0;
                    } else {
                        i9 = i22;
                        lVar = null;
                    }
                } else {
                    l lVar5 = lVar3;
                    bArr2 = bArr3;
                    i7 = i20;
                    lVar = lVar5;
                }
                if (z5) {
                    i4 = iArr[i21];
                    int i23 = i7;
                    i5 = i9;
                    i6 = i23;
                    byte[] bArr4 = bArr2;
                    lVar3 = lVar;
                    bArr = bArr4;
                    break;
                }
                i8 = i7;
                bArr3 = bArr2;
                i14 = i21;
                lVar3 = lVar;
            }
            if (i4 >= 0) {
                return i4;
            }
            byte[] bArr5 = bArr;
            i11 = -i4;
            i8 = i6;
            i9 = i5;
            bArr3 = bArr5;
        }
        if (z4) {
            return -2;
        }
        return i10;
    }
}
