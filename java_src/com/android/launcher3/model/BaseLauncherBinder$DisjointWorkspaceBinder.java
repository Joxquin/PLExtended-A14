package com.android.launcher3.model;

import com.android.launcher3.LauncherModel;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.util.C0480m;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.util.IntSet;
import com.android.launcher3.util.RunnableList;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Predicate;
/* loaded from: classes.dex */
public final class BaseLauncherBinder$DisjointWorkspaceBinder {
    private final IntArray mOrderedScreenIds;
    final /* synthetic */ LauncherBinder this$0;
    private final IntSet mCurrentScreenIds = new IntSet();
    private final Set mBoundItemIds = new HashSet();

    public BaseLauncherBinder$DisjointWorkspaceBinder(LauncherBinder launcherBinder, IntArray intArray) {
        BgDataModel.Callbacks[] callbacksArr;
        this.this$0 = launcherBinder;
        this.mOrderedScreenIds = intArray;
        for (BgDataModel.Callbacks callbacks : launcherBinder.mCallbacksList) {
            IntSet intSet = this.mCurrentScreenIds;
            IntSet pagesToBindSynchronously = callbacks.getPagesToBindSynchronously(intArray);
            intSet.getClass();
            pagesToBindSynchronously.forEach(new C0480m(intSet, 0));
        }
        if (this.mCurrentScreenIds.size() == 0) {
            this.mCurrentScreenIds.add(0);
        }
    }

