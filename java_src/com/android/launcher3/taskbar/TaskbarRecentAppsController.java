package com.android.launcher3.taskbar;

import android.util.SparseArray;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.ItemInfo;
/* loaded from: classes.dex */
public class TaskbarRecentAppsController {
    public static final TaskbarRecentAppsController DEFAULT = new TaskbarRecentAppsController();
    protected TaskbarControllers mControllers;

    public void onDestroy() {
        this.mControllers = null;
    }

    public void setApps(AppInfo[] appInfoArr) {
    }

    public ItemInfo[] updateHotseatItemInfos(ItemInfo[] itemInfoArr) {
        return itemInfoArr;
    }

    public void updateRunningApps(SparseArray sparseArray) {
    }
}
