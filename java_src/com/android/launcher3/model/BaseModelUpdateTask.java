package com.android.launcher3.model;

import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.celllayout.CellPosMapper;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.util.IntSparseArrayMap;
import com.android.launcher3.util.PackageUserKey;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import java.util.stream.IntStream;
/* loaded from: classes.dex */
public abstract class BaseModelUpdateTask implements LauncherModel.ModelUpdateTask {
    private static final boolean DEBUG_TASKS = false;
    private static final String TAG = "BaseModelUpdateTask";
    private AllAppsList mAllAppsList;
    private LauncherAppState mApp;
    private BgDataModel mDataModel;
    private LauncherModel mModel;
    private Executor mUiExecutor;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer lambda$bindApplicationsIfNeeded$10(Integer num, Integer num2) {
        return num;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ PackageUserKey lambda$bindApplicationsIfNeeded$8(AppInfo appInfo) {
        return new PackageUserKey(appInfo.componentName.getPackageName(), appInfo.user);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer lambda$bindApplicationsIfNeeded$9(AppInfo appInfo) {
        return Integer.valueOf(appInfo.uid);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$bindUpdatedWorkspaceItems$1(WorkspaceItemInfo workspaceItemInfo) {
        return workspaceItemInfo.id != -1;
    }

    public void bindApplicationsIfNeeded() {
        if (this.mAllAppsList.getAndResetChangeFlag()) {
            final AppInfo[] appInfoArr = (AppInfo[]) this.mAllAppsList.data.toArray(AppInfo.EMPTY_ARRAY);
            Arrays.sort(appInfoArr, AppInfo.COMPONENT_KEY_COMPARATOR);
            final int flags = this.mAllAppsList.getFlags();
            final Map map = (Map) Arrays.stream(appInfoArr).collect(Collectors.toMap(new Function() { // from class: com.android.launcher3.model.D
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    Integer lambda$bindApplicationsIfNeeded$9;
                    PackageUserKey lambda$bindApplicationsIfNeeded$8;
                    switch (r1) {
                        case 0:
                            lambda$bindApplicationsIfNeeded$8 = BaseModelUpdateTask.lambda$bindApplicationsIfNeeded$8((AppInfo) obj);
                            return lambda$bindApplicationsIfNeeded$8;
                        default:
                            lambda$bindApplicationsIfNeeded$9 = BaseModelUpdateTask.lambda$bindApplicationsIfNeeded$9((AppInfo) obj);
                            return lambda$bindApplicationsIfNeeded$9;
                    }
                }
            }, new Function() { // from class: com.android.launcher3.model.D
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    Integer lambda$bindApplicationsIfNeeded$9;
                    PackageUserKey lambda$bindApplicationsIfNeeded$8;
                    switch (r1) {
                        case 0:
                            lambda$bindApplicationsIfNeeded$8 = BaseModelUpdateTask.lambda$bindApplicationsIfNeeded$8((AppInfo) obj);
                            return lambda$bindApplicationsIfNeeded$8;
                        default:
                            lambda$bindApplicationsIfNeeded$9 = BaseModelUpdateTask.lambda$bindApplicationsIfNeeded$9((AppInfo) obj);
                            return lambda$bindApplicationsIfNeeded$9;
                    }
                }
            }, new E()));
            scheduleCallbackTask(new LauncherModel.CallbackTask() { // from class: com.android.launcher3.model.F
                @Override // com.android.launcher3.LauncherModel.CallbackTask
                public final void execute(BgDataModel.Callbacks callbacks) {
                    callbacks.bindAllApplications(appInfoArr, flags, map);
                }
            });
        }
    }

    public void bindDeepShortcuts(BgDataModel bgDataModel) {
        scheduleCallbackTask(new C0398x(3, new HashMap(bgDataModel.deepShortcutMap)));
    }

    public void bindExtraContainerItems(BgDataModel.FixedContainerItems fixedContainerItems) {
        scheduleCallbackTask(new C0398x(0, fixedContainerItems));
    }

    public void bindUpdatedWidgets(BgDataModel bgDataModel) {
        scheduleCallbackTask(new C0398x(1, bgDataModel.widgetsModel.getWidgetsListForPicker(this.mApp.getContext())));
    }

    public void bindUpdatedWorkspaceItems(List list) {
        List list2 = (List) list.stream().filter(new Predicate() { // from class: com.android.launcher3.model.y
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$bindUpdatedWorkspaceItems$1;
                switch (r1) {
                    case 0:
                        lambda$bindUpdatedWorkspaceItems$1 = BaseModelUpdateTask.lambda$bindUpdatedWorkspaceItems$1((WorkspaceItemInfo) obj);
                        return lambda$bindUpdatedWorkspaceItems$1;
                    default:
                        return Objects.nonNull((BgDataModel.FixedContainerItems) obj);
                }
            }
        }).collect(Collectors.toList());
        if (!list2.isEmpty()) {
            scheduleCallbackTask(new C0398x(2, list2));
        }
        IntStream distinct = list.stream().mapToInt(new C0402z()).distinct();
        final IntSparseArrayMap intSparseArrayMap = this.mDataModel.extraItems;
        Objects.requireNonNull(intSparseArrayMap);
        distinct.mapToObj(new IntFunction() { // from class: com.android.launcher3.model.A
            @Override // java.util.function.IntFunction
            public final Object apply(int i4) {
                return (BgDataModel.FixedContainerItems) IntSparseArrayMap.this.get(i4);
            }
        }).filter(new Predicate() { // from class: com.android.launcher3.model.y
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$bindUpdatedWorkspaceItems$1;
                switch (r1) {
                    case 0:
                        lambda$bindUpdatedWorkspaceItems$1 = BaseModelUpdateTask.lambda$bindUpdatedWorkspaceItems$1((WorkspaceItemInfo) obj);
                        return lambda$bindUpdatedWorkspaceItems$1;
                    default:
                        return Objects.nonNull((BgDataModel.FixedContainerItems) obj);
                }
            }
        }).forEach(new Consumer() { // from class: com.android.launcher3.model.B
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                BaseModelUpdateTask.this.bindExtraContainerItems((BgDataModel.FixedContainerItems) obj);
            }
        });
    }

    public void deleteAndBindComponentsRemoved(Predicate predicate, String str) {
        getModelWriter().deleteItemsFromDatabase(predicate, str);
        scheduleCallbackTask(new C0398x(4, predicate));
    }

    public abstract void execute(LauncherAppState launcherAppState, BgDataModel bgDataModel, AllAppsList allAppsList);

    public ModelWriter getModelWriter() {
        return this.mModel.getWriter(false, false, CellPosMapper.DEFAULT, null);
    }

    @Override // com.android.launcher3.LauncherModel.ModelUpdateTask
    public void init(LauncherAppState launcherAppState, LauncherModel launcherModel, BgDataModel bgDataModel, AllAppsList allAppsList, Executor executor) {
        this.mApp = launcherAppState;
        this.mModel = launcherModel;
        this.mDataModel = bgDataModel;
        this.mAllAppsList = allAppsList;
        this.mUiExecutor = executor;
    }

    @Override // java.lang.Runnable
    public final void run() {
        LauncherModel launcherModel = this.mModel;
        Objects.requireNonNull(launcherModel);
        if (launcherModel.isModelLoaded()) {
            execute(this.mApp, this.mDataModel, this.mAllAppsList);
        }
    }

    public final void scheduleCallbackTask(final LauncherModel.CallbackTask callbackTask) {
        BgDataModel.Callbacks[] callbacks;
        for (final BgDataModel.Callbacks callbacks2 : this.mModel.getCallbacks()) {
            this.mUiExecutor.execute(new Runnable() { // from class: com.android.launcher3.model.C
                @Override // java.lang.Runnable
                public final void run() {
                    LauncherModel.CallbackTask.this.execute(callbacks2);
                }
            });
        }
    }
}
