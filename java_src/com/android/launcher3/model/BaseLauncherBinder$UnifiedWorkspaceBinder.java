package com.android.launcher3.model;

import android.util.Log;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.util.IntSet;
import com.android.launcher3.util.LooperExecutor;
import com.android.launcher3.util.RunnableList;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class BaseLauncherBinder$UnifiedWorkspaceBinder {
    private final LauncherAppState mApp;
    private final ArrayList mAppWidgets;
    private final BgDataModel mBgDataModel;
    private final BgDataModel.Callbacks mCallbacks;
    private final ArrayList mExtraItems;
    private final int mMyBindingId;
    private final IntArray mOrderedScreenIds;
    private final Executor mUiExecutor;
    private final ArrayList mWorkspaceItems;
    final /* synthetic */ LauncherBinder this$0;

    public BaseLauncherBinder$UnifiedWorkspaceBinder(LauncherBinder launcherBinder, BgDataModel.Callbacks callbacks, LooperExecutor looperExecutor, LauncherAppState launcherAppState, BgDataModel bgDataModel, int i4, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, IntArray intArray) {
        this.this$0 = launcherBinder;
        this.mCallbacks = callbacks;
        this.mUiExecutor = looperExecutor;
        this.mApp = launcherAppState;
        this.mBgDataModel = bgDataModel;
        this.mMyBindingId = i4;
        this.mWorkspaceItems = arrayList;
        this.mAppWidgets = arrayList2;
        this.mExtraItems = arrayList3;
        this.mOrderedScreenIds = intArray;
    }

    public static /* synthetic */ void a(BaseLauncherBinder$UnifiedWorkspaceBinder baseLauncherBinder$UnifiedWorkspaceBinder, LauncherModel.CallbackTask callbackTask) {
        if (baseLauncherBinder$UnifiedWorkspaceBinder.mMyBindingId != baseLauncherBinder$UnifiedWorkspaceBinder.mBgDataModel.lastBindId) {
            Log.d("LauncherBinder", "Too many consecutive reloads, skipping obsolete data-bind");
        } else {
            callbackTask.execute(baseLauncherBinder$UnifiedWorkspaceBinder.mCallbacks);
        }
    }

    public static /* synthetic */ void b(BaseLauncherBinder$UnifiedWorkspaceBinder baseLauncherBinder$UnifiedWorkspaceBinder, BgDataModel.FixedContainerItems fixedContainerItems) {
        baseLauncherBinder$UnifiedWorkspaceBinder.getClass();
        baseLauncherBinder$UnifiedWorkspaceBinder.executeCallbacksTask(new C0388s(fixedContainerItems, 1), baseLauncherBinder$UnifiedWorkspaceBinder.mUiExecutor);
    }

    public static /* synthetic */ void c(BaseLauncherBinder$UnifiedWorkspaceBinder baseLauncherBinder$UnifiedWorkspaceBinder) {
        baseLauncherBinder$UnifiedWorkspaceBinder.getClass();
        Executors.MODEL_EXECUTOR.setThreadPriority(0);
        ((ItemInstallQueue) ItemInstallQueue.INSTANCE.get(baseLauncherBinder$UnifiedWorkspaceBinder.mApp.getContext())).resumeModelPush(2);
    }

    public static void e(final BaseLauncherBinder$UnifiedWorkspaceBinder baseLauncherBinder$UnifiedWorkspaceBinder, final boolean z4, final int i4) {
        BgDataModel.Callbacks callbacks = baseLauncherBinder$UnifiedWorkspaceBinder.mCallbacks;
        final IntSet pagesToBindSynchronously = callbacks.getPagesToBindSynchronously(baseLauncherBinder$UnifiedWorkspaceBinder.mOrderedScreenIds);
        Objects.requireNonNull(pagesToBindSynchronously, "Null screen ids provided by " + callbacks);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ModelUtils.filterCurrentWorkspaceItems(pagesToBindSynchronously, baseLauncherBinder$UnifiedWorkspaceBinder.mWorkspaceItems, arrayList, arrayList2);
        ModelUtils.filterCurrentWorkspaceItems(pagesToBindSynchronously, baseLauncherBinder$UnifiedWorkspaceBinder.mAppWidgets, arrayList3, arrayList4);
        InvariantDeviceProfile invariantDeviceProfile = baseLauncherBinder$UnifiedWorkspaceBinder.mApp.getInvariantDeviceProfile();
        baseLauncherBinder$UnifiedWorkspaceBinder.this$0.getClass();
        LauncherBinder.f(invariantDeviceProfile, arrayList);
        LauncherBinder.f(invariantDeviceProfile, arrayList2);
        C0381o c0381o = new C0381o(1);
        Executor executor = baseLauncherBinder$UnifiedWorkspaceBinder.mUiExecutor;
        baseLauncherBinder$UnifiedWorkspaceBinder.executeCallbacksTask(c0381o, executor);
        baseLauncherBinder$UnifiedWorkspaceBinder.executeCallbacksTask(new LauncherModel.CallbackTask() { // from class: com.android.launcher3.model.t
            @Override // com.android.launcher3.LauncherModel.CallbackTask
            public final void execute(BgDataModel.Callbacks callbacks2) {
                int i5 = r1;
                Object obj = baseLauncherBinder$UnifiedWorkspaceBinder;
                switch (i5) {
                    case 0:
                        callbacks2.bindScreens(((BaseLauncherBinder$UnifiedWorkspaceBinder) obj).mOrderedScreenIds);
                        return;
                    default:
                        callbacks2.finishBindingItems((IntSet) obj);
                        return;
                }
            }
        }, executor);
        int size = arrayList.size();
        int i5 = 0;
        while (true) {
            int i6 = 6;
            if (i5 >= size) {
                break;
            }
            int i7 = i5 + 6;
            if (i7 > size) {
                i6 = size - i5;
            }
            baseLauncherBinder$UnifiedWorkspaceBinder.executeCallbacksTask(new r(arrayList, i5, i6, 1), executor);
            i5 = i7;
        }
        int size2 = arrayList3.size();
        for (int i8 = 0; i8 < size2; i8++) {
            baseLauncherBinder$UnifiedWorkspaceBinder.executeCallbacksTask(new C0385q(1, (ItemInfo) arrayList3.get(i8)), executor);
        }
        if (!FeatureFlags.CHANGE_MODEL_DELEGATE_LOADING_ORDER.get()) {
            baseLauncherBinder$UnifiedWorkspaceBinder.mExtraItems.forEach(new C0367h(2, baseLauncherBinder$UnifiedWorkspaceBinder));
        }
        final RunnableList runnableList = new RunnableList();
        Executor executor2 = new Executor() { // from class: com.android.launcher3.model.u
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                RunnableList.this.add(runnable);
            }
        };
        int size3 = arrayList2.size();
        int i9 = 0;
        while (i9 < size3) {
            int i10 = i9 + 6;
            baseLauncherBinder$UnifiedWorkspaceBinder.executeCallbacksTask(new r(arrayList2, i9, i10 <= size3 ? 6 : size3 - i9, 1), executor2);
            i9 = i10;
        }
        int size4 = arrayList4.size();
        for (int i11 = 0; i11 < size4; i11++) {
            baseLauncherBinder$UnifiedWorkspaceBinder.executeCallbacksTask(new C0385q(1, (ItemInfo) arrayList4.get(i11)), executor2);
        }
        baseLauncherBinder$UnifiedWorkspaceBinder.executeCallbacksTask(new LauncherModel.CallbackTask() { // from class: com.android.launcher3.model.t
            @Override // com.android.launcher3.LauncherModel.CallbackTask
            public final void execute(BgDataModel.Callbacks callbacks2) {
                int i52 = r1;
                Object obj = pagesToBindSynchronously;
                switch (i52) {
                    case 0:
                        callbacks2.bindScreens(((BaseLauncherBinder$UnifiedWorkspaceBinder) obj).mOrderedScreenIds);
                        return;
                    default:
                        callbacks2.finishBindingItems((IntSet) obj);
                        return;
                }
            }
        }, executor2);
        executor2.execute(new RunnableC0375l(1, baseLauncherBinder$UnifiedWorkspaceBinder));
        baseLauncherBinder$UnifiedWorkspaceBinder.executeCallbacksTask(new LauncherModel.CallbackTask() { // from class: com.android.launcher3.model.v
            @Override // com.android.launcher3.LauncherModel.CallbackTask
            public final void execute(BgDataModel.Callbacks callbacks2) {
                Executors.MODEL_EXECUTOR.setThreadPriority(10);
                callbacks2.onInitialBindComplete(IntSet.this, runnableList, i4, z4);
            }
        }, executor);
        baseLauncherBinder$UnifiedWorkspaceBinder.executeCallbacksTask(new C0377m(baseLauncherBinder$UnifiedWorkspaceBinder.mBgDataModel.stringCache.m3clone(), 1), executor2);
    }

    public final void executeCallbacksTask(LauncherModel.CallbackTask callbackTask, Executor executor) {
        executor.execute(new RunnableC0396w(this, callbackTask, 0));
    }
}
