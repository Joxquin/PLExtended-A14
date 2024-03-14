package com.android.launcher3.model;

import android.os.Trace;
import android.util.Log;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.util.LooperExecutor;
import com.android.launcher3.util.PackageUserKey;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;
/* loaded from: classes.dex */
public final class LauncherBinder {
    protected final LauncherAppState mApp;
    private final AllAppsList mBgAllAppsList;
    protected final BgDataModel mBgDataModel;
    final BgDataModel.Callbacks[] mCallbacksList;
    private int mMyBindingId;
    protected final LooperExecutor mUiExecutor = Executors.MAIN_EXECUTOR;

    public LauncherBinder(LauncherAppState launcherAppState, BgDataModel bgDataModel, AllAppsList allAppsList, BgDataModel.Callbacks[] callbacksArr) {
        this.mApp = launcherAppState;
        this.mBgDataModel = bgDataModel;
        this.mBgAllAppsList = allAppsList;
        this.mCallbacksList = callbacksArr;
    }

    public static /* synthetic */ void a(LauncherBinder launcherBinder, LauncherModel.CallbackTask callbackTask) {
        if (launcherBinder.mMyBindingId != launcherBinder.mBgDataModel.lastBindId) {
            Log.d("LauncherBinder", "Too many consecutive reloads, skipping obsolete data-bind");
            return;
        }
        for (BgDataModel.Callbacks callbacks : launcherBinder.mCallbacksList) {
            callbackTask.execute(callbacks);
        }
    }

    private void bindWorkspaceAllAtOnce(boolean z4, boolean z5) {
        int size;
        LauncherBinder launcherBinder = this;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        IntArray intArray = new IntArray();
        ArrayList arrayList3 = new ArrayList();
        synchronized (launcherBinder.mBgDataModel) {
            arrayList.addAll(launcherBinder.mBgDataModel.workspaceItems);
            arrayList2.addAll(launcherBinder.mBgDataModel.appWidgets);
            intArray.addAll(launcherBinder.mBgDataModel.collectWorkspaceScreens());
            launcherBinder.mBgDataModel.extraItems.forEach(new C0367h(0, arrayList3));
            if (z4) {
                BgDataModel bgDataModel = launcherBinder.mBgDataModel;
                bgDataModel.lastBindId++;
                bgDataModel.lastLoadId = launcherBinder.mApp.getModel().getLastLoadId();
            }
            BgDataModel bgDataModel2 = launcherBinder.mBgDataModel;
            launcherBinder.mMyBindingId = bgDataModel2.lastBindId;
            size = bgDataModel2.itemsIdMap.size();
        }
        BgDataModel.Callbacks[] callbacksArr = launcherBinder.mCallbacksList;
        int length = callbacksArr.length;
        int i4 = 0;
        while (i4 < length) {
            int i5 = i4;
            ArrayList arrayList4 = arrayList;
            ArrayList arrayList5 = arrayList;
            int i6 = size;
            BaseLauncherBinder$UnifiedWorkspaceBinder.e(new BaseLauncherBinder$UnifiedWorkspaceBinder(this, callbacksArr[i4], launcherBinder.mUiExecutor, launcherBinder.mApp, launcherBinder.mBgDataModel, launcherBinder.mMyBindingId, arrayList4, arrayList2, arrayList3, intArray), z5, i6);
            i4 = i5 + 1;
            launcherBinder = this;
            size = i6;
            length = length;
            callbacksArr = callbacksArr;
            arrayList = arrayList5;
        }
    }

