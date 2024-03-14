package com.android.launcher3.model;

import android.app.prediction.AppTarget;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.LauncherActivityInfo;
import android.content.pm.LauncherApps;
import android.content.pm.ShortcutInfo;
import android.os.UserHandle;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherPrefs;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.model.QuickstepModelDelegate;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.quickstep.InstantAppResolverImpl;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.stream.Collectors;
/* loaded from: classes.dex */
public final class PredictionUpdateTask extends BaseModelUpdateTask {
    private final QuickstepModelDelegate.PredictorState mPredictorState;
    private final List mTargets;

    public PredictionUpdateTask(QuickstepModelDelegate.PredictorState predictorState, List list) {
        this.mPredictorState = predictorState;
        this.mTargets = list;
    }

    @Override // com.android.launcher3.model.BaseModelUpdateTask
    public final void execute(final LauncherAppState launcherAppState, final BgDataModel bgDataModel, AllAppsList allAppsList) {
        WorkspaceItemInfo workspaceItemInfo;
        final Context context = launcherAppState.getContext();
        LauncherPrefs.getDevicePrefs(context).edit().putBoolean("last_prediction_enabled_state", !this.mTargets.isEmpty()).apply();
        Set set = (Set) ((BgDataModel.FixedContainerItems) bgDataModel.extraItems.get(this.mPredictorState.containerId)).items.stream().filter(new K0()).map(new L0()).collect(Collectors.toSet());
        ArrayList arrayList = new ArrayList(this.mTargets.size());
        for (AppTarget appTarget : this.mTargets) {
            ShortcutInfo shortcutInfo = appTarget.getShortcutInfo();
            if (shortcutInfo != null) {
                set.add(shortcutInfo.getUserHandle());
                workspaceItemInfo = new WorkspaceItemInfo(context, shortcutInfo);
                launcherAppState.getIconCache().getShortcutIcon(workspaceItemInfo, shortcutInfo);
            } else {
                String className = appTarget.getClassName();
                if (!InstantAppResolverImpl.COMPONENT_CLASS_MARKER.equals(className)) {
                    final ComponentName componentName = new ComponentName(appTarget.getPackageName(), className);
                    final UserHandle user = appTarget.getUser();
                    workspaceItemInfo = (WorkspaceItemInfo) allAppsList.data.stream().filter(new Predicate() { // from class: com.android.launcher3.model.M0
                        @Override // java.util.function.Predicate
                        public final boolean test(Object obj) {
                            AppInfo appInfo = (AppInfo) obj;
                            return user.equals(appInfo.user) && componentName.equals(appInfo.componentName);
                        }
                    }).map(new Function() { // from class: com.android.launcher3.model.N0
                        @Override // java.util.function.Function
                        public final Object apply(Object obj) {
                            LauncherAppState launcherAppState2 = LauncherAppState.this;
                            Context context2 = context;
                            AppInfo appInfo = (AppInfo) obj;
                            launcherAppState2.getIconCache().getTitleAndIcon(appInfo, false);
                            return appInfo.makeWorkspaceItem(context2);
                        }
                    }).findAny().orElseGet(new Supplier() { // from class: com.android.launcher3.model.O0
                        @Override // java.util.function.Supplier
                        public final Object get() {
                            Context context2 = context;
                            ComponentName componentName2 = componentName;
                            UserHandle userHandle = user;
                            LauncherAppState launcherAppState2 = launcherAppState;
                            LauncherActivityInfo resolveActivity = ((LauncherApps) context2.getSystemService(LauncherApps.class)).resolveActivity(AppInfo.makeLaunchIntent(componentName2), userHandle);
                            if (resolveActivity == null) {
                                return null;
                            }
                            AppInfo appInfo = new AppInfo(context2, resolveActivity, userHandle);
                            launcherAppState2.getIconCache().getTitleAndIcon(appInfo, resolveActivity, false);
                            return appInfo.makeWorkspaceItem(context2);
                        }
                    });
                    if (workspaceItemInfo == null) {
                    }
                }
            }
            workspaceItemInfo.container = this.mPredictorState.containerId;
            arrayList.add(workspaceItemInfo);
        }
        int i4 = this.mPredictorState.containerId;
        BgDataModel.FixedContainerItems fixedContainerItems = new BgDataModel.FixedContainerItems(i4, arrayList);
        bgDataModel.extraItems.put(i4, fixedContainerItems);
        bindExtraContainerItems(fixedContainerItems);
        set.forEach(new Consumer() { // from class: com.android.launcher3.model.P0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                BgDataModel.this.updateShortcutPinnedState(launcherAppState.getContext(), (UserHandle) obj);
            }
        });
        this.mPredictorState.storage.write(context, fixedContainerItems.items);
    }
}
