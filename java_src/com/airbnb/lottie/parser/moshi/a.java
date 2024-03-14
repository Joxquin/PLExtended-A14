package com.airbnb.lottie.parser.moshi;

import java.io.Closeable;
import java.util.Arrays;
import t.j;
import v0.C1430a;
/* loaded from: classes.dex */
public abstract class a implements Closeable {

    /* renamed from: h  reason: collision with root package name */
    public static final String[] f4383h = new String[128];

    /* renamed from: d  reason: collision with root package name */
    public int f4384d;

    /* renamed from: e  reason: collision with root package name */
    public int[] f4385e = new int[32];

    /* renamed from: f  reason: collision with root package name */
    public String[] f4386f = new String[32];

    /* renamed from: g  reason: collision with root package name */
    public int[] f4387g = new int[32];

    static {
        for (int i4 = 0; i4 <= 31; i4++) {
            f4383h[i4] = String.format("\\u%04x", Integer.valueOf(i4));
        }
        String[] strArr = f4383h;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
    }

    public abstract void a();

    public abstract void b();

    public abstract void c();

    public abstract void d();

    public final String e() {
        int i4 = this.f4384d;
        int[] iArr = this.f4385e;
        String[] strArr = this.f4386f;
        int[] iArr2 = this.f4387g;
        StringBuilder sb = new StringBuilder("$");
        for (int i5 = 0; i5 < i4; i5++) {
            int i6 = iArr[i5];
            if (i6 == 1 || i6 == 2) {
                sb.append('[');
                sb.append(iArr2[i5]);
                sb.append(']');
            } else if (i6 == 3 || i6 == 4 || i6 == 5) {
                sb.append('.');
                String str = strArr[i5];
                if (str != null) {
                    sb.append(str);
                }
            }
        }
        return sb.toString();
    }

    public abstract boolean h();

    public abstract boolean i();

    public abstract double j();

    public abstract int k();

    public abstract String l();

    public abstract JsonReader$Token n();

    public final void o(int i4) {
        int i5 = this.f4384d;
        int[] iArr = this.f4385e;
        if (i5 == iArr.length) {
            if (i5 == 256) {
                throw new JsonDataException("Nesting too deep at " + e());
            }
            this.f4385e = Arrays.copyOf(iArr, iArr.length * 2);
            String[] strArr = this.f4386f;
            this.f4386f = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
            int[] iArr2 = this.f4387g;
            this.f4387g = Arrays.copyOf(iArr2, iArr2.length * 2);
        }
        int[] iArr3 = this.f4385e;
        int i6 = this.f4384d;
        this.f4384d = i6 + 1;
        iArr3[i6] = i4;
    }

    public abstract int r(C1430a c1430a);

    public abstract void t();

    public abstract void u();

    public final void v(String str) {
        StringBuilder a4 = j.a(str, " at path ");
        a4.append(e());
        throw new JsonEncodingException(a4.toString());
    }
}
