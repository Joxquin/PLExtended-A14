package U;

import w.f;
/* loaded from: classes.dex */
public final class d {
    public static float a(float[] fArr, float f4, float f5) {
        if (f5 >= 1.0f) {
            return 1.0f;
        }
        if (f5 <= 0.0f) {
            return 0.0f;
        }
        int min = Math.min((int) ((fArr.length - 1) * f5), fArr.length - 2);
        float f6 = (f5 - (min * f4)) / f4;
        float f7 = fArr[min];
        return f.a(fArr[min + 1], f7, f6, f7);
    }
}
