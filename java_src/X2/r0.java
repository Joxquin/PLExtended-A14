package X2;

import java.io.IOException;
import java.math.RoundingMode;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.logging.Logger;
/* loaded from: classes.dex */
public final class r0 {

    /* renamed from: c  reason: collision with root package name */
    public static final Logger f2219c = Logger.getLogger(r0.class.getName());

    /* renamed from: d  reason: collision with root package name */
    public static final C0118h0 f2220d = new C0118h0();

    /* renamed from: e  reason: collision with root package name */
    public static final P2.c f2221e;

    /* renamed from: a  reason: collision with root package name */
    public Object[] f2222a;

    /* renamed from: b  reason: collision with root package name */
    public int f2223b;

    static {
        P2.c cVar = P2.d.f1575c;
        Character ch = cVar.f1577b;
        P2.c cVar2 = cVar;
        if (ch != null) {
            cVar2 = cVar.c(cVar.f1576a);
        }
        f2221e = cVar2;
    }

    public r0() {
    }

    public r0(int i4, Object[] objArr) {
        this.f2223b = i4;
        this.f2222a = objArr;
    }

    public final void a(AbstractC0130n0 abstractC0130n0) {
        if (this.f2223b == 0) {
            return;
        }
        int i4 = 0;
        int i5 = 0;
        while (true) {
            int i6 = this.f2223b;
            if (i4 >= i6) {
                Arrays.fill(this.f2222a, i5 * 2, i6 * 2, (Object) null);
                this.f2223b = i5;
                return;
            }
            int i7 = i4 * 2;
            if (!Arrays.equals(abstractC0130n0.f2207b, (byte[]) this.f2222a[i7])) {
                Object[] objArr = this.f2222a;
                int i8 = i5 * 2;
                objArr[i8] = (byte[]) objArr[i7];
                Object obj = objArr[i7 + 1];
                if (objArr instanceof byte[][]) {
                    b(objArr != null ? objArr.length : 0);
                }
                this.f2222a[i8 + 1] = obj;
                i5++;
            }
            i4++;
        }
    }

    public final void b(int i4) {
        Object[] objArr = new Object[i4];
        int i5 = this.f2223b;
        if (!(i5 == 0)) {
            System.arraycopy(this.f2222a, 0, objArr, 0, i5 * 2);
        }
        this.f2222a = objArr;
    }

    public final Object c(AbstractC0130n0 abstractC0130n0) {
        int i4;
        int i5 = this.f2223b;
        do {
            i5--;
            if (i5 < 0) {
                return null;
            }
            i4 = i5 * 2;
        } while (!Arrays.equals(abstractC0130n0.f2207b, (byte[]) this.f2222a[i4]));
        Object obj = this.f2222a[i4 + 1];
        if (obj instanceof byte[]) {
            return abstractC0130n0.b((byte[]) obj);
        }
        C0132o0 c0132o0 = (C0132o0) obj;
        c0132o0.getClass();
        return abstractC0130n0.b(c0132o0.a());
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0017, code lost:
        if (r1 == (r2 != null ? r2.length : 0)) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void d(X2.AbstractC0130n0 r5, java.lang.Object r6) {
        /*
            r4 = this;
            java.lang.String r0 = "key"
            O2.m.h(r5, r0)
            java.lang.String r0 = "value"
            O2.m.h(r6, r0)
            int r0 = r4.f2223b
            int r1 = r0 * 2
            if (r1 == 0) goto L19
            java.lang.Object[] r2 = r4.f2222a
            if (r2 == 0) goto L16
            int r2 = r2.length
            goto L17
        L16:
            r2 = 0
        L17:
            if (r1 != r2) goto L26
        L19:
            int r0 = r0 * 2
            int r0 = r0 * 2
            r1 = 8
            int r0 = java.lang.Math.max(r0, r1)
            r4.b(r0)
        L26:
            int r0 = r4.f2223b
            java.lang.Object[] r1 = r4.f2222a
            int r2 = r0 * 2
            byte[] r3 = r5.f2207b
            r1[r2] = r3
            byte[] r5 = r5.c(r6)
            java.lang.Object[] r6 = r4.f2222a
            int r0 = r0 * 2
            int r0 = r0 + 1
            r6[r0] = r5
            int r5 = r4.f2223b
            int r5 = r5 + 1
            r4.f2223b = r5
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: X2.r0.d(X2.n0, java.lang.Object):void");
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Metadata(");
        for (int i4 = 0; i4 < this.f2223b; i4++) {
            if (i4 != 0) {
                sb.append(',');
            }
            int i5 = i4 * 2;
            Charset charset = O2.e.f1510a;
            String str = new String((byte[]) this.f2222a[i5], charset);
            sb.append(str);
            sb.append('=');
            if (str.endsWith("-bin")) {
                Object obj = this.f2222a[i5 + 1];
                byte[] a4 = obj instanceof byte[] ? (byte[]) obj : ((C0132o0) obj).a();
                P2.c cVar = f2221e;
                cVar.getClass();
                int length = a4.length;
                O2.m.j(0, length + 0, a4.length);
                P2.a aVar = cVar.f1576a;
                StringBuilder sb2 = new StringBuilder(Q2.b.a(length, aVar.f1572f, RoundingMode.CEILING) * aVar.f1571e);
                try {
                    cVar.b(sb2, a4, length);
                    sb.append(sb2.toString());
                } catch (IOException e4) {
                    throw new AssertionError(e4);
                }
            } else {
                Object obj2 = this.f2222a[i5 + 1];
                sb.append(new String(obj2 instanceof byte[] ? (byte[]) obj2 : ((C0132o0) obj2).a(), charset));
            }
        }
        sb.append(')');
        return sb.toString();
    }
}
