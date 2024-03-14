package w0;
/* renamed from: w0.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1444a {
    public static float a(float f4) {
        return f4 <= 0.04045f ? f4 / 12.92f : (float) Math.pow((f4 + 0.055f) / 1.055f, 2.4000000953674316d);
    }

    public static float b(float f4) {
        return f4 <= 0.0031308f ? f4 * 12.92f : (float) ((Math.pow(f4, 0.4166666567325592d) * 1.0549999475479126d) - 0.054999999701976776d);
    }

    public static int c(int i4, int i5, float f4) {
        if (i4 == i5) {
            return i4;
        }
        float f5 = ((i4 >> 24) & 255) / 255.0f;
        float a4 = a(((i4 >> 16) & 255) / 255.0f);
        float a5 = a(((i4 >> 8) & 255) / 255.0f);
        float a6 = a((i4 & 255) / 255.0f);
        float a7 = a(((i5 >> 16) & 255) / 255.0f);
        float a8 = a(((i5 >> 8) & 255) / 255.0f);
        float a9 = a((i5 & 255) / 255.0f);
        float a10 = w.f.a(((i5 >> 24) & 255) / 255.0f, f5, f4, f5);
        float a11 = w.f.a(a7, a4, f4, a4);
        float a12 = w.f.a(a8, a5, f4, a5);
        float a13 = w.f.a(a9, a6, f4, a6);
        int round = Math.round(b(a11) * 255.0f) << 16;
        return Math.round(b(a13) * 255.0f) | round | (Math.round(a10 * 255.0f) << 24) | (Math.round(b(a12) * 255.0f) << 8);
    }
}
