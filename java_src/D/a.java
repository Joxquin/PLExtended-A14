package D;

import android.graphics.Color;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final float f248a;

    /* renamed from: b  reason: collision with root package name */
    public final float f249b;

    /* renamed from: c  reason: collision with root package name */
    public final float f250c;

    /* renamed from: d  reason: collision with root package name */
    public final float f251d;

    /* renamed from: e  reason: collision with root package name */
    public final float f252e;

    /* renamed from: f  reason: collision with root package name */
    public final float f253f;

    public a(float f4, float f5, float f6, float f7, float f8, float f9) {
        this.f248a = f4;
        this.f249b = f5;
        this.f250c = f6;
        this.f251d = f7;
        this.f252e = f8;
        this.f253f = f9;
    }

    public static a a(int i4) {
        float[] fArr = new float[7];
        float[] fArr2 = new float[3];
        b(i4, p.f281k, fArr, fArr2);
        return new a(fArr2[0], fArr2[1], fArr[0], fArr[4], fArr[5], fArr[6]);
    }

    public static void b(int i4, p pVar, float[] fArr, float[] fArr2) {
        float f4;
        float pow;
        float c4 = b.c(Color.red(i4));
        float c5 = b.c(Color.green(i4));
        float c6 = b.c(Color.blue(i4));
        float[][] fArr3 = b.f257d;
        float[] fArr4 = fArr3[0];
        float f5 = (fArr4[2] * c6) + (fArr4[1] * c5) + (fArr4[0] * c4);
        fArr2[0] = f5;
        float[] fArr5 = fArr3[1];
        float f6 = (fArr5[2] * c6) + (fArr5[1] * c5) + (fArr5[0] * c4);
        fArr2[1] = f6;
        float[] fArr6 = fArr3[2];
        float f7 = (c6 * fArr6[2]) + (c5 * fArr6[1]) + (c4 * fArr6[0]);
        fArr2[2] = f7;
        float[][] fArr7 = b.f254a;
        float[] fArr8 = fArr7[0];
        float f8 = (fArr8[2] * f7) + (fArr8[1] * f6) + (fArr8[0] * f5);
        float[] fArr9 = fArr7[1];
        float f9 = fArr9[1] * f6;
        float f10 = fArr9[2] * f7;
        float[] fArr10 = fArr7[2];
        float f11 = f5 * fArr10[0];
        float f12 = f7 * fArr10[2];
        float[] fArr11 = pVar.f288g;
        float f13 = fArr11[0] * f8;
        float f14 = fArr11[1] * (f10 + f9 + (fArr9[0] * f5));
        float f15 = fArr11[2] * (f12 + (f6 * fArr10[1]) + f11);
        float abs = Math.abs(f13);
        float f16 = pVar.f289h;
        float pow2 = (float) Math.pow((abs * f16) / 100.0d, 0.42d);
        float pow3 = (float) Math.pow((Math.abs(f14) * f16) / 100.0d, 0.42d);
        float pow4 = (float) Math.pow((Math.abs(f15) * f16) / 100.0d, 0.42d);
        float signum = ((Math.signum(f13) * 400.0f) * pow2) / (pow2 + 27.13f);
        float signum2 = ((Math.signum(f14) * 400.0f) * pow3) / (pow3 + 27.13f);
        float signum3 = ((Math.signum(f15) * 400.0f) * pow4) / (pow4 + 27.13f);
        double d4 = signum3;
        float f17 = ((float) (((signum2 * (-12.0d)) + (signum * 11.0d)) + d4)) / 11.0f;
        float f18 = ((float) ((signum + signum2) - (d4 * 2.0d))) / 9.0f;
        float f19 = signum2 * 20.0f;
        float f20 = ((21.0f * signum3) + ((signum * 20.0f) + f19)) / 20.0f;
        float f21 = (((signum * 40.0f) + f19) + signum3) / 20.0f;
        float atan2 = (((float) Math.atan2(f18, f17)) * 180.0f) / 3.1415927f;
        if (atan2 < 0.0f) {
            atan2 += 360.0f;
        } else if (atan2 >= 360.0f) {
            atan2 -= 360.0f;
        }
        float f22 = (3.1415927f * atan2) / 180.0f;
        float f23 = f21 * pVar.f283b;
        float f24 = pVar.f282a;
        double d5 = f23 / f24;
        float f25 = pVar.f291j;
        float f26 = pVar.f285d;
        float pow5 = ((float) Math.pow(d5, f25 * f26)) * 100.0f;
        float f27 = pVar.f290i;
        float sqrt = (4.0f / f26) * ((float) Math.sqrt(pow5 / 100.0f)) * (f24 + 4.0f) * f27;
        float sqrt2 = ((float) Math.sqrt(pow5 / 100.0d)) * ((float) Math.pow(1.64d - Math.pow(0.29d, pVar.f287f), 0.73d)) * ((float) Math.pow((((((((float) (Math.cos((((((double) atan2) < 20.14d ? 360.0f + atan2 : atan2) * 3.141592653589793d) / 180.0d) + 2.0d) + 3.8d)) * 0.25f) * 3846.1538f) * pVar.f286e) * pVar.f284c) * ((float) Math.sqrt((f18 * f18) + (f17 * f17)))) / (f20 + 0.305f), 0.9d));
        float f28 = f27 * sqrt2;
        float sqrt3 = ((float) Math.sqrt((pow * f26) / f4)) * 50.0f;
        float f29 = (1.7f * pow5) / ((0.007f * pow5) + 1.0f);
        float log = ((float) Math.log((0.0228f * f28) + 1.0f)) * 43.85965f;
        double d6 = f22;
        float cos = ((float) Math.cos(d6)) * log;
        float sin = log * ((float) Math.sin(d6));
        fArr2[0] = atan2;
        fArr2[1] = sqrt2;
        if (fArr != null) {
            fArr[0] = pow5;
            fArr[1] = sqrt;
            fArr[2] = f28;
            fArr[3] = sqrt3;
            fArr[4] = f29;
            fArr[5] = cos;
            fArr[6] = sin;
        }
    }

    public static a c(float f4, float f5, float f6) {
        p pVar;
        double d4;
        float f7 = p.f281k.f285d;
        Math.sqrt(f4 / 100.0d);
        Math.sqrt(((f5 / ((float) Math.sqrt(d4))) * pVar.f285d) / (pVar.f282a + 4.0f));
        float f8 = (1.7f * f4) / ((0.007f * f4) + 1.0f);
        float log = ((float) Math.log((pVar.f290i * f5 * 0.0228d) + 1.0d)) * 43.85965f;
        double d5 = (3.1415927f * f6) / 180.0f;
        return new a(f6, f5, f4, f8, log * ((float) Math.cos(d5)), log * ((float) Math.sin(d5)));
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x00e1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00d7 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int d(float r21, float r22, float r23) {
        /*
            Method dump skipped, instructions count: 296
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: D.a.d(float, float, float):int");
    }

    public final int e(p pVar) {
        float f4;
        float[] fArr;
        float f5 = this.f249b;
        int i4 = (f5 > 0.0d ? 1 : (f5 == 0.0d ? 0 : -1));
        float f6 = this.f250c;
        if (i4 != 0) {
            double d4 = f6;
            if (d4 != 0.0d) {
                f4 = f5 / ((float) Math.sqrt(d4 / 100.0d));
                float pow = (float) Math.pow(f4 / Math.pow(1.64d - Math.pow(0.29d, pVar.f287f), 0.73d), 1.1111111111111112d);
                double d5 = (this.f248a * 3.1415927f) / 180.0f;
                float pow2 = pVar.f282a * ((float) Math.pow(f6 / 100.0d, (1.0d / pVar.f285d) / pVar.f291j));
                float cos = ((float) (Math.cos(2.0d + d5) + 3.8d)) * 0.25f * 3846.1538f * pVar.f286e * pVar.f284c;
                float f7 = pow2 / pVar.f283b;
                float sin = (float) Math.sin(d5);
                float cos2 = (float) Math.cos(d5);
                float f8 = (((0.305f + f7) * 23.0f) * pow) / (((pow * 108.0f) * sin) + (((11.0f * pow) * cos2) + (cos * 23.0f)));
                float f9 = cos2 * f8;
                float f10 = f8 * sin;
                float f11 = f7 * 460.0f;
                float f12 = ((288.0f * f10) + ((451.0f * f9) + f11)) / 1403.0f;
                float f13 = ((f11 - (891.0f * f9)) - (261.0f * f10)) / 1403.0f;
                float f14 = ((f11 - (f9 * 220.0f)) - (f10 * 6300.0f)) / 1403.0f;
                float max = (float) Math.max(0.0d, (Math.abs(f12) * 27.13d) / (400.0d - Math.abs(f12)));
                float signum = Math.signum(f12);
                float f15 = 100.0f / pVar.f289h;
                float pow3 = signum * f15 * ((float) Math.pow(max, 2.380952380952381d));
                float signum2 = Math.signum(f13) * f15 * ((float) Math.pow((float) Math.max(0.0d, (Math.abs(f13) * 27.13d) / (400.0d - Math.abs(f13))), 2.380952380952381d));
                float signum3 = Math.signum(f14) * f15 * ((float) Math.pow((float) Math.max(0.0d, (Math.abs(f14) * 27.13d) / (400.0d - Math.abs(f14))), 2.380952380952381d));
                float[] fArr2 = pVar.f288g;
                float f16 = pow3 / fArr2[0];
                float f17 = signum2 / fArr2[1];
                float f18 = signum3 / fArr2[2];
                float[][] fArr3 = b.f255b;
                float[] fArr4 = fArr3[0];
                float f19 = (fArr4[2] * f18) + (fArr4[1] * f17) + (fArr4[0] * f16);
                float[] fArr5 = fArr3[1];
                float f20 = fArr5[1] * f17;
                float f21 = fArr5[2] * f18;
                float f22 = f16 * fArr3[2][0];
                return E.a.c(f19, f21 + f20 + (fArr5[0] * f16), (f18 * fArr[2]) + (f17 * fArr[1]) + f22);
            }
        }
        f4 = 0.0f;
        float pow4 = (float) Math.pow(f4 / Math.pow(1.64d - Math.pow(0.29d, pVar.f287f), 0.73d), 1.1111111111111112d);
        double d52 = (this.f248a * 3.1415927f) / 180.0f;
        float pow22 = pVar.f282a * ((float) Math.pow(f6 / 100.0d, (1.0d / pVar.f285d) / pVar.f291j));
        float cos3 = ((float) (Math.cos(2.0d + d52) + 3.8d)) * 0.25f * 3846.1538f * pVar.f286e * pVar.f284c;
        float f72 = pow22 / pVar.f283b;
        float sin2 = (float) Math.sin(d52);
        float cos22 = (float) Math.cos(d52);
        float f82 = (((0.305f + f72) * 23.0f) * pow4) / (((pow4 * 108.0f) * sin2) + (((11.0f * pow4) * cos22) + (cos3 * 23.0f)));
        float f92 = cos22 * f82;
        float f102 = f82 * sin2;
        float f112 = f72 * 460.0f;
        float f122 = ((288.0f * f102) + ((451.0f * f92) + f112)) / 1403.0f;
        float f132 = ((f112 - (891.0f * f92)) - (261.0f * f102)) / 1403.0f;
        float f142 = ((f112 - (f92 * 220.0f)) - (f102 * 6300.0f)) / 1403.0f;
        float max2 = (float) Math.max(0.0d, (Math.abs(f122) * 27.13d) / (400.0d - Math.abs(f122)));
        float signum4 = Math.signum(f122);
        float f152 = 100.0f / pVar.f289h;
        float pow32 = signum4 * f152 * ((float) Math.pow(max2, 2.380952380952381d));
        float signum22 = Math.signum(f132) * f152 * ((float) Math.pow((float) Math.max(0.0d, (Math.abs(f132) * 27.13d) / (400.0d - Math.abs(f132))), 2.380952380952381d));
        float signum32 = Math.signum(f142) * f152 * ((float) Math.pow((float) Math.max(0.0d, (Math.abs(f142) * 27.13d) / (400.0d - Math.abs(f142))), 2.380952380952381d));
        float[] fArr22 = pVar.f288g;
        float f162 = pow32 / fArr22[0];
        float f172 = signum22 / fArr22[1];
        float f182 = signum32 / fArr22[2];
        float[][] fArr32 = b.f255b;
        float[] fArr42 = fArr32[0];
        float f192 = (fArr42[2] * f182) + (fArr42[1] * f172) + (fArr42[0] * f162);
        float[] fArr52 = fArr32[1];
        float f202 = fArr52[1] * f172;
        float f212 = fArr52[2] * f182;
        float f222 = f162 * fArr32[2][0];
        return E.a.c(f192, f212 + f202 + (fArr52[0] * f162), (f182 * fArr[2]) + (f172 * fArr[1]) + f222);
    }
}
