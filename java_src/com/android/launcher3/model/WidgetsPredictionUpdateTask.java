package com.android.launcher3.model;

import android.app.prediction.AppTarget;
import android.text.TextUtils;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.model.QuickstepModelDelegate;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.widget.PendingAddWidgetInfo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
/* loaded from: classes.dex */
public final class WidgetsPredictionUpdateTask extends BaseModelUpdateTask {
    private final QuickstepModelDelegate.PredictorState mPredictorState;
    private final List mTargets;

    public WidgetsPredictionUpdateTask(QuickstepModelDelegate.PredictorState predictorState, List list) {
        this.mPredictorState = predictorState;
        this.mTargets = list;
    }

    @Override // com.android.launcher3.model.BaseModelUpdateTask
    public final void execute(LauncherAppState launcherAppState, BgDataModel bgDataModel, AllAppsList allAppsList) {
        WidgetItem widgetItem;
        final Set set = (Set) bgDataModel.appWidgets.stream().map(new Function() { // from class: com.android.launcher3.model.v1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                switch (r1) {
                    case 0:
                        LauncherAppWidgetInfo launcherAppWidgetInfo = (LauncherAppWidgetInfo) obj;
                        return new ComponentKey(launcherAppWidgetInfo.providerName, launcherAppWidgetInfo.user);
                    default:
                        return new PendingAddWidgetInfo(((WidgetItem) obj).widgetInfo, -111);
                }
            }
        }).collect(Collectors.toSet());
        Predicate predicate = new Predicate() { // from class: com.android.launcher3.model.w1
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                switch (r1) {
                    case 0:
                        return !((Set) set).contains((WidgetItem) obj);
                    default:
                        return ((String) set).equals(((WidgetItem) obj).componentName.getClassName());
                }
            }
        };
        Map allWidgetsWithoutShortcuts = bgDataModel.widgetsModel.getAllWidgetsWithoutShortcuts();
        ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        for (AppTarget appTarget : this.mTargets) {
            List list = (List) ((HashMap) allWidgetsWithoutShortcuts).get(new PackageUserKey(appTarget.getPackageName(), appTarget.getUser()));
            if (list != null && !list.isEmpty()) {
                final String className = appTarget.getClassName();
                if (TextUtils.isEmpty(className) || (widgetItem = (WidgetItem) list.stream().filter(new Predicate() { // from class: com.android.launcher3.model.w1
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        switch (r1) {
                            case 0:
                                return !((Set) className).contains((WidgetItem) obj);
                            default:
                                return ((String) className).equals(((WidgetItem) obj).componentName.getClassName());
                        }
                    }
                }).filter(predicate).findFirst().orElse(null)) == null) {
                    list.stream().filter(predicate).findFirst().ifPresent(new Consumer() { // from class: com.android.launcher3.model.x1
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            arrayList2.add((WidgetItem) obj);
                        }
                    });
                } else {
                    arrayList.add(widgetItem);
                }
            }
        }
        if (arrayList.isEmpty()) {
            arrayList.addAll(arrayList2);
        }
        BgDataModel.FixedContainerItems fixedContainerItems = new BgDataModel.FixedContainerItems(this.mPredictorState.containerId, (List) arrayList.stream().map(new Function() { // from class: com.android.launcher3.model.v1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                switch (r1) {
                    case 0:
                        LauncherAppWidgetInfo launcherAppWidgetInfo = (LauncherAppWidgetInfo) obj;
                        return new ComponentKey(launcherAppWidgetInfo.providerName, launcherAppWidgetInfo.user);
                    default:
                        return new PendingAddWidgetInfo(((WidgetItem) obj).widgetInfo, -111);
                }
            }
        }).collect(Collectors.toList()));
        bgDataModel.extraItems.put(this.mPredictorState.containerId, fixedContainerItems);
        bindExtraContainerItems(fixedContainerItems);
    }
}
