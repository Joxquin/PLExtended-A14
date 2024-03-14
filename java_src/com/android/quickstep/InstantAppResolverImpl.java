package com.android.quickstep;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Process;
import android.os.UserHandle;
import android.util.Log;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.util.InstantAppResolver;
/* loaded from: classes.dex */
public class InstantAppResolverImpl extends InstantAppResolver {
    public static final String COMPONENT_CLASS_MARKER = "@instantapp";
    private static final String TAG = "InstantAppResolverImpl";
    private final PackageManager mPM;

    public InstantAppResolverImpl(Context context) {
        this.mPM = context.getPackageManager();
    }

    @Override // com.android.launcher3.util.InstantAppResolver
    public boolean isInstantApp(ApplicationInfo applicationInfo) {
        return applicationInfo.isInstantApp();
    }

    @Override // com.android.launcher3.util.InstantAppResolver
    public boolean isInstantApp(AppInfo appInfo) {
        ComponentName targetComponent = appInfo.getTargetComponent();
        return targetComponent != null && targetComponent.getClassName().equals(COMPONENT_CLASS_MARKER);
    }

    @Override // com.android.launcher3.util.InstantAppResolver
    public boolean isInstantApp(String str, int i4) {
        if (Process.myUserHandle().equals(UserHandle.of(i4))) {
            try {
                return this.mPM.isInstantApp(str);
            } catch (Exception e4) {
                Log.e(TAG, "Failed to determine whether package is instant app " + str, e4);
                return false;
            }
        }
        return false;
    }
}
