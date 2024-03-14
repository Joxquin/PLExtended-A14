package com.android.launcher3.util;

import android.os.UserHandle;
import android.text.TextUtils;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.PackageItemInfo;
import java.util.Objects;
/* loaded from: classes.dex */
public final class PackageUserKey {
    private int mHashCode;
    public String mPackageName;
    public UserHandle mUser;
    public int mWidgetCategory;

    public PackageUserKey(String str, UserHandle userHandle) {
        update(-1, userHandle, str);
    }

    public static PackageUserKey fromItemInfo(ItemInfo itemInfo) {
        if (itemInfo.getTargetComponent() == null) {
            return null;
        }
        return new PackageUserKey(itemInfo.getTargetComponent().getPackageName(), itemInfo.user);
    }

    public static PackageUserKey fromPackageItemInfo(PackageItemInfo packageItemInfo) {
        int i4;
        return (!TextUtils.isEmpty(packageItemInfo.packageName) || (i4 = packageItemInfo.widgetCategory) == -1) ? new PackageUserKey(packageItemInfo.packageName, packageItemInfo.user) : new PackageUserKey(i4, packageItemInfo.user);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof PackageUserKey) {
            PackageUserKey packageUserKey = (PackageUserKey) obj;
            return Objects.equals(this.mPackageName, packageUserKey.mPackageName) && this.mWidgetCategory == packageUserKey.mWidgetCategory && Objects.equals(this.mUser, packageUserKey.mUser);
        }
        return false;
    }

    public final int hashCode() {
        return this.mHashCode;
    }

    public final String toString() {
        return this.mPackageName + "#" + this.mUser + ",category=" + this.mWidgetCategory;
    }

    public final void update(String str, UserHandle userHandle) {
        update(-1, userHandle, str);
    }

    public final boolean updateFromItemInfo(ItemInfo itemInfo) {
        if (itemInfo.getTargetComponent() != null && ShortcutUtil.supportsShortcuts(itemInfo)) {
            update(-1, itemInfo.user, itemInfo.getTargetComponent().getPackageName());
            return true;
        }
        return false;
    }

    private void update(int i4, UserHandle userHandle, String str) {
        this.mPackageName = str;
        this.mWidgetCategory = i4;
        this.mUser = userHandle;
        this.mHashCode = Objects.hash(str, Integer.valueOf(i4), userHandle);
    }

    public PackageUserKey(int i4, UserHandle userHandle) {
        update(i4, userHandle, "");
    }
}
