package com.android.launcher3.model;

import android.os.UserHandle;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.pm.PackageInstallInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final class PackageIncrementalDownloadUpdatedTask extends BaseModelUpdateTask {
    private final String mPackageName;
    private final int mProgress;
    private final UserHandle mUser;

    public PackageIncrementalDownloadUpdatedTask(String str, UserHandle userHandle, float f4) {
        this.mUser = userHandle;
        this.mProgress = ((double) (1.0f - f4)) > 0.001d ? (int) (f4 * 100.0f) : 100;
        this.mPackageName = str;
    }

    public static /* synthetic */ void m(PackageIncrementalDownloadUpdatedTask packageIncrementalDownloadUpdatedTask, PackageInstallInfo packageInstallInfo, ArrayList arrayList, WorkspaceItemInfo workspaceItemInfo) {
        if (packageIncrementalDownloadUpdatedTask.mPackageName.equals(workspaceItemInfo.getTargetPackage())) {
            workspaceItemInfo.runtimeStatusFlags &= -1025;
            workspaceItemInfo.setProgressLevel(packageInstallInfo);
            arrayList.add(workspaceItemInfo);
        }
    }

    @Override // com.android.launcher3.model.BaseModelUpdateTask
    public final void execute(LauncherAppState launcherAppState, BgDataModel bgDataModel, AllAppsList allAppsList) {
        final PackageInstallInfo packageInstallInfo = new PackageInstallInfo(this.mPackageName, 2, this.mProgress, this.mUser);
        synchronized (allAppsList) {
            ArrayList arrayList = (ArrayList) allAppsList.updatePromiseInstallInfo(packageInstallInfo);
            if (!arrayList.isEmpty()) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    final AppInfo appInfo = (AppInfo) it.next();
                    appInfo.runtimeStatusFlags &= -1025;
                    scheduleCallbackTask(new LauncherModel.CallbackTask() { // from class: com.android.launcher3.model.B0
                        @Override // com.android.launcher3.LauncherModel.CallbackTask
                        public final void execute(BgDataModel.Callbacks callbacks) {
                            callbacks.bindIncrementalDownloadProgressUpdated(AppInfo.this);
                        }
                    });
                }
            }
            bindApplicationsIfNeeded();
        }
        final ArrayList arrayList2 = new ArrayList();
        synchronized (bgDataModel) {
            bgDataModel.forAllWorkspaceItemInfos(this.mUser, new Consumer() { // from class: com.android.launcher3.model.C0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    PackageIncrementalDownloadUpdatedTask.m(PackageIncrementalDownloadUpdatedTask.this, packageInstallInfo, arrayList2, (WorkspaceItemInfo) obj);
                }
            });
        }
        bindUpdatedWorkspaceItems(arrayList2);
    }
}
