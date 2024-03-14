package com.android.launcher3.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.util.ResourceBasedOverride;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public class InstantAppResolver implements ResourceBasedOverride {
    public static InstantAppResolver newInstance(Context context) {
        return (InstantAppResolver) ResourceBasedOverride.Overrides.getObject(R.string.instant_app_resolver_class, context, InstantAppResolver.class);
    }

    public boolean isInstantApp(ApplicationInfo applicationInfo) {
        return false;
    }

    public boolean isInstantApp(AppInfo appInfo) {
        return false;
    }

    public boolean isInstantApp(String str, int i4) {
        return false;
    }
}
