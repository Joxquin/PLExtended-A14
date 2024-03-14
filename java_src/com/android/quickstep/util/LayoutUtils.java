package com.android.quickstep.util;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.touch.PagedOrientationHandler;
import com.android.launcher3.util.DisplayController;
import com.android.launcher3.util.NavigationMode;
import com.android.quickstep.LauncherActivityInterface;
/* loaded from: classes.dex */
public class LayoutUtils {
    public static float getDefaultSwipeHeight(Context context, DeviceProfile deviceProfile) {
        float f4 = deviceProfile.allAppsCellHeightPx - deviceProfile.allAppsIconTextSizePx;
        return DisplayController.getNavigationMode(context) == NavigationMode.NO_BUTTON ? f4 - deviceProfile.getInsets().bottom : f4;
    }

    public static int getShelfTrackingDistance(Context context, DeviceProfile deviceProfile, PagedOrientationHandler pagedOrientationHandler) {
        Rect rect = new Rect();
        LauncherActivityInterface.INSTANCE.calculateTaskSize(context, deviceProfile, rect, pagedOrientationHandler);
        return pagedOrientationHandler.getDistanceToBottomOfRect(deviceProfile, rect);
    }

    public static void setViewEnabled(View view, boolean z4) {
        view.setEnabled(z4);
        if (!(view instanceof ViewGroup)) {
            return;
        }
        int i4 = 0;
        while (true) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (i4 >= viewGroup.getChildCount()) {
                return;
            }
            setViewEnabled(viewGroup.getChildAt(i4), z4);
            i4++;
        }
    }
}
