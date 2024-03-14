package com.android.systemui.shared.recents.utilities;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Rect;
import android.os.Handler;
import android.view.WindowManager;
/* loaded from: classes.dex */
public class Utilities {
    private static final float TABLET_MIN_DPS = 600.0f;

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0009, code lost:
        if (r3 != 3) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int calculateBackDispositionHints(int r2, int r3, boolean r4, boolean r5) {
        /*
            r0 = 2
            if (r3 == 0) goto Lf
            r1 = 1
            if (r3 == r1) goto Lf
            if (r3 == r0) goto Lf
            r1 = 3
            if (r3 == r1) goto Lc
            goto L13
        Lc:
            r2 = r2 & (-2)
            goto L13
        Lf:
            if (r4 == 0) goto Lc
            r2 = r2 | 1
        L13:
            if (r4 == 0) goto L17
            r2 = r2 | r0
            goto L19
        L17:
            r2 = r2 & (-3)
        L19:
            if (r5 == 0) goto L1e
            r2 = r2 | 4
            goto L20
        L1e:
            r2 = r2 & (-5)
        L20:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.shared.recents.utilities.Utilities.calculateBackDispositionHints(int, int, boolean, boolean):int");
    }

    public static float clamp(float f4, float f5, float f6) {
        return Math.max(f5, Math.min(f6, f4));
    }

    public static float computeContrastBetweenColors(int i4, int i5) {
        float red = Color.red(i4) / 255.0f;
        float green = Color.green(i4) / 255.0f;
        float blue = Color.blue(i4) / 255.0f;
        float pow = red < 0.03928f ? red / 12.92f : (float) Math.pow((red + 0.055f) / 1.055f, 2.4000000953674316d);
        float pow2 = green < 0.03928f ? green / 12.92f : (float) Math.pow((green + 0.055f) / 1.055f, 2.4000000953674316d);
        float pow3 = ((blue < 0.03928f ? blue / 12.92f : (float) Math.pow((blue + 0.055f) / 1.055f, 2.4000000953674316d)) * 0.0722f) + (pow2 * 0.7152f) + (pow * 0.2126f);
        float red2 = Color.red(i5) / 255.0f;
        float green2 = Color.green(i5) / 255.0f;
        float blue2 = Color.blue(i5) / 255.0f;
        float pow4 = red2 < 0.03928f ? red2 / 12.92f : (float) Math.pow((red2 + 0.055f) / 1.055f, 2.4000000953674316d);
        return Math.abs(((((blue2 < 0.03928f ? blue2 / 12.92f : (float) Math.pow((blue2 + 0.055f) / 1.055f, 2.4000000953674316d)) * 0.0722f) + (((green2 < 0.03928f ? green2 / 12.92f : (float) Math.pow((green2 + 0.055f) / 1.055f, 2.4000000953674316d)) * 0.7152f) + (pow4 * 0.2126f))) + 0.05f) / (pow3 + 0.05f));
    }

    public static float dpiFromPx(float f4, int i4) {
        return f4 / (i4 / 160.0f);
    }

    public static boolean isLargeScreen(Context context) {
        Rect bounds = ((WindowManager) context.getSystemService(WindowManager.class)).getCurrentWindowMetrics().getBounds();
        return dpiFromPx((float) Math.min(bounds.width(), bounds.height()), context.getResources().getConfiguration().densityDpi) >= TABLET_MIN_DPS;
    }

    public static boolean isRelativePercentDifferenceGreaterThan(float f4, float f5, float f6) {
        return Math.abs(f4 - f5) / Math.abs((f4 + f5) / 2.0f) > f6;
    }

    public static boolean isRotationAnimationCCW(int i4, int i5) {
        if (i4 == 0 && i5 == 1) {
            return false;
        }
        if (i4 == 0 && i5 == 2) {
            return true;
        }
        if (i4 == 0 && i5 == 3) {
            return true;
        }
        if (i4 == 1 && i5 == 0) {
            return true;
        }
        if (i4 == 1 && i5 == 2) {
            return false;
        }
        if (i4 == 1 && i5 == 3) {
            return true;
        }
        if (i4 == 2 && i5 == 0) {
            return true;
        }
        if (i4 == 2 && i5 == 1) {
            return true;
        }
        if (i4 == 2 && i5 == 3) {
            return false;
        }
        if (i4 == 3 && i5 == 0) {
            return false;
        }
        if (i4 == 3 && i5 == 1) {
            return true;
        }
        return i4 == 3 && i5 == 2;
    }

    public static void postAtFrontOfQueueAsynchronously(Handler handler, Runnable runnable) {
        handler.sendMessageAtFrontOfQueue(handler.obtainMessage().setCallback(runnable));
    }
}
