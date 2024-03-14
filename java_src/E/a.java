package E;

import android.graphics.Color;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final ThreadLocal f327a = new ThreadLocal();

    public static int a(double d4, double d5, double d6) {
        ThreadLocal threadLocal = f327a;
        double[] dArr = (double[]) threadLocal.get();
        if (dArr == null) {
            dArr = new double[3];
            threadLocal.set(dArr);
        }
        double d7 = (d4 + 16.0d) / 116.0d;
        double d8 = (d5 / 500.0d) + d7;
        double d9 = d7 - (d6 / 200.0d);
        double pow = Math.pow(d8, 3.0d);
        if (pow <= 0.008856d) {
            pow = ((d8 * 116.0d) - 16.0d) / 903.3d;
        }
        double pow2 = d4 > 7.9996247999999985d ? Math.pow(d7, 3.0d) : d4 / 903.3d;
        double pow3 = Math.pow(d9, 3.0d);
        if (pow3 <= 0.008856d) {
            pow3 = ((d9 * 116.0d) - 16.0d) / 903.3d;
        }
        double d10 = 95.047d * pow;
        dArr[0] = d10;
        double d11 = pow2 * 100.0d;
        dArr[1] = d11;
        double d12 = 108.883d * pow3;
        dArr[2] = d12;
        return c(d10, d11, d12);
    }

    public static void b(int i4, int i5, int i6, double[] dArr) {
        if (dArr.length != 3) {
            throw new IllegalArgumentException("outXyz must have a length of 3.");
        }
        double d4 = i4 / 255.0d;
        double pow = d4 < 0.04045d ? d4 / 12.92d : Math.pow((d4 + 0.055d) / 1.055d, 2.4d);
        double d5 = i5 / 255.0d;
        double pow2 = d5 < 0.04045d ? d5 / 12.92d : Math.pow((d5 + 0.055d) / 1.055d, 2.4d);
        double d6 = i6 / 255.0d;
        double pow3 = d6 < 0.04045d ? d6 / 12.92d : Math.pow((d6 + 0.055d) / 1.055d, 2.4d);
        dArr[0] = ((0.1805d * pow3) + (0.3576d * pow2) + (0.4124d * pow)) * 100.0d;
        dArr[1] = ((0.0722d * pow3) + (0.7152d * pow2) + (0.2126d * pow)) * 100.0d;
        dArr[2] = ((pow3 * 0.9505d) + (pow2 * 0.1192d) + (pow * 0.0193d)) * 100.0d;
    }

    public static int c(double d4, double d5, double d6) {
        double d7 = (((-0.4986d) * d6) + (((-1.5372d) * d5) + (3.2406d * d4))) / 100.0d;
        double d8 = ((0.0415d * d6) + ((1.8758d * d5) + ((-0.9689d) * d4))) / 100.0d;
        double d9 = ((1.057d * d6) + (((-0.204d) * d5) + (0.0557d * d4))) / 100.0d;
        return Color.rgb(i((int) Math.round((d7 > 0.0031308d ? (Math.pow(d7, 0.4166666666666667d) * 1.055d) - 0.055d : d7 * 12.92d) * 255.0d)), i((int) Math.round((d8 > 0.0031308d ? (Math.pow(d8, 0.4166666666666667d) * 1.055d) - 0.055d : d8 * 12.92d) * 255.0d)), i((int) Math.round((d9 > 0.0031308d ? (Math.pow(d9, 0.4166666666666667d) * 1.055d) - 0.055d : d9 * 12.92d) * 255.0d)));
    }

    public static int d(int i4, int i5, float f4) {
        float f5 = 1.0f - f4;
        return Color.argb((int) ((Color.alpha(i5) * f4) + (Color.alpha(i4) * f5)), (int) ((Color.red(i5) * f4) + (Color.red(i4) * f5)), (int) ((Color.green(i5) * f4) + (Color.green(i4) * f5)), (int) ((Color.blue(i5) * f4) + (Color.blue(i4) * f5)));
    }

    public static double e(int i4, int i5) {
        if (Color.alpha(i5) != 255) {
            throw new IllegalArgumentException("background can not be translucent: #" + Integer.toHexString(i5));
        }
        if (Color.alpha(i4) < 255) {
            i4 = h(i4, i5);
        }
        double f4 = f(i4) + 0.05d;
        double f5 = f(i5) + 0.05d;
        return Math.max(f4, f5) / Math.min(f4, f5);
    }

    public static double f(int i4) {
        ThreadLocal threadLocal = f327a;
        double[] dArr = (double[]) threadLocal.get();
        if (dArr == null) {
            dArr = new double[3];
            threadLocal.set(dArr);
        }
        b(Color.red(i4), Color.green(i4), Color.blue(i4), dArr);
        return dArr[1] / 100.0d;
    }

    public static void g(int i4, double[] dArr) {
        b(Color.red(i4), Color.green(i4), Color.blue(i4), dArr);
        double d4 = dArr[0];
        double d5 = dArr[1];
        double d6 = dArr[2];
        if (dArr.length != 3) {
            throw new IllegalArgumentException("outLab must have a length of 3.");
        }
        double j4 = j(d4 / 95.047d);
        double j5 = j(d5 / 100.0d);
        double j6 = j(d6 / 108.883d);
        dArr[0] = Math.max(0.0d, (116.0d * j5) - 16.0d);
        dArr[1] = (j4 - j5) * 500.0d;
        dArr[2] = (j5 - j6) * 200.0d;
    }

    public static int h(int i4, int i5) {
        int i6;
        int i7;
        int alpha = Color.alpha(i5);
        int alpha2 = Color.alpha(i4);
        int i8 = 255 - alpha2;
        int i9 = 255 - (((255 - alpha) * i8) / 255);
        int red = Color.red(i4);
        int red2 = Color.red(i5);
        int i10 = 0;
        if (i9 == 0) {
            i6 = 0;
        } else {
            i6 = (((red2 * alpha) * i8) + ((red * 255) * alpha2)) / (i9 * 255);
        }
        int green = Color.green(i4);
        int green2 = Color.green(i5);
        if (i9 == 0) {
            i7 = 0;
        } else {
            i7 = (((green2 * alpha) * i8) + ((green * 255) * alpha2)) / (i9 * 255);
        }
        int blue = Color.blue(i4);
        int blue2 = Color.blue(i5);
        if (i9 != 0) {
            i10 = (((blue2 * alpha) * i8) + ((blue * 255) * alpha2)) / (i9 * 255);
        }
        return Color.argb(i9, i6, i7, i10);
    }

    public static int i(int i4) {
        if (i4 < 0) {
            return 0;
        }
        return Math.min(i4, 255);
    }

    public static double j(double d4) {
        return d4 > 0.008856d ? Math.pow(d4, 0.3333333333333333d) : ((d4 * 903.3d) + 16.0d) / 116.0d;
    }

    public static int k(int i4, int i5) {
        if (i5 < 0 || i5 > 255) {
            throw new IllegalArgumentException("alpha must be between 0 and 255.");
        }
        return (i4 & 16777215) | (i5 << 24);
    }
}
