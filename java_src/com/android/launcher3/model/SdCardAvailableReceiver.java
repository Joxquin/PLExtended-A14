package com.android.launcher3.model;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.LauncherApps;
import android.os.UserHandle;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.util.PackageManagerHelper;
import com.android.launcher3.util.PackageUserKey;
import java.util.ArrayList;
import java.util.Set;
/* loaded from: classes.dex */
public final class SdCardAvailableReceiver extends BroadcastReceiver {
    private final Context mContext;
    private final LauncherModel mModel;
    private final Set mPackages;

    public SdCardAvailableReceiver(LauncherAppState launcherAppState, Set set) {
        this.mModel = launcherAppState.getModel();
        this.mContext = launcherAppState.getContext();
        this.mPackages = set;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        LauncherApps launcherApps = (LauncherApps) context.getSystemService(LauncherApps.class);
        PackageManagerHelper packageManagerHelper = new PackageManagerHelper(context);
        for (PackageUserKey packageUserKey : this.mPackages) {
            UserHandle userHandle = packageUserKey.mUser;
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            if (!launcherApps.isPackageEnabled(packageUserKey.mPackageName, userHandle)) {
                ApplicationInfo applicationInfo = packageManagerHelper.getApplicationInfo(8192, userHandle, packageUserKey.mPackageName);
                if ((applicationInfo == null || (applicationInfo.flags & 262144) == 0) ? false : true) {
                    arrayList2.add(packageUserKey.mPackageName);
                } else {
                    arrayList.add(packageUserKey.mPackageName);
                }
            }
            if (!arrayList.isEmpty()) {
                this.mModel.onPackagesRemoved((String[]) arrayList.toArray(new String[arrayList.size()]), userHandle);
            }
            if (!arrayList2.isEmpty()) {
                this.mModel.onPackagesUnavailable((String[]) arrayList2.toArray(new String[arrayList2.size()]), userHandle, false);
            }
        }
        this.mContext.unregisterReceiver(this);
    }
}
