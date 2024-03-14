package com.android.launcher3.model;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.pm.PackageInstallInfo;
import com.android.launcher3.util.InstantAppResolver;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final class PackageInstallStateChangedTask extends BaseModelUpdateTask {
    private final PackageInstallInfo mInstallInfo;

    public PackageInstallStateChangedTask(PackageInstallInfo packageInstallInfo) {
        this.mInstallInfo = packageInstallInfo;
    }

    public static /* synthetic */ void m(PackageInstallStateChangedTask packageInstallStateChangedTask, HashSet hashSet, WorkspaceItemInfo workspaceItemInfo) {
        packageInstallStateChangedTask.getClass();
        if (workspaceItemInfo.hasPromiseIconUi() && packageInstallStateChangedTask.mInstallInfo.packageName.equals(workspaceItemInfo.getTargetPackage())) {
            workspaceItemInfo.setProgressLevel(packageInstallStateChangedTask.mInstallInfo);
            hashSet.add(workspaceItemInfo);
        }
    }

    @Override // com.android.launcher3.model.BaseModelUpdateTask
    public final void execute(LauncherAppState launcherAppState, BgDataModel bgDataModel, AllAppsList allAppsList) {
        if (this.mInstallInfo.state == 0) {
            try {
                ApplicationInfo applicationInfo = launcherAppState.getContext().getPackageManager().getApplicationInfo(this.mInstallInfo.packageName, 0);
                if (InstantAppResolver.newInstance(launcherAppState.getContext()).isInstantApp(applicationInfo)) {
                    launcherAppState.getModel().onPackageAdded(applicationInfo.packageName, this.mInstallInfo.user);
                    return;
                }
                return;
            } catch (PackageManager.NameNotFoundException unused) {
                return;
            }
        }
        synchronized (allAppsList) {
            ArrayList arrayList = (ArrayList) allAppsList.updatePromiseInstallInfo(this.mInstallInfo);
            if (!arrayList.isEmpty()) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    final AppInfo appInfo = (AppInfo) it.next();
                    scheduleCallbackTask(new LauncherModel.CallbackTask() { // from class: com.android.launcher3.model.D0
                        @Override // com.android.launcher3.LauncherModel.CallbackTask
                        public final void execute(BgDataModel.Callbacks callbacks) {
                            int i4 = r1;
                            Object obj = appInfo;
                            switch (i4) {
                                case 0:
                                    callbacks.bindIncrementalDownloadProgressUpdated((AppInfo) obj);
                                    return;
                                default:
                                    callbacks.bindRestoreItemsChange((HashSet) obj);
                                    return;
                            }
                        }
                    });
                }
            }
            bindApplicationsIfNeeded();
        }
        synchronized (bgDataModel) {
            final HashSet hashSet = new HashSet();
            bgDataModel.forAllWorkspaceItemInfos(this.mInstallInfo.user, new Consumer() { // from class: com.android.launcher3.model.E0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    PackageInstallStateChangedTask.m(PackageInstallStateChangedTask.this, hashSet, (WorkspaceItemInfo) obj);
                }
            });
            Iterator it2 = bgDataModel.appWidgets.iterator();
            while (it2.hasNext()) {
                LauncherAppWidgetInfo launcherAppWidgetInfo = (LauncherAppWidgetInfo) it2.next();
                if (launcherAppWidgetInfo.providerName.getPackageName().equals(this.mInstallInfo.packageName)) {
                    launcherAppWidgetInfo.installProgress = this.mInstallInfo.progress;
                    hashSet.add(launcherAppWidgetInfo);
                }
            }
            if (!hashSet.isEmpty()) {
                scheduleCallbackTask(new LauncherModel.CallbackTask() { // from class: com.android.launcher3.model.D0
                    @Override // com.android.launcher3.LauncherModel.CallbackTask
                    public final void execute(BgDataModel.Callbacks callbacks) {
                        int i4 = r1;
                        Object obj = hashSet;
                        switch (i4) {
                            case 0:
                                callbacks.bindIncrementalDownloadProgressUpdated((AppInfo) obj);
                                return;
                            default:
                                callbacks.bindRestoreItemsChange((HashSet) obj);
                                return;
                        }
                    }
                });
            }
        }
    }
}