    public static void f(InvariantDeviceProfile invariantDeviceProfile, ArrayList arrayList) {
        final int i4 = invariantDeviceProfile.numColumns;
        final int i5 = invariantDeviceProfile.numRows * i4;
        Collections.sort(arrayList, new Comparator() { // from class: com.android.launcher3.model.i
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int i6 = i5;
                int i7 = i4;
                ItemInfo itemInfo = (ItemInfo) obj;
                ItemInfo itemInfo2 = (ItemInfo) obj2;
                int i8 = itemInfo.container;
                int i9 = itemInfo2.container;
                if (i8 == i9) {
                    if (i8 != -101) {
                        if (i8 != -100) {
                            return 0;
                        }
                        return Integer.compare((itemInfo.cellY * i7) + (itemInfo.screenId * i6) + itemInfo.cellX, (itemInfo2.cellY * i7) + (itemInfo2.screenId * i6) + itemInfo2.cellX);
                    }
                    return Integer.compare(itemInfo.screenId, itemInfo2.screenId);
                }
                return Integer.compare(i8, i9);
            }
        });
    }

    public final void b() {
        AllAppsList allAppsList = this.mBgAllAppsList;
        final AppInfo[] appInfoArr = (AppInfo[]) allAppsList.data.toArray(AppInfo.EMPTY_ARRAY);
        Arrays.sort(appInfoArr, AppInfo.COMPONENT_KEY_COMPARATOR);
        final int flags = allAppsList.getFlags();
        final Map map = (Map) Arrays.stream(appInfoArr).collect(Collectors.toMap(new Function() { // from class: com.android.launcher3.model.e
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                switch (r1) {
                    case 0:
                        AppInfo appInfo = (AppInfo) obj;
                        return new PackageUserKey(appInfo.componentName.getPackageName(), appInfo.user);
                    default:
                        return Integer.valueOf(((AppInfo) obj).uid);
                }
            }
        }, new Function() { // from class: com.android.launcher3.model.e
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                switch (r1) {
                    case 0:
                        AppInfo appInfo = (AppInfo) obj;
                        return new PackageUserKey(appInfo.componentName.getPackageName(), appInfo.user);
                    default:
                        return Integer.valueOf(((AppInfo) obj).uid);
                }
            }
        }, new C0363f()));
        d(new LauncherModel.CallbackTask() { // from class: com.android.launcher3.model.g
            @Override // com.android.launcher3.LauncherModel.CallbackTask
            public final void execute(BgDataModel.Callbacks callbacks) {
                callbacks.bindAllApplications(appInfoArr, flags, map);
            }
        }, this.mUiExecutor);
    }

    public final void bindDeepShortcuts() {
        HashMap hashMap;
        synchronized (this.mBgDataModel) {
            hashMap = new HashMap(this.mBgDataModel.deepShortcutMap);
        }
        d(new C0362e0(0, hashMap), this.mUiExecutor);
    }

    public final void bindWidgets() {
        d(new C0362e0(1, this.mBgDataModel.widgetsModel.getWidgetsListForPicker(this.mApp.getContext())), this.mUiExecutor);
    }

    public final void c(boolean z4, boolean z5) {
        Trace.beginSection("BaseLauncherBinder#bindWorkspace");
        try {
            if (FeatureFlags.ENABLE_WORKSPACE_LOADING_OPTIMIZATION.get()) {
                BaseLauncherBinder$DisjointWorkspaceBinder e4 = e(z4, this.mBgDataModel.collectWorkspaceScreens());
                e4.bindCurrentWorkspacePages(z5);
                e4.bindOtherWorkspacePages();
            } else {
                bindWorkspaceAllAtOnce(z4, z5);
            }
        } finally {
            Trace.endSection();
        }
    }

    public final void d(LauncherModel.CallbackTask callbackTask, LooperExecutor looperExecutor) {
        looperExecutor.execute(new RunnableC0396w(this, callbackTask, 1));
    }

    public final BaseLauncherBinder$DisjointWorkspaceBinder e(boolean z4, IntArray intArray) {
        BaseLauncherBinder$DisjointWorkspaceBinder baseLauncherBinder$DisjointWorkspaceBinder;
        synchronized (this.mBgDataModel) {
            if (z4) {
                BgDataModel bgDataModel = this.mBgDataModel;
                bgDataModel.lastBindId++;
                bgDataModel.lastLoadId = this.mApp.getModel().getLastLoadId();
            }
            this.mMyBindingId = this.mBgDataModel.lastBindId;
            baseLauncherBinder$DisjointWorkspaceBinder = new BaseLauncherBinder$DisjointWorkspaceBinder(this, intArray);
        }
        return baseLauncherBinder$DisjointWorkspaceBinder;
    }
}
