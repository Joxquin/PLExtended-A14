package com.android.launcher3.dot;

import android.view.ViewDebug;
import com.android.launcher3.Utilities;
import java.util.ArrayList;
/* loaded from: classes.dex */
public final class FolderDotInfo extends DotInfo {
    private int mNumNotifications;

    public final void addDotInfo(DotInfo dotInfo) {
        if (dotInfo == null) {
            return;
        }
        int size = ((ArrayList) dotInfo.getNotificationKeys()).size() + this.mNumNotifications;
        this.mNumNotifications = size;
        this.mNumNotifications = Utilities.boundToRange(size, 0, 999);
    }

    @Override // com.android.launcher3.dot.DotInfo
    public final int getNotificationCount() {
        return this.mNumNotifications;
    }

    @ViewDebug.ExportedProperty(category = "launcher")
    public final boolean hasDot() {
        return this.mNumNotifications > 0;
    }

    public final void subtractDotInfo(DotInfo dotInfo) {
        if (dotInfo == null) {
            return;
        }
        int size = this.mNumNotifications - ((ArrayList) dotInfo.getNotificationKeys()).size();
        this.mNumNotifications = size;
        this.mNumNotifications = Utilities.boundToRange(size, 0, 999);
    }
}
