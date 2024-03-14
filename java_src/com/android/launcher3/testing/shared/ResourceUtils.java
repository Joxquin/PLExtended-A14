package com.android.launcher3.testing.shared;

import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.util.TypedValue;
/* loaded from: classes.dex */
public final class ResourceUtils {
    public static int getDimenByName(int i4, Resources resources, String str) {
        int identifier = resources.getIdentifier(str, "dimen", "android");
        return identifier != 0 ? resources.getDimensionPixelSize(identifier) : pxFromDp(i4, resources.getDisplayMetrics());
    }

    public static int getNavbarSize(Resources resources, String str) {
        return getDimenByName(48, resources, str);
    }

    public static int pxFromDp(float f4, DisplayMetrics displayMetrics) {
        return pxFromDp(f4, displayMetrics, 1.0f);
    }

    public static int roundPxValueFromFloat(float f4) {
        double d4 = f4;
        if (Math.abs(0.5f - ((float) (d4 - Math.floor(d4)))) < 1.0E-4f) {
            f4 += 1.0E-4f;
        }
        return Math.round(f4);
    }

    public static int pxFromDp(float f4, DisplayMetrics displayMetrics, float f5) {
        float applyDimension = TypedValue.applyDimension(1, f4, displayMetrics) * f5;
        if (f4 < 0.0f) {
            return -1;
        }
        return roundPxValueFromFloat(applyDimension);
    }
}
