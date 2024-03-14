package com.android.launcher3.taskbar;

import android.util.SparseArray;
import android.view.View;
import com.android.launcher3.folder.Folder;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.util.C0481n;
import com.android.launcher3.util.C0483p;
import com.android.launcher3.util.C0484q;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.util.IntSet;
import com.android.launcher3.util.ItemInfoMatcher;
import com.android.launcher3.util.LauncherBindableItemsContainer$ItemOperator;
import com.android.quickstep.RecentsModel;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.Predicate;
/* loaded from: classes.dex */
public class TaskbarModelCallbacks implements BgDataModel.Callbacks, RecentsModel.RunningTasksListener {
    private final TaskbarView mContainer;
    private final TaskbarActivityContext mContext;
    protected TaskbarControllers mControllers;
    private boolean mDeferUpdatesForSUW;
    private RunnableC0451r0 mDeferredUpdates;
    private final SparseArray mHotseatItems = new SparseArray();
    private List mPredictedItems = Collections.emptyList();

    public TaskbarModelCallbacks(TaskbarActivityContext taskbarActivityContext, TaskbarView taskbarView) {
        this.mContext = taskbarActivityContext;
        this.mContainer = taskbarView;
    }

    public static void a(TaskbarModelCallbacks taskbarModelCallbacks, ItemInfo[] itemInfoArr) {
        taskbarModelCallbacks.mContainer.updateHotseatItems(itemInfoArr);
        taskbarModelCallbacks.mControllers.taskbarViewController.updateIconsBackground();
    }

    /* JADX WARN: Type inference failed for: r1v4, types: [com.android.launcher3.taskbar.r0] */
    private void commitItemsToUI() {
        TaskbarActivityContext taskbarActivityContext = this.mContext;
        if (taskbarActivityContext.isBindingItems()) {
            return;
        }
        int i4 = taskbarActivityContext.getDeviceProfile().numShownHotseatIcons;
        ItemInfo[] itemInfoArr = new ItemInfo[i4];
        int size = this.mPredictedItems.size();
        int i5 = 0;
        for (int i6 = 0; i6 < i4; i6++) {
            ItemInfo itemInfo = (ItemInfo) this.mHotseatItems.get(i6);
            itemInfoArr[i6] = itemInfo;
            if (itemInfo == null && i5 < size) {
                ItemInfo itemInfo2 = (ItemInfo) this.mPredictedItems.get(i5);
                itemInfoArr[i6] = itemInfo2;
                itemInfo2.screenId = i6;
                i5++;
            }
        }
        final ItemInfo[] updateHotseatItemInfos = this.mControllers.taskbarRecentAppsController.updateHotseatItemInfos(itemInfoArr);
        if (this.mDeferUpdatesForSUW) {
            this.mDeferredUpdates = new Runnable() { // from class: com.android.launcher3.taskbar.r0
                @Override // java.lang.Runnable
                public final void run() {
                    TaskbarModelCallbacks.a(TaskbarModelCallbacks.this, updateHotseatItemInfos);
                }
            };
            return;
        }
        this.mContainer.updateHotseatItems(updateHotseatItemInfos);
        this.mControllers.taskbarViewController.updateIconsBackground();
    }

    private boolean handleItemsAdded(List list) {
        Iterator it = list.iterator();
        boolean z4 = false;
        while (it.hasNext()) {
            ItemInfo itemInfo = (ItemInfo) it.next();
            if (itemInfo.container == -101) {
                this.mHotseatItems.put(itemInfo.screenId, itemInfo);
                z4 = true;
            }
        }
        return z4;
    }

