package com.android.launcher3.widget.util;

import android.appwidget.AppWidgetHostView;
import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.Size;
import android.util.SizeF;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.model.WidgetItem;
import com.android.systemui.shared.R;
import java.util.ArrayList;
/* loaded from: classes.dex */
public final class WidgetSizes {
    public static Size getWidgetItemSizePx(Context context, DeviceProfile deviceProfile, WidgetItem widgetItem) {
        if (widgetItem.activityInfo != null) {
            int dimensionPixelSize = (context.getResources().getDimensionPixelSize(R.dimen.widget_preview_shortcut_padding) * 2) + deviceProfile.allAppsIconSizePx;
            return new Size(dimensionPixelSize, dimensionPixelSize);
        }
        return getWidgetSizePx(deviceProfile, widgetItem.spanX, widgetItem.spanY);
    }

    public static Bundle getWidgetSizeOptions(Context context, ComponentName componentName, int i4, int i5) {
        Rect rect;
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>(2);
        float f4 = context.getResources().getDisplayMetrics().density;
        for (DeviceProfile deviceProfile : LauncherAppState.getIDP(context).supportedProfiles) {
            Size widgetSizePx = getWidgetSizePx(deviceProfile, i4, i5);
            arrayList.add(new SizeF(widgetSizePx.getWidth() / f4, widgetSizePx.getHeight() / f4));
        }
        if (arrayList.isEmpty()) {
            rect = new Rect();
        } else {
            SizeF sizeF = (SizeF) arrayList.get(0);
            Rect rect2 = new Rect((int) sizeF.getWidth(), (int) sizeF.getHeight(), (int) sizeF.getWidth(), (int) sizeF.getHeight());
            for (int i6 = 1; i6 < arrayList.size(); i6++) {
                rect2.union((int) ((SizeF) arrayList.get(i6)).getWidth(), (int) ((SizeF) arrayList.get(i6)).getHeight());
            }
            rect = rect2;
        }
        Bundle bundle = new Bundle();
        bundle.putInt("appWidgetMinWidth", rect.left);
        bundle.putInt("appWidgetMinHeight", rect.top);
        bundle.putInt("appWidgetMaxWidth", rect.right);
        bundle.putInt("appWidgetMaxHeight", rect.bottom);
        bundle.putParcelableArrayList("appWidgetSizes", arrayList);
        Log.d("b/267448330", "provider: " + componentName + ", paddedSizes: " + arrayList + ", getMinMaxSizes: " + rect);
        return bundle;
    }

    public static Size getWidgetSizePx(DeviceProfile deviceProfile, int i4, int i5) {
        Point point = deviceProfile.cellLayoutBorderSpacePx;
        int i6 = (i4 - 1) * point.x;
        int i7 = (i5 - 1) * point.y;
        Point cellSize = deviceProfile.getCellSize(null);
        Rect rect = deviceProfile.widgetPadding;
        return new Size((((i4 * cellSize.x) + i6) - rect.left) - rect.right, (((i5 * cellSize.y) + i7) - rect.top) - rect.bottom);
    }

    public static void updateWidgetSizeRanges(AppWidgetHostView appWidgetHostView, Context context, int i4, int i5) {
        AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(context);
        int appWidgetId = appWidgetHostView.getAppWidgetId();
        if (appWidgetId <= 0) {
            return;
        }
        Bundle widgetSizeOptions = getWidgetSizeOptions(context, appWidgetHostView.getAppWidgetInfo().provider, i4, i5);
        if (widgetSizeOptions.getParcelableArrayList("appWidgetSizes").equals(appWidgetManager.getAppWidgetOptions(appWidgetId).getParcelableArrayList("appWidgetSizes"))) {
            return;
        }
        appWidgetManager.updateAppWidgetOptions(appWidgetId, widgetSizeOptions);
    }
}
