package com.android.launcher3.icons.cache;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.UserHandle;
import com.android.launcher3.icons.BitmapInfo;
/* loaded from: classes.dex */
public interface CachingLogic {
    default boolean addToMemCache() {
        return true;
    }

    ComponentName getComponent(Object obj);

    default CharSequence getDescription(Object obj, CharSequence charSequence) {
        return charSequence;
    }

    CharSequence getLabel(Object obj);

    default long getLastUpdatedTime(Object obj, PackageInfo packageInfo) {
        return packageInfo.lastUpdateTime;
    }

    UserHandle getUser(Object obj);

    BitmapInfo loadIcon(Context context, Object obj);
}