    private boolean handleItemsRemoved(Predicate predicate) {
        SparseArray sparseArray = this.mHotseatItems;
        boolean z4 = false;
        for (int size = sparseArray.size() - 1; size >= 0; size--) {
            if (predicate.test((ItemInfo) sparseArray.valueAt(size))) {
                sparseArray.removeAt(size);
                z4 = true;
            }
        }
        return z4;
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public final void bindAllApplications(AppInfo[] appInfoArr, int i4, Map map) {
        this.mControllers.taskbarAllAppsController.setApps(appInfoArr, i4, map);
        this.mControllers.taskbarRecentAppsController.setApps(appInfoArr);
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public final void bindAppsAdded(IntArray intArray, ArrayList arrayList, ArrayList arrayList2) {
        boolean handleItemsAdded = handleItemsAdded(arrayList);
        boolean handleItemsAdded2 = handleItemsAdded(arrayList2);
        if (handleItemsAdded || handleItemsAdded2) {
            commitItemsToUI();
        }
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public final void bindDeepShortcutMap(HashMap hashMap) {
        this.mControllers.taskbarPopupController.setDeepShortcutMap(hashMap);
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void bindExtraContainerItems(BgDataModel.FixedContainerItems fixedContainerItems) {
        int i4 = fixedContainerItems.containerId;
        List list = fixedContainerItems.items;
        if (i4 == -103) {
            this.mPredictedItems = list;
            commitItemsToUI();
        } else if (i4 == -102) {
            this.mControllers.taskbarAllAppsController.setPredictedApps(list);
        }
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public final void bindItems(List list) {
        if (handleItemsAdded(list)) {
            commitItemsToUI();
        }
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public final void bindItemsModified(List list) {
        int i4 = ItemInfoMatcher.f5271a;
        IntSet intSet = new IntSet();
        list.forEach(new C0483p(intSet));
        boolean handleItemsRemoved = handleItemsRemoved(new C0481n(3, intSet));
        boolean handleItemsAdded = handleItemsAdded(list);
        if (handleItemsRemoved || handleItemsAdded) {
            commitItemsToUI();
        }
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public final void bindRestoreItemsChange(HashSet hashSet) {
        C0484q c0484q = new C0484q(hashSet, 1);
        mapOverItems(c0484q);
        Folder open = Folder.getOpen(this.mContext);
        if (open != null) {
            open.iterateOverItems(c0484q);
        }
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public final void bindWorkspaceComponentsRemoved(Predicate predicate) {
        if (handleItemsRemoved(predicate)) {
            commitItemsToUI();
        }
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public final void bindWorkspaceItemsChanged(List list) {
        C0484q c0484q = new C0484q(new HashSet(list), 0);
        mapOverItems(c0484q);
        Folder open = Folder.getOpen(this.mContext);
        if (open != null) {
            open.iterateOverItems(c0484q);
        }
    }

    public final void commitRunningAppsToUI() {
        commitItemsToUI();
    }

    public final void dumpLogs(String str, PrintWriter printWriter) {
        printWriter.println(str + "TaskbarModelCallbacks:");
        printWriter.println(String.format("%s\thotseat items count=%s", str, Integer.valueOf(this.mHotseatItems.size())));
        List list = this.mPredictedItems;
        if (list != null) {
            printWriter.println(String.format("%s\tpredicted items count=%s", str, Integer.valueOf(list.size())));
        }
        printWriter.println(String.format("%s\tmDeferUpdatesForSUW=%b", str, Boolean.valueOf(this.mDeferUpdatesForSUW)));
        Object[] objArr = new Object[2];
        objArr[0] = str;
        objArr[1] = Boolean.valueOf(this.mDeferredUpdates != null);
        printWriter.println(String.format("%s\tupdates pending=%b", objArr));
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public final void finishBindingItems(IntSet intSet) {
        this.mContext.setBindingItems(false);
        commitItemsToUI();
    }

    public final void init(TaskbarControllers taskbarControllers) {
        this.mControllers = taskbarControllers;
        TaskbarRecentAppsController taskbarRecentAppsController = taskbarControllers.taskbarRecentAppsController;
        taskbarRecentAppsController.getClass();
        if (taskbarRecentAppsController instanceof DesktopTaskbarRecentAppsController) {
            ((RecentsModel) RecentsModel.INSTANCE.get(this.mContext)).registerRunningTasksListener(this);
        }
    }

    public final void mapOverItems(LauncherBindableItemsContainer$ItemOperator launcherBindableItemsContainer$ItemOperator) {
        TaskbarView taskbarView = this.mContainer;
        int childCount = taskbarView.getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = taskbarView.getChildAt(i4);
            if (((C0484q) launcherBindableItemsContainer$ItemOperator).evaluate(childAt, (ItemInfo) childAt.getTag())) {
                return;
            }
        }
    }

    @Override // com.android.quickstep.RecentsModel.RunningTasksListener
    public final void onRunningTasksChanged() {
        updateRunningApps();
    }

    public final void setDeferUpdatesForSUW(boolean z4) {
        RunnableC0451r0 runnableC0451r0;
        this.mDeferUpdatesForSUW = z4;
        if (z4 || (runnableC0451r0 = this.mDeferredUpdates) == null) {
            return;
        }
        this.mContainer.post(runnableC0451r0);
        this.mDeferredUpdates = null;
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public final void startBinding() {
        this.mContext.setBindingItems(true);
        this.mHotseatItems.clear();
        this.mPredictedItems = Collections.emptyList();
    }

    public final void unregisterListeners() {
        ((RecentsModel) RecentsModel.INSTANCE.get(this.mContext)).unregisterRunningTasksListener();
    }

    public final void updateRunningApps() {
        this.mControllers.taskbarRecentAppsController.updateRunningApps(this.mHotseatItems);
    }
}
