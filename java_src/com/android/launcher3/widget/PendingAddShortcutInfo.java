package com.android.launcher3.widget;

import android.content.Context;
import com.android.launcher3.PendingAddItemInfo;
import com.android.launcher3.pm.ShortcutConfigActivityInfo;
/* loaded from: classes.dex */
public class PendingAddShortcutInfo extends PendingAddItemInfo {
    protected ShortcutConfigActivityInfo mActivityInfo;

    public PendingAddShortcutInfo(ShortcutConfigActivityInfo shortcutConfigActivityInfo) {
        this.mActivityInfo = shortcutConfigActivityInfo;
        this.componentName = shortcutConfigActivityInfo.getComponent();
        this.user = shortcutConfigActivityInfo.getUser();
        shortcutConfigActivityInfo.getItemType();
        this.itemType = 6;
        this.container = -105;
    }

    public ShortcutConfigActivityInfo getActivityInfo(Context context) {
        return this.mActivityInfo;
    }

    public PendingAddShortcutInfo(PendingAddShortcutInfo pendingAddShortcutInfo) {
        super(pendingAddShortcutInfo);
        this.mActivityInfo = pendingAddShortcutInfo.mActivityInfo;
    }

    public PendingAddShortcutInfo() {
    }
}
