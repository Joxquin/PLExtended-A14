package com.android.launcher3.util;

import android.content.Context;
import android.content.res.TypedArray;
import com.android.launcher3.LauncherPrefs;
import com.android.launcher3.Utilities;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.views.ActivityContext;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class Themes {
    public static int getActivityThemeRes(Context context) {
        return getActivityThemeRes(WallpaperColorHints.get(context).getHints(), context);
    }

    public static boolean getAttrBoolean(int i4, Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{i4});
        boolean z4 = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
        return z4;
    }

    public static float getDialogCornerRadius(Context context) {
        float dimension = context.getResources().getDimension(R.dimen.default_dialog_corner_radius);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{16844145});
        float dimension2 = obtainStyledAttributes.getDimension(0, dimension);
        obtainStyledAttributes.recycle();
        return dimension2;
    }

    public static int getNavBarScrimColor(Context context) {
        return ((ActivityContext) context).getDeviceProfile().isTaskbarPresent ? context.getColor(R.color.taskbar_background) : GraphicsUtils.getAttrColor(R.attr.allAppsNavBarScrimColor, context);
    }

    public static boolean isThemedIconEnabled(Context context) {
        LauncherPrefs.Companion companion = LauncherPrefs.Companion;
        return ((Boolean) LauncherPrefs.Companion.get(context).get(LauncherPrefs.THEMED_ICONS)).booleanValue();
    }

    public static int getActivityThemeRes(int i4, Context context) {
        boolean z4 = Utilities.ATLEAST_S;
        boolean z5 = false;
        boolean z6 = z4 && (i4 & 1) != 0;
        if (z4 && (i4 & 2) != 0) {
            z5 = true;
        }
        return Utilities.isDarkTheme(context) ? z6 ? R.style.AppTheme_Dark_DarkText : z5 ? R.style.AppTheme_Dark_DarkMainColor : R.style.AppTheme_Dark : z6 ? R.style.AppTheme_DarkText : z5 ? R.style.AppTheme_DarkMainColor : R.style.AppTheme;
    }
}
