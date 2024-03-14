package com.android.launcher3.icons;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.LauncherApps;
import android.content.pm.PackageInfo;
import android.content.pm.ShortcutInfo;
import android.graphics.drawable.Drawable;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.Log;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.icons.BaseIconFactory;
import com.android.launcher3.icons.cache.CachingLogic;
import com.android.launcher3.shortcuts.ShortcutKey;
/* loaded from: classes.dex */
public final class ShortcutCachingLogic implements CachingLogic {
    public static Drawable getIcon(Context context, ShortcutInfo shortcutInfo, int i4) {
        try {
            return ((LauncherApps) context.getSystemService(LauncherApps.class)).getShortcutIconDrawable(shortcutInfo, i4);
        } catch (IllegalStateException | NullPointerException | SecurityException e4) {
            Log.e("ShortcutCachingLogic", "Failed to get shortcut icon", e4);
            return null;
        }
    }

    @Override // com.android.launcher3.icons.cache.CachingLogic
    public final boolean addToMemCache() {
        return false;
    }

    @Override // com.android.launcher3.icons.cache.CachingLogic
    public final ComponentName getComponent(Object obj) {
        return ShortcutKey.fromInfo((ShortcutInfo) obj).componentName;
    }

    @Override // com.android.launcher3.icons.cache.CachingLogic
    public final CharSequence getDescription(Object obj, CharSequence charSequence) {
        CharSequence longLabel = ((ShortcutInfo) obj).getLongLabel();
        return TextUtils.isEmpty(longLabel) ? charSequence : longLabel;
    }

    @Override // com.android.launcher3.icons.cache.CachingLogic
    public final CharSequence getLabel(Object obj) {
        return ((ShortcutInfo) obj).getShortLabel();
    }

    @Override // com.android.launcher3.icons.cache.CachingLogic
    public final long getLastUpdatedTime(Object obj, PackageInfo packageInfo) {
        ShortcutInfo shortcutInfo = (ShortcutInfo) obj;
        return shortcutInfo == null ? packageInfo.lastUpdateTime : Math.max(shortcutInfo.getLastChangedTimestamp(), packageInfo.lastUpdateTime);
    }

    @Override // com.android.launcher3.icons.cache.CachingLogic
    public final UserHandle getUser(Object obj) {
        return ((ShortcutInfo) obj).getUserHandle();
    }

    @Override // com.android.launcher3.icons.cache.CachingLogic
    public final BitmapInfo loadIcon(Context context, Object obj) {
        BitmapInfo createBadgedIconBitmap;
        ShortcutInfo shortcutInfo = (ShortcutInfo) obj;
        LauncherIcons obtain = LauncherIcons.obtain(context);
        try {
            Drawable icon = getIcon(context, shortcutInfo, LauncherAppState.getIDP(context).fillResIconDpi);
            if (icon == null) {
                createBadgedIconBitmap = BitmapInfo.LOW_RES_INFO;
            } else {
                BaseIconFactory.IconOptions iconOptions = new BaseIconFactory.IconOptions();
                iconOptions.setExtractedColor(GraphicsUtils.getAttrColor(16843829, context));
                createBadgedIconBitmap = obtain.createBadgedIconBitmap(icon, iconOptions);
            }
            obtain.recycle();
            return createBadgedIconBitmap;
        } catch (Throwable th) {
            try {
                obtain.recycle();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }
}
