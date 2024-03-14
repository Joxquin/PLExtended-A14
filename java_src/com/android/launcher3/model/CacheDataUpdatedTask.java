package com.android.launcher3.model;

import android.content.ComponentName;
import android.os.UserHandle;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final class CacheDataUpdatedTask extends BaseModelUpdateTask {
    private final int mOp;
    private final HashSet mPackages;
    private final UserHandle mUser;

    public CacheDataUpdatedTask(int i4, UserHandle userHandle, HashSet hashSet) {
        this.mOp = i4;
        this.mUser = userHandle;
        this.mPackages = hashSet;
    }

    public static void m(CacheDataUpdatedTask cacheDataUpdatedTask, IconCache iconCache, ArrayList arrayList, WorkspaceItemInfo workspaceItemInfo) {
        cacheDataUpdatedTask.getClass();
        ComponentName targetComponent = workspaceItemInfo.getTargetComponent();
        if (workspaceItemInfo.itemType == 0) {
            int i4 = cacheDataUpdatedTask.mOp;
            if ((i4 != 1 ? i4 != 2 ? false : workspaceItemInfo.hasPromiseIconUi() : true) && targetComponent != null && cacheDataUpdatedTask.mPackages.contains(targetComponent.getPackageName())) {
                iconCache.getTitleAndIcon(workspaceItemInfo, workspaceItemInfo.usingLowResIcon());
                arrayList.add(workspaceItemInfo);
            }
        }
    }

    @Override // com.android.launcher3.model.BaseModelUpdateTask
    public final void execute(LauncherAppState launcherAppState, BgDataModel bgDataModel, AllAppsList allAppsList) {
        final IconCache iconCache = launcherAppState.getIconCache();
        final ArrayList arrayList = new ArrayList();
        synchronized (bgDataModel) {
            bgDataModel.forAllWorkspaceItemInfos(this.mUser, new Consumer() { // from class: com.android.launcher3.model.K
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CacheDataUpdatedTask.m(CacheDataUpdatedTask.this, iconCache, arrayList, (WorkspaceItemInfo) obj);
                }
            });
            allAppsList.updateIconsAndLabels(this.mUser, this.mPackages);
        }
        bindUpdatedWorkspaceItems(arrayList);
        bindApplicationsIfNeeded();
    }
}
