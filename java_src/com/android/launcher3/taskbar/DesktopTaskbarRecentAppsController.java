package com.android.launcher3.taskbar;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.util.SparseArray;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.quickstep.RecentsModel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes.dex */
public final class DesktopTaskbarRecentAppsController extends TaskbarRecentAppsController {
    private AppInfo[] mApps;
    private final TaskbarActivityContext mContext;
    private ArrayList mRunningApps = new ArrayList();

    public DesktopTaskbarRecentAppsController(TaskbarActivityContext taskbarActivityContext) {
        this.mContext = taskbarActivityContext;
    }

    @Override // com.android.launcher3.taskbar.TaskbarRecentAppsController
    public final void onDestroy() {
        this.mControllers = null;
        this.mApps = null;
    }

    @Override // com.android.launcher3.taskbar.TaskbarRecentAppsController
    public final void setApps(AppInfo[] appInfoArr) {
        this.mApps = appInfoArr;
    }

    @Override // com.android.launcher3.taskbar.TaskbarRecentAppsController
    public final ItemInfo[] updateHotseatItemInfos(ItemInfo[] itemInfoArr) {
        if (itemInfoArr.length == 0) {
            return itemInfoArr;
        }
        ItemInfo[] itemInfoArr2 = (ItemInfo[]) Arrays.copyOf(itemInfoArr, this.mRunningApps.size() + itemInfoArr.length);
        int i4 = 0;
        for (int length = itemInfoArr.length; length < itemInfoArr2.length; length++) {
            itemInfoArr2[length] = (ItemInfo) this.mRunningApps.get(i4);
            i4++;
        }
        return itemInfoArr2;
    }

    @Override // com.android.launcher3.taskbar.TaskbarRecentAppsController
    public final void updateRunningApps(SparseArray sparseArray) {
        boolean z4;
        AppInfo appInfo;
        ArrayList runningTasks = ((RecentsModel) RecentsModel.INSTANCE.get(this.mContext)).getRunningTasks();
        ArrayList arrayList = new ArrayList();
        if (this.mApps != null) {
            HashSet hashSet = new HashSet();
            Iterator it = runningTasks.iterator();
            while (it.hasNext()) {
                ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) it.next();
                ComponentName componentName = runningTaskInfo.realActivity;
                if (componentName != null) {
                    String packageName = componentName.getPackageName();
                    if (!hashSet.contains(packageName)) {
                        hashSet.add(packageName);
                        String packageName2 = runningTaskInfo.realActivity.getPackageName();
                        AppInfo[] appInfoArr = this.mApps;
                        int length = appInfoArr.length;
                        int i4 = 0;
                        while (true) {
                            if (i4 >= length) {
                                appInfo = null;
                                break;
                            }
                            appInfo = appInfoArr[i4];
                            if (packageName2.equals(appInfo.getTargetPackage())) {
                                break;
                            }
                            i4++;
                        }
                        if (appInfo != null) {
                            arrayList.add(appInfo);
                        }
                    }
                }
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            AppInfo appInfo2 = (AppInfo) it2.next();
            for (int i5 = 0; i5 < sparseArray.size() && sparseArray.keyAt(i5) < this.mControllers.taskbarActivityContext.getDeviceProfile().numShownHotseatIcons; i5++) {
                if (((ItemInfo) sparseArray.valueAt(i5)).getTargetPackage().equals(appInfo2.getTargetPackage())) {
                    z4 = false;
                    break;
                }
            }
            z4 = true;
            if (z4) {
                arrayList2.add(new WorkspaceItemInfo(appInfo2));
            }
        }
        this.mRunningApps = arrayList2;
        this.mControllers.taskbarViewController.commitRunningAppsToUI();
    }
}
