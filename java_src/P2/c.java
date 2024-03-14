package P2;

import O2.m;
/* loaded from: classes.dex */
public final class c extends d {
    public c(String str, String str2, Character ch) {
        this(new a(str, str2.toCharArray()), ch);
    }

    public final void b(Appendable appendable, byte[] bArr, int i4) {
        int i5 = 0;
        int i6 = 0 + i4;
        m.j(0, i6, bArr.length);
        while (i4 >= 3) {
            int i7 = i5 + 1;
            int i8 = i7 + 1;
            int i9 = ((bArr[i5] & 255) << 16) | ((bArr[i7] & 255) << 8);
            int i10 = i8 + 1;
            int i11 = i9 | (bArr[i8] & 255);
            a aVar = this.f1576a;
            StringBuilder sb = (StringBuilder) appendable;
            sb.append(aVar.f1568b[i11 >>> 18]);
            char[] cArr = aVar.f1568b;
            sb.append(cArr[(i11 >>> 12) & 63]);
            sb.append(cArr[(i11 >>> 6) & 63]);
            sb.append(cArr[i11 & 63]);
            i4 -= 3;
            i5 = i10;
        }
        if (i5 < i6) {
            a(appendable, bArr, i5, i6 - i5);
        }
    }

    public final d c(a aVar) {
        return new c(aVar, null);
    }

    public c(a aVar, Character ch) {
        super(aVar, ch);
        if (!(aVar.f1568b.length == 64)) {
            throw new IllegalArgumentException();
        }
    }
}
