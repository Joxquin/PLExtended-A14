package com.android.launcher3.model;

import android.app.StatsManager;
import android.app.prediction.AppPredictionContext;
import android.app.prediction.AppPredictionManager;
import android.app.prediction.AppPredictor;
import android.app.prediction.AppTarget;
import android.app.prediction.AppTargetEvent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.LauncherActivityInfo;
import android.content.pm.LauncherApps;
import android.content.pm.ShortcutInfo;
import android.os.Bundle;
import android.os.Parcelable;
import android.os.UserHandle;
import android.util.Log;
import android.util.LongSparseArray;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherPrefs;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.logger.LauncherAtom$ItemInfo;
import com.android.launcher3.logging.InstanceId;
import com.android.launcher3.logging.InstanceIdSequence;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.shortcuts.ShortcutKey;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.IntSparseArrayMap;
import com.android.launcher3.util.LooperExecutor;
import com.android.launcher3.util.PersistedItemArray;
import com.android.quickstep.logging.SettingsChangeLogger;
import com.android.quickstep.logging.StatsLogCompatManager;
import com.android.systemui.shared.system.SysUiStatsLog;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.Function;
import java.util.function.IntPredicate;
import java.util.function.LongFunction;
import java.util.function.ObjIntConsumer;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import java.util.stream.IntStream;
/* loaded from: classes.dex */
public class QuickstepModelDelegate extends ModelDelegate {
    private final AppEventProducer mAppEventProducer;
    private final Context mContext;
    private final InvariantDeviceProfile mIDP;
    private final StatsManager mStatsManager;
    final PredictorState mAllAppsState = new PredictorState(-102, "all_apps_predictions");
    final PredictorState mHotseatState = new PredictorState(-103, "hotseat_predictions");
    final PredictorState mWidgetsRecommendationState = new PredictorState(-111, "widgets_prediction");
    protected boolean mActive = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class PredictorState {
        public final int containerId;
        private List mLastTargets = Collections.emptyList();
        public AppPredictor predictor;
        public final PersistedItemArray storage;

        public PredictorState(int i4, String str) {
            this.containerId = i4;
            this.storage = new PersistedItemArray(str);
        }

        public final boolean setTargets(final List list) {
            final List list2 = this.mLastTargets;
            this.mLastTargets = list;
            int size = list2.size();
            return size == list.size() && IntStream.range(0, size).allMatch(new IntPredicate() { // from class: com.android.launcher3.model.Z0
                @Override // java.util.function.IntPredicate
                public final boolean test(int i4) {
                    List list3 = list2;
                    List list4 = list;
                    AppTarget appTarget = (AppTarget) list3.get(i4);
                    AppTarget appTarget2 = (AppTarget) list4.get(i4);
                    if (Objects.equals(appTarget.getPackageName(), appTarget2.getPackageName()) && Objects.equals(appTarget.getUser(), appTarget2.getUser()) && Objects.equals(appTarget.getClassName(), appTarget2.getClassName())) {
                        ShortcutInfo shortcutInfo = appTarget.getShortcutInfo();
                        ShortcutInfo shortcutInfo2 = appTarget2.getShortcutInfo();
                        if (shortcutInfo == null ? shortcutInfo2 == null : shortcutInfo2 != null && Objects.equals(shortcutInfo.getId(), shortcutInfo2.getId())) {
                            return true;
                        }
                    }
                    return false;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class WorkspaceItemFactory implements PersistedItemArray.ItemFactory {
        private final LauncherAppState mAppState;
        private final int mContainer;
        private final int mMaxCount;
        private final Map mPinnedShortcuts;
        private int mReadCount = 0;
        private final UserManagerState mUMS;

        public WorkspaceItemFactory(LauncherAppState launcherAppState, UserManagerState userManagerState, Map map, int i4, int i5) {
            this.mAppState = launcherAppState;
            this.mUMS = userManagerState;
            this.mPinnedShortcuts = map;
            this.mMaxCount = i4;
            this.mContainer = i5;
        }

        @Override // com.android.launcher3.util.PersistedItemArray.ItemFactory
        public final ItemInfo createInfo(int i4, UserHandle userHandle, Intent intent) {
            if (this.mReadCount >= this.mMaxCount) {
                return null;
            }
            int i5 = this.mContainer;
            LauncherAppState launcherAppState = this.mAppState;
            if (i4 == 0) {
                LauncherActivityInfo resolveActivity = ((LauncherApps) launcherAppState.getContext().getSystemService(LauncherApps.class)).resolveActivity(intent, userHandle);
                if (resolveActivity == null) {
                    return null;
                }
                AppInfo appInfo = new AppInfo(resolveActivity, userHandle, this.mUMS.isUserQuiet(userHandle));
                appInfo.container = i5;
                launcherAppState.getIconCache().getTitleAndIcon(appInfo, resolveActivity, false);
                this.mReadCount++;
                return appInfo.makeWorkspaceItem(launcherAppState.getContext());
            } else if (i4 != 6) {
                return null;
            } else {
                ShortcutInfo shortcutInfo = (ShortcutInfo) this.mPinnedShortcuts.get(ShortcutKey.fromIntent(intent, userHandle));
                if (shortcutInfo == null) {
                    return null;
                }
                WorkspaceItemInfo workspaceItemInfo = new WorkspaceItemInfo(launcherAppState.getContext(), shortcutInfo);
                workspaceItemInfo.container = i5;
                launcherAppState.getIconCache().getShortcutIcon(workspaceItemInfo, shortcutInfo);
                this.mReadCount++;
                return workspaceItemInfo;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [com.android.launcher3.model.R0] */
    public QuickstepModelDelegate(Context context) {
        this.mContext = context;
        AppEventProducer appEventProducer = new AppEventProducer(context, new ObjIntConsumer() { // from class: com.android.launcher3.model.R0
            @Override // java.util.function.ObjIntConsumer
            public final void accept(Object obj, int i4) {
                QuickstepModelDelegate.this.onAppTargetEvent((AppTargetEvent) obj, i4);
            }
        });
        this.mAppEventProducer = appEventProducer;
        this.mIDP = (InvariantDeviceProfile) InvariantDeviceProfile.INSTANCE.get(context);
        StatsLogCompatManager.LOGS_CONSUMER.add(appEventProducer);
        this.mStatsManager = (StatsManager) context.getSystemService(StatsManager.class);
    }

    public static /* synthetic */ void a(QuickstepModelDelegate quickstepModelDelegate, List list) {
        IntSparseArrayMap clone;
        quickstepModelDelegate.getClass();
        InstanceId newInstanceId = new InstanceIdSequence().newInstanceId();
        synchronized (quickstepModelDelegate.mDataModel) {
            clone = quickstepModelDelegate.mDataModel.itemsIdMap.clone();
        }
        Iterator it = clone.iterator();
        while (it.hasNext()) {
            ItemInfo itemInfo = (ItemInfo) it.next();
            LauncherAtom$ItemInfo buildProto = itemInfo.buildProto(getContainer(itemInfo, clone));
            Log.d("QuickstepModelDelegate", buildProto.toString());
            list.add(StatsLogCompatManager.buildStatsEvent(buildProto, newInstanceId));
        }
        Log.d("QuickstepModelDelegate", String.format("Successfully logged %d workspace items with instanceId=%d", Integer.valueOf(clone.size()), Integer.valueOf(newInstanceId.getId())));
        quickstepModelDelegate.additionalSnapshotEvents(newInstanceId);
        ((SettingsChangeLogger) SettingsChangeLogger.INSTANCE.get(quickstepModelDelegate.mContext)).logSnapshot(newInstanceId);
    }

    private static FolderInfo getContainer(ItemInfo itemInfo, IntSparseArrayMap intSparseArrayMap) {
        int i4 = itemInfo.container;
        if (i4 > 0) {
            ItemInfo itemInfo2 = (ItemInfo) intSparseArrayMap.get(i4);
            if (!(itemInfo2 instanceof FolderInfo)) {
                Log.e("QuickstepModelDelegate", String.format("Item info: %s found with invalid container: %s", itemInfo, itemInfo2));
            }
            return (FolderInfo) itemInfo2;
        }
        return null;
    }

    private void loadAndBindItems(UserManagerState userManagerState, Map map, BgDataModel.Callbacks[] callbacksArr, int i4, PredictorState predictorState) {
        LauncherAppState launcherAppState = this.mApp;
        int i5 = predictorState.containerId;
        WorkspaceItemFactory workspaceItemFactory = new WorkspaceItemFactory(launcherAppState, userManagerState, map, i4, i5);
        Context context = launcherAppState.getContext();
        final LongSparseArray longSparseArray = userManagerState.allUsers;
        Objects.requireNonNull(longSparseArray);
        BgDataModel.FixedContainerItems fixedContainerItems = new BgDataModel.FixedContainerItems(i5, predictorState.storage.read(context, workspaceItemFactory, new LongFunction() { // from class: com.android.launcher3.model.Y0
            @Override // java.util.function.LongFunction
            public final Object apply(long j4) {
                return (UserHandle) longSparseArray.get(j4);
            }
        }));
        if (FeatureFlags.CHANGE_MODEL_DELEGATE_LOADING_ORDER.get()) {
            Executors.MAIN_EXECUTOR.execute(new S0(callbacksArr, fixedContainerItems, 1));
        }
        this.mDataModel.extraItems.put(predictorState.containerId, fixedContainerItems);
    }

    private void registerHotseatPredictor(AppPredictionManager appPredictionManager, Context context) {
        PredictorState predictorState = this.mHotseatState;
        AppPredictionContext.Builder predictedTargetCount = new AppPredictionContext.Builder(context).setUiSurface("hotseat").setPredictedTargetCount(this.mIDP.numDatabaseHotseatIcons);
        BgDataModel bgDataModel = this.mDataModel;
        Bundle bundle = new Bundle();
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        Iterator it = bgDataModel.getAllWorkspaceItems().iterator();
        while (it.hasNext()) {
            ItemInfo itemInfo = (ItemInfo) it.next();
            AppTarget appTargetFromItemInfo = PredictionHelper.getAppTargetFromItemInfo(context, itemInfo);
            if (appTargetFromItemInfo != null) {
                int i4 = itemInfo.container;
                if (!(i4 == -101 || (i4 == -100 && itemInfo.screenId == 0))) {
                }
            }
            arrayList.add(PredictionHelper.wrapAppTargetWithItemLocation(appTargetFromItemInfo, itemInfo));
        }
        ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>();
        BgDataModel.FixedContainerItems fixedContainerItems = (BgDataModel.FixedContainerItems) bgDataModel.extraItems.get(-103);
        if (fixedContainerItems != null) {
            for (ItemInfo itemInfo2 : fixedContainerItems.items) {
                AppTarget appTargetFromItemInfo2 = PredictionHelper.getAppTargetFromItemInfo(context, itemInfo2);
                if (appTargetFromItemInfo2 != null) {
                    arrayList2.add(appTargetFromItemInfo2);
                }
            }
        }
        bundle.putParcelableArrayList("pin_events", arrayList);
        bundle.putParcelableArrayList("current_items", arrayList2);
        AppPredictor createAppPredictionSession = appPredictionManager.createAppPredictionSession(predictedTargetCount.setExtras(bundle).build());
        predictorState.setTargets(Collections.emptyList());
        predictorState.predictor = createAppPredictionSession;
        createAppPredictionSession.registerPredictionUpdates(Executors.MODEL_EXECUTOR, new Q0(this, predictorState));
        predictorState.predictor.requestPredictionUpdate();
    }

    public void additionalSnapshotEvents(InstanceId instanceId) {
    }

    @Override // com.android.launcher3.model.ModelDelegate
    public final void bindAllModelExtras(BgDataModel.Callbacks[] callbacksArr) {
        IntSparseArrayMap clone;
        synchronized (this.mDataModel.extraItems) {
            clone = this.mDataModel.extraItems.clone();
        }
        Executors.MAIN_EXECUTOR.execute(new S0(callbacksArr, clone, 0));
    }

    @Override // com.android.launcher3.model.ModelDelegate
    public void destroy() {
        this.mActive = false;
        StatsLogCompatManager.LOGS_CONSUMER.remove(this.mAppEventProducer);
        if (this.mIsPrimaryInstance) {
            this.mStatsManager.clearPullAtomCallback((int) SysUiStatsLog.LAUNCHER_LAYOUT_SNAPSHOT);
        }
        PredictorState predictorState = this.mAllAppsState;
        AppPredictor appPredictor = predictorState.predictor;
        if (appPredictor != null) {
            appPredictor.destroy();
            predictorState.predictor = null;
        }
        PredictorState predictorState2 = this.mHotseatState;
        AppPredictor appPredictor2 = predictorState2.predictor;
        if (appPredictor2 != null) {
            appPredictor2.destroy();
            predictorState2.predictor = null;
        }
        PredictorState predictorState3 = this.mWidgetsRecommendationState;
        AppPredictor appPredictor3 = predictorState3.predictor;
        if (appPredictor3 != null) {
            appPredictor3.destroy();
            predictorState3.predictor = null;
        }
    }

    @Override // com.android.launcher3.model.ModelDelegate
    public final void loadAndBindAllAppsItems(UserManagerState userManagerState, BgDataModel.Callbacks[] callbacksArr, Map map) {
        loadAndBindItems(userManagerState, map, callbacksArr, this.mIDP.numDatabaseAllAppsColumns, this.mAllAppsState);
    }

    @Override // com.android.launcher3.model.ModelDelegate
    public void loadAndBindOtherItems(BgDataModel.Callbacks[] callbacksArr) {
        BgDataModel.FixedContainerItems fixedContainerItems = new BgDataModel.FixedContainerItems(this.mWidgetsRecommendationState.containerId, new ArrayList());
        this.mDataModel.extraItems.put(this.mWidgetsRecommendationState.containerId, fixedContainerItems);
        Executors.MAIN_EXECUTOR.execute(new S0(callbacksArr, fixedContainerItems, 1));
        this.mDataModel.stringCache.loadStrings(super.mContext);
    }

    @Override // com.android.launcher3.model.ModelDelegate
    public void loadAndBindWorkspaceItems(UserManagerState userManagerState, BgDataModel.Callbacks[] callbacksArr, Map map) {
        loadAndBindItems(userManagerState, map, callbacksArr, this.mIDP.numDatabaseHotseatIcons, this.mHotseatState);
    }

    @Override // com.android.launcher3.model.ModelDelegate
    public final void markActive() {
        this.mActive = true;
    }

    @Override // com.android.launcher3.model.ModelDelegate
    public final void modelLoadComplete() {
        IntSparseArrayMap clone;
        SharedPreferences devicePrefs = LauncherPrefs.getDevicePrefs(this.mApp.getContext());
        long j4 = devicePrefs.getLong("LAST_SNAPSHOT_TIME_MILLIS", 0L);
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - j4 >= 86400000) {
            synchronized (this.mDataModel) {
                clone = this.mDataModel.itemsIdMap.clone();
            }
            InstanceId newInstanceId = new InstanceIdSequence().newInstanceId();
            Iterator it = clone.iterator();
            while (it.hasNext()) {
                ItemInfo itemInfo = (ItemInfo) it.next();
                StatsLogCompatManager.writeSnapshot(itemInfo.buildProto(getContainer(itemInfo, clone)), newInstanceId);
            }
            additionalSnapshotEvents(newInstanceId);
            devicePrefs.edit().putLong("LAST_SNAPSHOT_TIME_MILLIS", currentTimeMillis).apply();
        }
        if (this.mIsPrimaryInstance) {
            StatsManager statsManager = this.mStatsManager;
            if (statsManager == null) {
                Log.d("QuickstepModelDelegate", "Failed to get StatsManager");
            }
            try {
                statsManager.setPullAtomCallback((int) SysUiStatsLog.LAUNCHER_LAYOUT_SNAPSHOT, (StatsManager.PullAtomMetadata) null, Executors.MODEL_EXECUTOR, new StatsManager.StatsPullAtomCallback() { // from class: com.android.launcher3.model.X0
                    public final int onPullAtom(int i4, List list) {
                        QuickstepModelDelegate.a(QuickstepModelDelegate.this, list);
                        return 0;
                    }
                });
                Log.d("QuickstepModelDelegate", "Successfully registered for launcher snapshot logging!");
            } catch (RuntimeException e4) {
                Log.e("QuickstepModelDelegate", "Failed to register launcher snapshot logging callback with StatsManager", e4);
            }
        }
    }

    public void onAppTargetEvent(AppTargetEvent appTargetEvent, int i4) {
        PredictorState predictorState = i4 != -111 ? i4 != -102 ? this.mHotseatState : this.mAllAppsState : this.mWidgetsRecommendationState;
        AppPredictor appPredictor = predictorState.predictor;
        if (appPredictor != null) {
            appPredictor.notifyAppTargetEvent(appTargetEvent);
            Log.d("QuickstepModelDelegate", "notifyAppTargetEvent action=" + appTargetEvent.getAction() + " launchLocation=" + appTargetEvent.getLaunchLocation());
            if (predictorState == this.mHotseatState) {
                if (appTargetEvent.getAction() == 3 || appTargetEvent.getAction() == 4) {
                    PredictorState predictorState2 = this.mHotseatState;
                    AppPredictor appPredictor2 = predictorState2.predictor;
                    if (appPredictor2 != null) {
                        appPredictor2.destroy();
                        predictorState2.predictor = null;
                    }
                    if (this.mActive) {
                        Context context = this.mApp.getContext();
                        AppPredictionManager appPredictionManager = (AppPredictionManager) context.getSystemService(AppPredictionManager.class);
                        if (appPredictionManager == null) {
                            return;
                        }
                        registerHotseatPredictor(appPredictionManager, context);
                    }
                }
            }
        }
    }

    @Override // com.android.launcher3.model.ModelDelegate
    public void validateData() {
        super.validateData();
        AppPredictor appPredictor = this.mAllAppsState.predictor;
        if (appPredictor != null) {
            appPredictor.requestPredictionUpdate();
        }
        AppPredictor appPredictor2 = this.mWidgetsRecommendationState.predictor;
        if (appPredictor2 != null) {
            appPredictor2.requestPredictionUpdate();
        }
    }

    @Override // com.android.launcher3.model.ModelDelegate
    public void workspaceLoadComplete() {
        PredictorState predictorState = this.mAllAppsState;
        AppPredictor appPredictor = predictorState.predictor;
        if (appPredictor != null) {
            appPredictor.destroy();
            predictorState.predictor = null;
        }
        PredictorState predictorState2 = this.mHotseatState;
        AppPredictor appPredictor2 = predictorState2.predictor;
        if (appPredictor2 != null) {
            appPredictor2.destroy();
            predictorState2.predictor = null;
        }
        PredictorState predictorState3 = this.mWidgetsRecommendationState;
        AppPredictor appPredictor3 = predictorState3.predictor;
        if (appPredictor3 != null) {
            appPredictor3.destroy();
            predictorState3.predictor = null;
        }
        if (this.mActive) {
            final Context context = this.mApp.getContext();
            AppPredictionManager appPredictionManager = (AppPredictionManager) context.getSystemService(AppPredictionManager.class);
            if (appPredictionManager == null) {
                return;
            }
            PredictorState predictorState4 = this.mAllAppsState;
            AppPredictor createAppPredictionSession = appPredictionManager.createAppPredictionSession(new AppPredictionContext.Builder(context).setUiSurface("home").setPredictedTargetCount(this.mIDP.numDatabaseAllAppsColumns).build());
            predictorState4.setTargets(Collections.emptyList());
            predictorState4.predictor = createAppPredictionSession;
            LooperExecutor looperExecutor = Executors.MODEL_EXECUTOR;
            createAppPredictionSession.registerPredictionUpdates(looperExecutor, new Q0(this, predictorState4));
            predictorState4.predictor.requestPredictionUpdate();
            registerHotseatPredictor(appPredictionManager, context);
            AppPredictionContext.Builder uiSurface = new AppPredictionContext.Builder(context).setUiSurface("widgets");
            BgDataModel bgDataModel = this.mDataModel;
            Bundle bundle = new Bundle();
            bundle.putParcelableArrayList("added_app_widgets", (ArrayList) bgDataModel.getAllWorkspaceItems().stream().filter(new Predicate() { // from class: com.android.launcher3.model.U0
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    switch (r1) {
                        case 0:
                            ItemInfo itemInfo = (ItemInfo) obj;
                            return itemInfo.itemType == 4 && itemInfo.container == -100;
                        default:
                            return Objects.nonNull((AppTargetEvent) obj);
                    }
                }
            }).map(new Function() { // from class: com.android.launcher3.model.V0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    ItemInfo itemInfo = (ItemInfo) obj;
                    AppTarget appTargetFromItemInfo = PredictionHelper.getAppTargetFromItemInfo(context, itemInfo);
                    if (appTargetFromItemInfo == null) {
                        return null;
                    }
                    return PredictionHelper.wrapAppTargetWithItemLocation(appTargetFromItemInfo, itemInfo);
                }
            }).filter(new Predicate() { // from class: com.android.launcher3.model.U0
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    switch (r1) {
                        case 0:
                            ItemInfo itemInfo = (ItemInfo) obj;
                            return itemInfo.itemType == 4 && itemInfo.container == -100;
                        default:
                            return Objects.nonNull((AppTargetEvent) obj);
                    }
                }
            }).collect(Collectors.toCollection(new W0())));
            AppPredictor createAppPredictionSession2 = appPredictionManager.createAppPredictionSession(uiSurface.setExtras(bundle).setPredictedTargetCount(20).build());
            this.mWidgetsRecommendationState.predictor = createAppPredictionSession2;
            createAppPredictionSession2.registerPredictionUpdates(looperExecutor, new AppPredictor.Callback() { // from class: com.android.launcher3.model.T0
                public final void onTargetsAvailable(List list) {
                    QuickstepModelDelegate quickstepModelDelegate = QuickstepModelDelegate.this;
                    if (quickstepModelDelegate.mWidgetsRecommendationState.setTargets(list)) {
                        return;
                    }
                    quickstepModelDelegate.mApp.getModel().enqueueModelUpdateTask(new WidgetsPredictionUpdateTask(quickstepModelDelegate.mWidgetsRecommendationState, list));
                }
            });
            this.mWidgetsRecommendationState.predictor.requestPredictionUpdate();
        }
    }
}
