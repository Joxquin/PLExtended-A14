package com.android.launcher3.icons;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.LauncherActivityInfo;
import android.graphics.drawable.Drawable;
import android.os.UserHandle;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.icons.BaseIconFactory;
import com.android.launcher3.icons.cache.CachingLogic;
import com.android.launcher3.util.ResourceBasedOverride;
/* loaded from: classes.dex */
public class LauncherActivityCachingLogic implements CachingLogic, ResourceBasedOverride {
    @Override // com.android.launcher3.icons.cache.CachingLogic
    public final ComponentName getComponent(Object obj) {
        return ((LauncherActivityInfo) obj).getComponentName();
    }

    @Override // com.android.launcher3.icons.cache.CachingLogic
    public final CharSequence getLabel(Object obj) {
        return ((LauncherActivityInfo) obj).getLabel();
    }

    @Override // com.android.launcher3.icons.cache.CachingLogic
    public final UserHandle getUser(Object obj) {
        return ((LauncherActivityInfo) obj).getUser();
    }

    @Override // com.android.launcher3.icons.cache.CachingLogic
    public final BitmapInfo loadIcon(Context context, Object obj) {
        LauncherActivityInfo launcherActivityInfo = (LauncherActivityInfo) obj;
        LauncherIcons obtain = LauncherIcons.obtain(context);
        try {
            Drawable icon = LauncherAppState.getInstance(context).getIconProvider().getIcon(launcherActivityInfo, obtain.mFillResIconDpi);
            BaseIconFactory.IconOptions iconOptions = new BaseIconFactory.IconOptions();
            iconOptions.mUserHandle = launcherActivityInfo.getUser();
            BitmapInfo createBadgedIconBitmap = obtain.createBadgedIconBitmap(icon, iconOptions);
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
