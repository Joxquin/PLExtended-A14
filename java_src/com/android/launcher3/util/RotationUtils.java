package com.android.launcher3.util;

import android.graphics.Point;
import android.graphics.Rect;
import j.C1080K;
/* loaded from: classes.dex */
public final class RotationUtils {
    public static void rotateRect(int i4, Rect rect) {
        if (i4 != 0) {
            if (i4 == 1) {
                rect.set(rect.top, rect.right, rect.bottom, rect.left);
            } else if (i4 == 2) {
                rect.set(rect.right, rect.bottom, rect.left, rect.top);
            } else if (i4 != 3) {
                throw new IllegalArgumentException(C1080K.a("unknown rotation: ", i4));
            } else {
                rect.set(rect.bottom, rect.left, rect.top, rect.right);
            }
        }
    }

    public static void rotateSize(Point point, int i4) {
        if (i4 != 0) {
            if (i4 != 1) {
                if (i4 == 2) {
                    return;
                }
                if (i4 != 3) {
                    throw new IllegalArgumentException(C1080K.a("unknown rotation: ", i4));
                }
            }
            point.set(point.y, point.x);
        }
    }
}
