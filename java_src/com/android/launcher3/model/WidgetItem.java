package com.android.launcher3.model;

import android.appwidget.AppWidgetProviderInfo;
import android.content.Context;
import android.content.pm.PackageManager;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.Utilities;
import com.android.launcher3.dragndrop.PinShortcutRequestActivityInfo;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.pm.ShortcutConfigActivityInfo;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.widget.LauncherAppWidgetProviderInfo;
/* loaded from: classes.dex */
public final class WidgetItem extends ComponentKey {
    public final ShortcutConfigActivityInfo activityInfo;
    public final CharSequence description;
    public final String label;
    public final int spanX;
    public final int spanY;
    public final LauncherAppWidgetProviderInfo widgetInfo;

    public WidgetItem(LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfo, InvariantDeviceProfile invariantDeviceProfile, IconCache iconCache, Context context) {
        super(((AppWidgetProviderInfo) launcherAppWidgetProviderInfo).provider, launcherAppWidgetProviderInfo.getProfile());
        this.label = iconCache.getTitleNoCache(launcherAppWidgetProviderInfo);
        this.description = Utilities.ATLEAST_S ? launcherAppWidgetProviderInfo.loadDescription(context) : null;
        this.widgetInfo = launcherAppWidgetProviderInfo;
        this.activityInfo = null;
        this.spanX = Math.min(launcherAppWidgetProviderInfo.spanX, invariantDeviceProfile.numColumns);
        this.spanY = Math.min(launcherAppWidgetProviderInfo.spanY, invariantDeviceProfile.numRows);
    }

    public WidgetItem(ShortcutConfigActivityInfo shortcutConfigActivityInfo, IconCache iconCache, PackageManager packageManager) {
        super(shortcutConfigActivityInfo.getComponent(), shortcutConfigActivityInfo.getUser());
        String trim;
        if (!(shortcutConfigActivityInfo instanceof PinShortcutRequestActivityInfo)) {
            trim = iconCache.getTitleNoCache(shortcutConfigActivityInfo);
        } else {
            trim = Utilities.trim(shortcutConfigActivityInfo.getLabel(packageManager));
        }
        this.label = trim;
        this.description = null;
        this.widgetInfo = null;
        this.activityInfo = shortcutConfigActivityInfo;
        this.spanY = 1;
        this.spanX = 1;
    }
}
