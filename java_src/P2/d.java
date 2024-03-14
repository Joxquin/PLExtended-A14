package P2;

import O2.k;
import O2.m;
import java.util.Arrays;
/* loaded from: classes.dex */
public class d {

    /* renamed from: c  reason: collision with root package name */
    public static final c f1575c = new c("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", '=');

    /* renamed from: a  reason: collision with root package name */
    public final a f1576a;

    /* renamed from: b  reason: collision with root package name */
    public final Character f1577b;

    static {
        new c("base64Url()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_", '=');
        new d("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567", '=');
        new d("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV", '=');
        new b(new a("base16()", "0123456789ABCDEF".toCharArray()));
    }

    public d(a aVar, Character ch) {
        aVar.getClass();
        this.f1576a = aVar;
        boolean z4 = true;
        if (ch != null) {
            char charValue = ch.charValue();
            byte[] bArr = aVar.f1573g;
            if (charValue < bArr.length && bArr[charValue] != -1) {
                z4 = false;
            }
        }
        m.d("Padding character %s was already in alphabet", ch, z4);
        this.f1577b = ch;
    }

    public final void a(Appendable appendable, byte[] bArr, int i4, int i5) {
        m.j(i4, i4 + i5, bArr.length);
        a aVar = this.f1576a;
        int i6 = 0;
        if (!(i5 <= aVar.f1572f)) {
            throw new IllegalArgumentException();
        }
        long j4 = 0;
        for (int i7 = 0; i7 < i5; i7++) {
            j4 = (j4 | (bArr[i4 + i7] & 255)) << 8;
        }
        int i8 = aVar.f1570d;
        int i9 = ((i5 + 1) * 8) - i8;
        while (i6 < i5 * 8) {
            ((StringBuilder) appendable).append(aVar.f1568b[((int) (j4 >>> (i9 - i6))) & aVar.f1569c]);
            i6 += i8;
        }
        Character ch = this.f1577b;
        if (ch != null) {
            while (i6 < aVar.f1572f * 8) {
                ((StringBuilder) appendable).append(ch.charValue());
                i6 += i8;
            }
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof d) {
            d dVar = (d) obj;
            return this.f1576a.equals(dVar.f1576a) && k.a(this.f1577b, dVar.f1577b);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f1577b}) ^ this.f1576a.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BaseEncoding.");
        a aVar = this.f1576a;
        sb.append(aVar.f1567a);
        if (8 % aVar.f1570d != 0) {
            Character ch = this.f1577b;
            if (ch == null) {
                sb.append(".omitPadding()");
            } else {
                sb.append(".withPadChar('");
                sb.append(ch);
                sb.append("')");
            }
        }
        return sb.toString();
    }

    public d(String str, String str2, Character ch) {
        this(new a(str, str2.toCharArray()), ch);
    }
}