    private void bindAppWidgets(List list) {
        ArrayList arrayList = (ArrayList) list;
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            C0385q c0385q = new C0385q(0, (ItemInfo) arrayList.get(i4));
            LauncherBinder launcherBinder = this.this$0;
            launcherBinder.d(c0385q, launcherBinder.mUiExecutor);
        }
    }

    private void bindWorkspaceItems(ArrayList arrayList) {
        int size = arrayList.size();
        int i4 = 0;
        while (i4 < size) {
            int i5 = i4 + 6;
            r rVar = new r(arrayList, i4, i5 <= size ? 6 : size - i4, 0);
            LauncherBinder launcherBinder = this.this$0;
            launcherBinder.d(rVar, launcherBinder.mUiExecutor);
            i4 = i5;
        }
    }

    public static /* synthetic */ void e(BaseLauncherBinder$DisjointWorkspaceBinder baseLauncherBinder$DisjointWorkspaceBinder, int i4, boolean z4, BgDataModel.Callbacks callbacks) {
        baseLauncherBinder$DisjointWorkspaceBinder.getClass();
        Executors.MODEL_EXECUTOR.setThreadPriority(10);
        callbacks.onInitialBindComplete(baseLauncherBinder$DisjointWorkspaceBinder.mCurrentScreenIds, new RunnableList(), i4, z4);
    }

    public final void bindCurrentWorkspacePages(final boolean z4) {
        ArrayList arrayList;
        ArrayList arrayList2;
        FeatureFlags.BooleanFlag booleanFlag;
        final int size;
        ArrayList arrayList3 = new ArrayList();
        synchronized (this.this$0.mBgDataModel) {
            arrayList = new ArrayList(this.this$0.mBgDataModel.workspaceItems);
            arrayList2 = new ArrayList(this.this$0.mBgDataModel.appWidgets);
            booleanFlag = FeatureFlags.CHANGE_MODEL_DELEGATE_LOADING_ORDER;
            if (!booleanFlag.get()) {
                this.this$0.mBgDataModel.extraItems.forEach(new C0367h(1, arrayList3));
            }
            size = this.this$0.mBgDataModel.itemsIdMap.size();
        }
        arrayList.forEach(new Consumer(this) { // from class: com.android.launcher3.model.n

            /* renamed from: b  reason: collision with root package name */
            public final /* synthetic */ BaseLauncherBinder$DisjointWorkspaceBinder f4843b;

            {
                this.f4843b = this;
            }

            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                switch (r2) {
                    case 0:
                        ((HashSet) this.f4843b.mBoundItemIds).add(Integer.valueOf(((ItemInfo) obj).id));
                        return;
                    case 1:
                        ((HashSet) this.f4843b.mBoundItemIds).add(Integer.valueOf(((LauncherAppWidgetInfo) obj).id));
                        return;
                    default:
                        BaseLauncherBinder$DisjointWorkspaceBinder baseLauncherBinder$DisjointWorkspaceBinder = this.f4843b;
                        baseLauncherBinder$DisjointWorkspaceBinder.getClass();
                        C0388s c0388s = new C0388s((BgDataModel.FixedContainerItems) obj, 0);
                        LauncherBinder launcherBinder = baseLauncherBinder$DisjointWorkspaceBinder.this$0;
                        launcherBinder.d(c0388s, launcherBinder.mUiExecutor);
                        return;
                }
            }
        });
        arrayList2.forEach(new Consumer(this) { // from class: com.android.launcher3.model.n

            /* renamed from: b  reason: collision with root package name */
            public final /* synthetic */ BaseLauncherBinder$DisjointWorkspaceBinder f4843b;

            {
                this.f4843b = this;
            }

            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                switch (r2) {
                    case 0:
                        ((HashSet) this.f4843b.mBoundItemIds).add(Integer.valueOf(((ItemInfo) obj).id));
                        return;
                    case 1:
                        ((HashSet) this.f4843b.mBoundItemIds).add(Integer.valueOf(((LauncherAppWidgetInfo) obj).id));
                        return;
                    default:
                        BaseLauncherBinder$DisjointWorkspaceBinder baseLauncherBinder$DisjointWorkspaceBinder = this.f4843b;
                        baseLauncherBinder$DisjointWorkspaceBinder.getClass();
                        C0388s c0388s = new C0388s((BgDataModel.FixedContainerItems) obj, 0);
                        LauncherBinder launcherBinder = baseLauncherBinder$DisjointWorkspaceBinder.this$0;
                        launcherBinder.d(c0388s, launcherBinder.mUiExecutor);
                        return;
                }
            }
        });
        if (!booleanFlag.get()) {
            arrayList3.forEach(new Consumer(this) { // from class: com.android.launcher3.model.n

                /* renamed from: b  reason: collision with root package name */
                public final /* synthetic */ BaseLauncherBinder$DisjointWorkspaceBinder f4843b;

                {
                    this.f4843b = this;
                }

                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    switch (r2) {
                        case 0:
                            ((HashSet) this.f4843b.mBoundItemIds).add(Integer.valueOf(((ItemInfo) obj).id));
                            return;
                        case 1:
                            ((HashSet) this.f4843b.mBoundItemIds).add(Integer.valueOf(((LauncherAppWidgetInfo) obj).id));
                            return;
                        default:
                            BaseLauncherBinder$DisjointWorkspaceBinder baseLauncherBinder$DisjointWorkspaceBinder = this.f4843b;
                            baseLauncherBinder$DisjointWorkspaceBinder.getClass();
                            C0388s c0388s = new C0388s((BgDataModel.FixedContainerItems) obj, 0);
                            LauncherBinder launcherBinder = baseLauncherBinder$DisjointWorkspaceBinder.this$0;
                            launcherBinder.d(c0388s, launcherBinder.mUiExecutor);
                            return;
                    }
                }
            });
        }
        LauncherBinder.f(this.this$0.mApp.getInvariantDeviceProfile(), arrayList);
        LauncherBinder launcherBinder = this.this$0;
        launcherBinder.d(new C0381o(0), launcherBinder.mUiExecutor);
        LauncherBinder launcherBinder2 = this.this$0;
        launcherBinder2.d(new C0373k(this, 1), launcherBinder2.mUiExecutor);
        bindWorkspaceItems(arrayList);
        bindAppWidgets(arrayList2);
        LauncherBinder launcherBinder3 = this.this$0;
        launcherBinder3.d(new LauncherModel.CallbackTask() { // from class: com.android.launcher3.model.p
            @Override // com.android.launcher3.LauncherModel.CallbackTask
            public final void execute(BgDataModel.Callbacks callbacks) {
                BaseLauncherBinder$DisjointWorkspaceBinder.e(BaseLauncherBinder$DisjointWorkspaceBinder.this, size, z4, callbacks);
            }
        }, launcherBinder3.mUiExecutor);
    }

    public final void bindOtherWorkspacePages() {
        ArrayList arrayList;
        ArrayList arrayList2;
        synchronized (this.this$0.mBgDataModel) {
            arrayList = new ArrayList(this.this$0.mBgDataModel.workspaceItems);
            arrayList2 = new ArrayList(this.this$0.mBgDataModel.appWidgets);
        }
        arrayList.removeIf(new Predicate(this) { // from class: com.android.launcher3.model.j

            /* renamed from: b  reason: collision with root package name */
            public final /* synthetic */ BaseLauncherBinder$DisjointWorkspaceBinder f4828b;

            {
                this.f4828b = this;
            }

            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean contains;
                boolean contains2;
                switch (r2) {
                    case 0:
                        contains2 = ((HashSet) this.f4828b.mBoundItemIds).contains(Integer.valueOf(((ItemInfo) obj).id));
                        return contains2;
                    default:
                        contains = ((HashSet) this.f4828b.mBoundItemIds).contains(Integer.valueOf(((LauncherAppWidgetInfo) obj).id));
                        return contains;
                }
            }
        });
        arrayList2.removeIf(new Predicate(this) { // from class: com.android.launcher3.model.j

            /* renamed from: b  reason: collision with root package name */
            public final /* synthetic */ BaseLauncherBinder$DisjointWorkspaceBinder f4828b;

            {
                this.f4828b = this;
            }

            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean contains;
                boolean contains2;
                switch (r2) {
                    case 0:
                        contains2 = ((HashSet) this.f4828b.mBoundItemIds).contains(Integer.valueOf(((ItemInfo) obj).id));
                        return contains2;
                    default:
                        contains = ((HashSet) this.f4828b.mBoundItemIds).contains(Integer.valueOf(((LauncherAppWidgetInfo) obj).id));
                        return contains;
                }
            }
        });
        LauncherBinder.f(this.this$0.mApp.getInvariantDeviceProfile(), arrayList);
        bindWorkspaceItems(arrayList);
        bindAppWidgets(arrayList2);
        LauncherBinder launcherBinder = this.this$0;
        launcherBinder.d(new C0373k(this, 0), launcherBinder.mUiExecutor);
        this.this$0.mUiExecutor.execute(new RunnableC0375l(0, this));
        StringCache m3clone = this.this$0.mBgDataModel.stringCache.m3clone();
        LauncherBinder launcherBinder2 = this.this$0;
        launcherBinder2.d(new C0377m(m3clone, 0), launcherBinder2.mUiExecutor);
    }
}
