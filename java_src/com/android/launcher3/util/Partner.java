package com.android.launcher3.util;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.util.Log;
import android.util.Pair;
import java.util.Iterator;
/* loaded from: classes.dex */
public final class Partner {
    private final String mPackageName;
    private final Resources mResources;

    private Partner(Resources resources, String str) {
        this.mPackageName = str;
        this.mResources = resources;
    }

    public static Partner get(PackageManager packageManager, String str) {
        Pair pair;
        Iterator<ResolveInfo> it = packageManager.queryBroadcastReceivers(new Intent(str), 1048576).iterator();
        while (true) {
            if (!it.hasNext()) {
                pair = null;
                break;
            }
            String str2 = it.next().activityInfo.packageName;
            try {
                pair = Pair.create(str2, packageManager.getResourcesForApplication(str2));
                break;
            } catch (PackageManager.NameNotFoundException unused) {
                Log.w("Launcher.Partner", "Failed to find resources for " + str2);
            }
        }
        if (pair != null) {
            return new Partner((Resources) pair.second, (String) pair.first);
        }
        return null;
    }

    public final float getDimenValue() {
        String str = this.mPackageName;
        Resources resources = this.mResources;
        int identifier = resources.getIdentifier("grid_icon_size_dp", "dimen", str);
        return identifier > 0 ? resources.getDimension(identifier) : -1;
    }

    public final int getIntValue(String str) {
        String str2 = this.mPackageName;
        Resources resources = this.mResources;
        int identifier = resources.getIdentifier(str, "integer", str2);
        if (identifier > 0) {
            return resources.getInteger(identifier);
        }
        return -1;
    }

    public final String getPackageName() {
        return this.mPackageName;
    }

    public final Resources getResources() {
        return this.mResources;
    }

    public final int getXmlResId(String str) {
        return this.mResources.getIdentifier(str, "xml", this.mPackageName);
    }
}
