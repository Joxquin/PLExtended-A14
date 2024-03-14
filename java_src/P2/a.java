package P2;

import O2.p;
import java.math.RoundingMode;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final String f1567a;

    /* renamed from: b  reason: collision with root package name */
    public final char[] f1568b;

    /* renamed from: c  reason: collision with root package name */
    public final int f1569c;

    /* renamed from: d  reason: collision with root package name */
    public final int f1570d;

    /* renamed from: e  reason: collision with root package name */
    public final int f1571e;

    /* renamed from: f  reason: collision with root package name */
    public final int f1572f;

    /* renamed from: g  reason: collision with root package name */
    public final byte[] f1573g;

    public a(String str, char[] cArr) {
        this.f1567a = str;
        cArr.getClass();
        this.f1568b = cArr;
        try {
            int b4 = Q2.b.b(cArr.length, RoundingMode.UNNECESSARY);
            this.f1570d = b4;
            int min = Math.min(8, Integer.lowestOneBit(b4));
            try {
                this.f1571e = 8 / min;
                this.f1572f = b4 / min;
                this.f1569c = cArr.length - 1;
                byte[] bArr = new byte[128];
                Arrays.fill(bArr, (byte) -1);
                for (int i4 = 0; i4 < cArr.length; i4++) {
                    char c4 = cArr[i4];
                    if (!(c4 < 128)) {
                        throw new IllegalArgumentException(p.a("Non-ASCII character: %s", Character.valueOf(c4)));
                    }
                    if (!(bArr[c4] == -1)) {
                        throw new IllegalArgumentException(p.a("Duplicate character: %s", Character.valueOf(c4)));
                    }
                    bArr[c4] = (byte) i4;
                }
                this.f1573g = bArr;
                boolean[] zArr = new boolean[this.f1571e];
                for (int i5 = 0; i5 < this.f1572f; i5++) {
                    zArr[Q2.b.a(i5 * 8, this.f1570d, RoundingMode.CEILING)] = true;
                }
            } catch (ArithmeticException e4) {
                throw new IllegalArgumentException("Illegal alphabet ".concat(new String(cArr)), e4);
            }
        } catch (ArithmeticException e5) {
            throw new IllegalArgumentException("Illegal alphabet length " + cArr.length, e5);
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof a) {
            return Arrays.equals(this.f1568b, ((a) obj).f1568b);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f1568b);
    }

    public final String toString() {
        return this.f1567a;
    }
}
