package com.android.launcher3.widget;

import android.appwidget.AppWidgetProviderInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.UserHandle;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.Utilities;
import com.android.launcher3.icons.ComponentWithLabelAndIcon;
import com.android.launcher3.icons.IconCache;
import java.util.Iterator;
/* loaded from: classes.dex */
public class LauncherAppWidgetProviderInfo extends AppWidgetProviderInfo implements ComponentWithLabelAndIcon {
    private boolean mIsMinSizeFulfilled;
    public int maxSpanX;
    public int maxSpanY;
    public int minSpanX;
    public int minSpanY;
    public int spanX;
    public int spanY;

    public static LauncherAppWidgetProviderInfo fromProviderInfo(Context context, AppWidgetProviderInfo appWidgetProviderInfo) {
        LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfo;
        if (appWidgetProviderInfo instanceof LauncherAppWidgetProviderInfo) {
            launcherAppWidgetProviderInfo = (LauncherAppWidgetProviderInfo) appWidgetProviderInfo;
        } else {
            Parcel obtain = Parcel.obtain();
            appWidgetProviderInfo.writeToParcel(obtain, 0);
            obtain.setDataPosition(0);
            launcherAppWidgetProviderInfo = new LauncherAppWidgetProviderInfo(obtain);
            obtain.recycle();
        }
        launcherAppWidgetProviderInfo.initSpans(LauncherAppState.getIDP(context));
        return launcherAppWidgetProviderInfo;
    }

    private static int getSpan(float f4, int i4, int i5, int i6) {
        return Math.max(1, (int) Math.ceil(((i5 + i4) + i6) / (f4 + i6)));
    }

    @Override // com.android.launcher3.icons.ComponentWithLabel
    public final ComponentName getComponent() {
        return ((AppWidgetProviderInfo) this).provider;
    }

    @Override // com.android.launcher3.icons.ComponentWithLabelAndIcon
    public final Drawable getFullResIcon(IconCache iconCache) {
        return iconCache.getFullResIcon(((AppWidgetProviderInfo) this).icon, ((AppWidgetProviderInfo) this).provider.getPackageName());
    }

    @Override // com.android.launcher3.icons.ComponentWithLabel
    public final UserHandle getUser() {
        return getProfile();
    }

    public void initSpans(InvariantDeviceProfile invariantDeviceProfile) {
        int i4;
        int i5 = invariantDeviceProfile.numColumns;
        int i6 = invariantDeviceProfile.numRows;
        Point point = new Point();
        Iterator it = invariantDeviceProfile.supportedProfiles.iterator();
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        while (it.hasNext()) {
            DeviceProfile deviceProfile = (DeviceProfile) it.next();
            deviceProfile.getCellSize(point);
            int i11 = ((AppWidgetProviderInfo) this).minResizeWidth;
            int i12 = deviceProfile.cellLayoutBorderSpacePx.x;
            Rect rect = deviceProfile.widgetPadding;
            Iterator it2 = it;
            i7 = Math.max(i7, getSpan(point.x, rect.left + rect.right, i11, i12));
            i8 = Math.max(i8, getSpan(point.y, rect.top + rect.bottom, ((AppWidgetProviderInfo) this).minResizeHeight, deviceProfile.cellLayoutBorderSpacePx.y));
            if (Utilities.ATLEAST_S) {
                int i13 = ((AppWidgetProviderInfo) this).maxResizeWidth;
                if (i13 > 0) {
                    i5 = Math.min(i5, getSpan(point.x, rect.left + rect.right, i13, deviceProfile.cellLayoutBorderSpacePx.x));
                }
                int i14 = ((AppWidgetProviderInfo) this).maxResizeHeight;
                if (i14 > 0) {
                    i6 = Math.min(i6, getSpan(point.y, rect.top + rect.bottom, i14, deviceProfile.cellLayoutBorderSpacePx.y));
                }
            }
            i9 = Math.max(i9, getSpan(point.x, rect.left + rect.right, ((AppWidgetProviderInfo) this).minWidth, deviceProfile.cellLayoutBorderSpacePx.x));
            i10 = Math.max(i10, getSpan(point.y, rect.top + rect.bottom, ((AppWidgetProviderInfo) this).minHeight, deviceProfile.cellLayoutBorderSpacePx.y));
            it = it2;
        }
        if (Utilities.ATLEAST_S) {
            i5 = Math.max(i5, i7);
            i6 = Math.max(i6, i8);
            int i15 = ((AppWidgetProviderInfo) this).targetCellWidth;
            if (i15 >= i7 && i15 <= i5 && (i4 = ((AppWidgetProviderInfo) this).targetCellHeight) >= i8 && i4 <= i6) {
                i9 = i15;
                i10 = i4;
            }
        }
        this.minSpanX = Math.min(i9, i7);
        this.minSpanY = Math.min(i10, i8);
        this.maxSpanX = i5;
        this.maxSpanY = i6;
        this.mIsMinSizeFulfilled = Math.min(i9, i7) <= invariantDeviceProfile.numColumns && Math.min(i10, i8) <= invariantDeviceProfile.numRows;
        this.spanX = Math.min(i9, invariantDeviceProfile.numColumns);
        this.spanY = Math.min(i10, invariantDeviceProfile.numRows);
    }

    public final boolean isMinSizeFulfilled() {
        return this.mIsMinSizeFulfilled;
    }

    @Override // com.android.launcher3.icons.ComponentWithLabel
    public String getLabel(PackageManager packageManager) {
        return super.loadLabel(packageManager);
    }
}
