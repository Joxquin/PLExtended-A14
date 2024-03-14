package com.android.launcher3.touch;
/* loaded from: classes.dex */
public final class OverScroll {
    public static int dampedScroll(float f4, int i4) {
        if (Float.compare(f4, 0.0f) == 0) {
            return 0;
        }
        float f5 = i4;
        float f6 = f4 / f5;
        float abs = f6 / Math.abs(f6);
        float abs2 = Math.abs(f6) - 1.0f;
        float f7 = ((abs2 * abs2 * abs2) + 1.0f) * abs;
        if (Math.abs(f7) >= 1.0f) {
            f7 /= Math.abs(f7);
        }
        return Math.round(f7 * 0.07f * f5);
    }
}
