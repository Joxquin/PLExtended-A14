package com.android.launcher3.model.data;

import android.os.UserHandle;
import java.util.Objects;
/* loaded from: classes.dex */
public class PackageItemInfo extends ItemInfoWithIcon {
    public final String packageName;
    public final int widgetCategory;

    public PackageItemInfo() {
        throw null;
    }

    public PackageItemInfo(int i4, UserHandle userHandle, String str) {
        this.packageName = str;
        this.widgetCategory = i4;
        this.user = userHandle;
        this.itemType = -1;
    }

    @Override // com.android.launcher3.model.data.ItemInfoWithIcon
    public final ItemInfoWithIcon clone() {
        return new PackageItemInfo(this);
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public final String dumpProperties() {
        return super.dumpProperties() + " packageName=" + this.packageName;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        PackageItemInfo packageItemInfo = (PackageItemInfo) obj;
        return Objects.equals(this.packageName, packageItemInfo.packageName) && Objects.equals(this.user, packageItemInfo.user) && this.widgetCategory == packageItemInfo.widgetCategory;
    }

    public final int hashCode() {
        return Objects.hash(this.packageName, this.user, Integer.valueOf(this.widgetCategory));
    }

    @Override // com.android.launcher3.model.data.ItemInfoWithIcon
    /* renamed from: clone */
    public final Object mo1clone() {
        return new PackageItemInfo(this);
    }

    public PackageItemInfo(PackageItemInfo packageItemInfo) {
        this.packageName = packageItemInfo.packageName;
        this.widgetCategory = packageItemInfo.widgetCategory;
        this.user = packageItemInfo.user;
        this.itemType = -1;
    }
}
