package com.android.launcher3.util;

import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.LauncherActivityInfo;
import android.content.pm.LauncherApps;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;
import com.android.launcher3.PendingAddItemInfo;
import com.android.launcher3.Utilities;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.ItemInfoWithIcon;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.QuickStepContract;
import java.util.List;
import java.util.Objects;
/* loaded from: classes.dex */
public final class PackageManagerHelper {
    private final Context mContext;
    private final LauncherApps mLauncherApps;
    private final PackageManager mPm;

    public PackageManagerHelper(Context context) {
        this.mContext = context;
        this.mPm = context.getPackageManager();
        LauncherApps launcherApps = (LauncherApps) context.getSystemService(LauncherApps.class);
        Objects.requireNonNull(launcherApps);
        this.mLauncherApps = launcherApps;
    }

    public static int getLoadingProgress(LauncherActivityInfo launcherActivityInfo) {
        if (Utilities.ATLEAST_S) {
            return (int) (launcherActivityInfo.getLoadingProgress() * 100.0f);
        }
        return 100;
    }

    public static boolean hasShortcutsPermission(Context context) {
        try {
            return ((LauncherApps) context.getSystemService(LauncherApps.class)).hasShortcutHostPermission();
        } catch (IllegalStateException | SecurityException e4) {
            Log.e("PackageManagerHelper", "Failed to make shortcut manager call", e4);
            return false;
        }
    }

    public static boolean isLauncherAppTarget(Intent intent) {
        if (intent != null && "android.intent.action.MAIN".equals(intent.getAction()) && intent.getComponent() != null && intent.getCategories() != null && intent.getCategories().size() == 1 && intent.hasCategory("android.intent.category.LAUNCHER") && TextUtils.isEmpty(intent.getDataString())) {
            Bundle extras = intent.getExtras();
            return extras == null || extras.keySet().isEmpty();
        }
        return false;
    }

    public static boolean isSystemApp(Context context, Intent intent) {
        String packageName;
        ApplicationInfo applicationInfo;
        ActivityInfo activityInfo;
        PackageManager packageManager = context.getPackageManager();
        ComponentName component = intent.getComponent();
        if (component == null) {
            ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 65536);
            packageName = (resolveActivity == null || (activityInfo = resolveActivity.activityInfo) == null) ? null : activityInfo.packageName;
        } else {
            packageName = component.getPackageName();
        }
        if (packageName == null) {
            packageName = intent.getPackage();
        }
        if (packageName != null) {
            try {
                PackageInfo packageInfo = packageManager.getPackageInfo(packageName, 0);
                if (packageInfo == null || (applicationInfo = packageInfo.applicationInfo) == null) {
                    return false;
                }
                return (applicationInfo.flags & 1) != 0;
            } catch (PackageManager.NameNotFoundException unused) {
                return false;
            }
        }
        return false;
    }

    public final Intent getAppLaunchIntent(String str, UserHandle userHandle) {
        List<LauncherActivityInfo> activityList = this.mLauncherApps.getActivityList(str, userHandle);
        if (activityList.isEmpty()) {
            return null;
        }
        AppInfo[] appInfoArr = AppInfo.EMPTY_ARRAY;
        return AppInfo.makeLaunchIntent(activityList.get(0).getComponentName());
    }

    public final ApplicationInfo getApplicationInfo(int i4, UserHandle userHandle, String str) {
        try {
            ApplicationInfo applicationInfo = this.mLauncherApps.getApplicationInfo(str, i4, userHandle);
            if ((applicationInfo.flags & QuickStepContract.SYSUI_STATE_BUBBLES_MANAGE_MENU_EXPANDED) != 0) {
                if (applicationInfo.enabled) {
                    return applicationInfo;
                }
                return null;
            }
            return null;
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    public final Intent getMarketIntent(String str) {
        return new Intent("android.intent.action.VIEW").setData(new Uri.Builder().scheme("market").authority("details").appendQueryParameter("id", str).build()).putExtra("android.intent.extra.REFERRER", new Uri.Builder().scheme("android-app").authority(this.mContext.getPackageName()).build());
    }

    public final boolean isSafeMode() {
        return this.mPm.isSafeMode();
    }

    public final void startDetailsActivityForInfo(ItemInfo itemInfo, Rect rect, Bundle bundle) {
        boolean z4 = itemInfo instanceof ItemInfoWithIcon;
        Context context = this.mContext;
        if (z4) {
            ItemInfoWithIcon itemInfoWithIcon = (ItemInfoWithIcon) itemInfo;
            if ((itemInfoWithIcon.runtimeStatusFlags & 1024) != 0) {
                context.startActivity(new PackageManagerHelper(context).getMarketIntent(itemInfoWithIcon.getTargetComponent().getPackageName()));
                return;
            }
        }
        ComponentName targetComponent = itemInfo instanceof AppInfo ? ((AppInfo) itemInfo).componentName : itemInfo instanceof WorkspaceItemInfo ? itemInfo.getTargetComponent() : itemInfo instanceof PendingAddItemInfo ? ((PendingAddItemInfo) itemInfo).componentName : itemInfo instanceof LauncherAppWidgetInfo ? ((LauncherAppWidgetInfo) itemInfo).providerName : null;
        if (targetComponent != null) {
            try {
                this.mLauncherApps.startAppDetailsActivity(targetComponent, itemInfo.user, rect, bundle);
            } catch (ActivityNotFoundException | SecurityException e4) {
                Toast.makeText(context, (int) R.string.activity_not_found, 0).show();
                Log.e("PackageManagerHelper", "Unable to launch settings", e4);
            }
        }
    }
}
