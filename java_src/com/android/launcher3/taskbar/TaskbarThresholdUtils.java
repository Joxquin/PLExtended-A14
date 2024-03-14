package com.android.launcher3.taskbar;

import android.content.res.Resources;
import android.util.DisplayMetrics;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Utilities;
import com.android.launcher3.config.FeatureFlags;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class TaskbarThresholdUtils {
    public static int getAppWindowThreshold(Resources resources, DeviceProfile deviceProfile) {
        return getThreshold(resources, deviceProfile, R.dimen.taskbar_app_window_threshold, R.dimen.taskbar_app_window_threshold_mult);
    }

    public static int getCatchUpThreshold(Resources resources, DeviceProfile deviceProfile) {
        return getThreshold(resources, deviceProfile, R.dimen.taskbar_catch_up_threshold, R.dimen.taskbar_catch_up_threshold_mult);
    }

    public static int getFromNavThreshold(Resources resources, DeviceProfile deviceProfile) {
        return getThreshold(resources, deviceProfile, R.dimen.taskbar_from_nav_threshold, R.dimen.taskbar_nav_threshold_mult);
    }

    public static int getHomeOverviewThreshold(Resources resources, DeviceProfile deviceProfile) {
        return getThreshold(resources, deviceProfile, R.dimen.taskbar_home_overview_threshold, R.dimen.taskbar_home_overview_threshold_mult);
    }

    private static int getThreshold(Resources resources, DeviceProfile deviceProfile, int i4, int i5) {
        if (FeatureFlags.ENABLE_DYNAMIC_TASKBAR_THRESHOLDS.get()) {
            int i6 = deviceProfile.isLandscape ? deviceProfile.heightPx : deviceProfile.widthPx;
            ThreadLocal threadLocal = D.n.f278a;
            return Math.round(resources.getFloat(i5) * Utilities.dpToPx((i6 * 0.0125f) / (DisplayMetrics.DENSITY_DEVICE_STABLE / 160.0f)));
        }
        return resources.getDimensionPixelSize(i4);
    }
}
