package com.android.systemui.shared.system;

import android.app.AppGlobals;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.IPackageManager;
import android.content.pm.ResolveInfo;
import android.os.RemoteException;
import android.os.UserHandle;
import java.util.List;
/* loaded from: classes.dex */
public class PackageManagerWrapper {
    public static final String ACTION_PREFERRED_ACTIVITY_CHANGED = "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED";
    private static final PackageManagerWrapper sInstance = new PackageManagerWrapper();
    private static final IPackageManager mIPackageManager = AppGlobals.getPackageManager();

    private PackageManagerWrapper() {
    }

    public static PackageManagerWrapper getInstance() {
        return sInstance;
    }

    public ActivityInfo getActivityInfo(ComponentName componentName, int i4) {
        try {
            return mIPackageManager.getActivityInfo(componentName, 128L, i4);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public ComponentName getHomeActivities(List list) {
        try {
            return mIPackageManager.getHomeActivities(list);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public ResolveInfo resolveActivity(Intent intent, int i4) {
        try {
            return mIPackageManager.resolveIntent(intent, intent.resolveTypeIfNeeded(AppGlobals.getInitialApplication().getContentResolver()), i4, UserHandle.getCallingUserId());
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }
}
