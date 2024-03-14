package com.android.launcher3.util;

import android.content.res.Resources;
import android.graphics.Point;
import com.android.launcher3.DeviceProfile;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class DimensionUtils {
    public static final Point getTaskbarPhoneDimensions(DeviceProfile deviceProfile, Resources res, boolean z4) {
        kotlin.jvm.internal.h.e(deviceProfile, "deviceProfile");
        kotlin.jvm.internal.h.e(res, "res");
        Point point = new Point();
        if (!z4) {
            point.x = -1;
            point.y = deviceProfile.taskbarHeight;
            return point;
        } else if (deviceProfile.isGestureMode) {
            point.x = -1;
            point.y = res.getDimensionPixelSize(R.dimen.taskbar_stashed_size);
            return point;
        } else if (deviceProfile.isLandscape) {
            point.x = res.getDimensionPixelSize(R.dimen.taskbar_size);
            point.y = -1;
            return point;
        } else {
            point.x = -1;
            point.y = res.getDimensionPixelSize(R.dimen.taskbar_size);
            return point;
        }
    }
}
