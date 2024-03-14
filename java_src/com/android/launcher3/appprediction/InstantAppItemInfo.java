package com.android.launcher3.appprediction;

import android.content.ComponentName;
import android.content.Context;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
/* loaded from: classes.dex */
public final class InstantAppItemInfo extends AppInfo {
    @Override // com.android.launcher3.model.data.AppInfo, com.android.launcher3.model.data.ItemInfo
    public final ComponentName getTargetComponent() {
        return this.componentName;
    }

    @Override // com.android.launcher3.model.data.AppInfo, com.android.launcher3.model.data.WorkspaceItemFactory
    public final WorkspaceItemInfo makeWorkspaceItem(Context context) {
        WorkspaceItemInfo makeWorkspaceItem = super.makeWorkspaceItem(context);
        makeWorkspaceItem.itemType = 0;
        makeWorkspaceItem.status = 14;
        makeWorkspaceItem.intent.setPackage(this.componentName.getPackageName());
        return makeWorkspaceItem;
    }
}
