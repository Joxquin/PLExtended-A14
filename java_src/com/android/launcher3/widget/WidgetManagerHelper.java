package com.android.launcher3.widget;

import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProviderInfo;
import android.content.ComponentName;
import android.content.Context;
import android.os.Bundle;
import android.os.UserHandle;
import com.android.launcher3.pm.UserCache;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.widget.custom.CustomWidgetManager;
import java.util.Collections;
import java.util.List;
import java.util.function.Function;
import java.util.stream.Collectors;
import java.util.stream.Stream;
/* loaded from: classes.dex */
public final class WidgetManagerHelper {
    final AppWidgetManager mAppWidgetManager;
    final Context mContext;

    public WidgetManagerHelper(Context context) {
        this.mContext = context;
        this.mAppWidgetManager = AppWidgetManager.getInstance(context);
    }

    public final boolean bindAppWidgetIdIfAllowed(int i4, AppWidgetProviderInfo appWidgetProviderInfo, Bundle bundle) {
        if (i4 <= -100) {
            return true;
        }
        return this.mAppWidgetManager.bindAppWidgetIdIfAllowed(i4, appWidgetProviderInfo.getProfile(), appWidgetProviderInfo.provider, bundle);
    }

    public final LauncherAppWidgetProviderInfo findProvider(ComponentName componentName, UserHandle userHandle) {
        for (AppWidgetProviderInfo appWidgetProviderInfo : getAllProviders(new PackageUserKey(componentName.getPackageName(), userHandle))) {
            if (appWidgetProviderInfo.provider.equals(componentName)) {
                return LauncherAppWidgetProviderInfo.fromProviderInfo(this.mContext, appWidgetProviderInfo);
            }
        }
        return null;
    }

    public final List getAllProviders(PackageUserKey packageUserKey) {
        if (packageUserKey != null) {
            try {
                return this.mAppWidgetManager.getInstalledProvidersForPackage(packageUserKey.mPackageName, packageUserKey.mUser);
            } catch (IllegalStateException unused) {
                return Collections.emptyList();
            }
        }
        Context context = this.mContext;
        final AppWidgetManager appWidgetManager = (AppWidgetManager) context.getSystemService(AppWidgetManager.class);
        return (List) Stream.concat(((UserCache) UserCache.INSTANCE.get(context)).getUserProfiles().stream().flatMap(new Function() { // from class: f1.i
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return appWidgetManager.getInstalledProvidersForProfile((UserHandle) obj).stream();
            }
        }), ((CustomWidgetManager) CustomWidgetManager.INSTANCE.get(context)).stream()).collect(Collectors.toList());
    }

    public final LauncherAppWidgetProviderInfo getLauncherAppWidgetInfo(int i4) {
        Context context = this.mContext;
        if (i4 <= -100) {
            return ((CustomWidgetManager) CustomWidgetManager.INSTANCE.get(context)).getWidgetProvider(i4);
        }
        AppWidgetProviderInfo appWidgetInfo = this.mAppWidgetManager.getAppWidgetInfo(i4);
        if (appWidgetInfo == null) {
            return null;
        }
        return LauncherAppWidgetProviderInfo.fromProviderInfo(context, appWidgetInfo);
    }

    public final boolean isAppWidgetRestored(int i4) {
        return this.mAppWidgetManager.getAppWidgetOptions(i4).getBoolean("appWidgetRestoreCompleted");
    }
}
