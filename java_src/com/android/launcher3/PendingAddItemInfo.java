package com.android.launcher3;

import android.content.ComponentName;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.ItemInfoWithIcon;
import java.util.Optional;
/* loaded from: classes.dex */
public class PendingAddItemInfo extends ItemInfoWithIcon {
    public ComponentName componentName;

    public PendingAddItemInfo() {
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public final String dumpProperties() {
        return super.dumpProperties() + " componentName=" + this.componentName;
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public final ComponentName getTargetComponent() {
        return (ComponentName) Optional.ofNullable(super.getTargetComponent()).orElse(this.componentName);
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public final ItemInfo makeShallowCopy() {
        PendingAddItemInfo pendingAddItemInfo = new PendingAddItemInfo();
        pendingAddItemInfo.copyFrom(this);
        pendingAddItemInfo.componentName = this.componentName;
        return pendingAddItemInfo;
    }

    public PendingAddItemInfo(PendingAddItemInfo pendingAddItemInfo) {
        super(pendingAddItemInfo);
        this.componentName = pendingAddItemInfo.componentName;
    }

    @Override // com.android.launcher3.model.data.ItemInfoWithIcon
    /* renamed from: clone */
    public PendingAddItemInfo mo1clone() {
        PendingAddItemInfo pendingAddItemInfo = new PendingAddItemInfo();
        pendingAddItemInfo.copyFrom(this);
        pendingAddItemInfo.componentName = this.componentName;
        return pendingAddItemInfo;
    }
}
