package D;
/* loaded from: classes.dex */
public final class p {

    /* renamed from: k  reason: collision with root package name */
    public static final p f281k;

    /* renamed from: a  reason: collision with root package name */
    public final float f282a;

    /* renamed from: b  reason: collision with root package name */
    public final float f283b;

    /* renamed from: c  reason: collision with root package name */
    public final float f284c;

    /* renamed from: d  reason: collision with root package name */
    public final float f285d;

    /* renamed from: e  reason: collision with root package name */
    public final float f286e;

    /* renamed from: f  reason: collision with root package name */
    public final float f287f;

    /* renamed from: g  reason: collision with root package name */
    public final float[] f288g;

    /* renamed from: h  reason: collision with root package name */
    public final float f289h;

    /* renamed from: i  reason: collision with root package name */
    public final float f290i;

    /* renamed from: j  reason: collision with root package name */
    public final float f291j;

    static {
        float f4;
        float f5;
        float[] fArr = b.f256c;
        float d4 = (float) ((b.d() * 63.66197723675813d) / 100.0d);
        float[][] fArr2 = b.f254a;
        float f6 = fArr[0];
        float[] fArr3 = fArr2[0];
        float f7 = fArr[1];
        float f8 = fArr3[1] * f7;
        float f9 = fArr[2];
        float f10 = (fArr3[2] * f9) + f8 + (fArr3[0] * f6);
        float[] fArr4 = fArr2[1];
        float f11 = (fArr4[2] * f9) + (fArr4[1] * f7) + (fArr4[0] * f6);
        float[] fArr5 = fArr2[2];
        float f12 = (f9 * fArr5[2]) + (f7 * fArr5[1]) + (f6 * fArr5[0]);
        if (1.0f >= 0.9d) {
            f4 = 0.100000046f;
            f5 = 0.59f;
        } else {
            f4 = 0.12999998f;
            f5 = 0.525f;
        }
        float f13 = f4 + f5;
        float exp = (1.0f - (((float) Math.exp(((-d4) - 42.0f) / 92.0f)) * 0.2777778f)) * 1.0f;
        double d5 = exp;
        if (d5 > 1.0d) {
            exp = 1.0f;
        } else if (d5 < 0.0d) {
            exp = 0.0f;
        }
        float[] fArr6 = {(((100.0f / f10) * exp) + 1.0f) - exp, (((100.0f / f11) * exp) + 1.0f) - exp, (((100.0f / f12) * exp) + 1.0f) - exp};
        float f14 = 1.0f / ((5.0f * d4) + 1.0f);
        float f15 = f14 * f14 * f14 * f14;
        float f16 = 1.0f - f15;
        float cbrt = (0.1f * f16 * f16 * ((float) Math.cbrt(d4 * 5.0d))) + (f15 * d4);
        float d6 = b.d() / fArr[1];
        double d7 = d6;
        float sqrt = ((float) Math.sqrt(d7)) + 1.48f;
        float pow = 0.725f / ((float) Math.pow(d7, 0.2d));
        float pow2 = (float) Math.pow(((fArr6[2] * cbrt) * f12) / 100.0d, 0.42d);
        float[] fArr7 = {(float) Math.pow(((fArr6[0] * cbrt) * f10) / 100.0d, 0.42d), (float) Math.pow(((fArr6[1] * cbrt) * f11) / 100.0d, 0.42d), pow2};
        float f17 = fArr7[0];
        float f18 = fArr7[1];
        f281k = new p(d6, ((((400.0f * pow2) / (pow2 + 27.13f)) * 0.05f) + (((f17 * 400.0f) / (f17 + 27.13f)) * 2.0f) + ((f18 * 400.0f) / (f18 + 27.13f))) * pow, pow, pow, f13, 1.0f, fArr6, cbrt, (float) Math.pow(cbrt, 0.25d), sqrt);
    }

    public p(float f4, float f5, float f6, float f7, float f8, float f9, float[] fArr, float f10, float f11, float f12) {
        this.f287f = f4;
        this.f282a = f5;
        this.f283b = f6;
        this.f284c = f7;
        this.f285d = f8;
        this.f286e = f9;
        this.f288g = fArr;
        this.f289h = f10;
        this.f290i = f11;
        this.f291j = f12;
    }
}
