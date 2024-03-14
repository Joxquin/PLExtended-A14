package com.android.launcher3.model;

import android.app.prediction.AppTarget;
import android.app.prediction.AppTargetEvent;
import android.app.prediction.AppTargetId;
import android.content.ComponentName;
import android.content.Context;
import com.android.launcher3.logger.LauncherAtom$ContainerInfo;
import com.android.launcher3.logger.LauncherAtom$ItemInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.shortcuts.ShortcutKey;
import java.util.Locale;
/* loaded from: classes.dex */
public final class PredictionHelper {
    public static AppTarget getAppTargetFromItemInfo(Context context, ItemInfo itemInfo) {
        ComponentName componentName;
        if (itemInfo == null) {
            return null;
        }
        int i4 = itemInfo.itemType;
        if (i4 == 4 && (itemInfo instanceof LauncherAppWidgetInfo) && (componentName = ((LauncherAppWidgetInfo) itemInfo).providerName) != null) {
            return new AppTarget.Builder(new AppTargetId("widget:" + componentName.getPackageName()), componentName.getPackageName(), itemInfo.user).setClassName(componentName.getClassName()).build();
        } else if (i4 == 0 && itemInfo.getTargetComponent() != null) {
            ComponentName targetComponent = itemInfo.getTargetComponent();
            return new AppTarget.Builder(new AppTargetId("app:" + targetComponent.getPackageName()), targetComponent.getPackageName(), itemInfo.user).setClassName(targetComponent.getClassName()).build();
        } else {
            int i5 = itemInfo.itemType;
            if (i5 == 6 && (itemInfo instanceof WorkspaceItemInfo)) {
                ShortcutKey fromItemInfo = ShortcutKey.fromItemInfo(itemInfo);
                StringBuilder sb = new StringBuilder("shortcut:");
                ComponentName componentName2 = fromItemInfo.componentName;
                sb.append(componentName2.getClassName());
                return new AppTarget.Builder(new AppTargetId(sb.toString()), componentName2.getPackageName(), fromItemInfo.user).build();
            } else if (i5 == 2) {
                return new AppTarget.Builder(new AppTargetId("folder:" + itemInfo.id), context.getPackageName(), itemInfo.user).build();
            } else {
                return null;
            }
        }
    }

    public static boolean isTrackedForHotseatPrediction(LauncherAtom$ItemInfo launcherAtom$ItemInfo) {
        LauncherAtom$ContainerInfo containerInfo = launcherAtom$ItemInfo.getContainerInfo();
        int ordinal = containerInfo.getContainerCase().ordinal();
        return ordinal != 0 ? ordinal == 1 : containerInfo.getWorkspace().getPageIndex() == 0;
    }

    public static AppTargetEvent wrapAppTargetWithItemLocation(AppTarget appTarget, ItemInfo itemInfo) {
        Locale locale = Locale.ENGLISH;
        Object[] objArr = new Object[6];
        objArr[0] = itemInfo.container == -101 ? "hotseat" : "workspace";
        objArr[1] = Integer.valueOf(itemInfo.screenId);
        objArr[2] = Integer.valueOf(itemInfo.cellX);
        objArr[3] = Integer.valueOf(itemInfo.cellY);
        objArr[4] = Integer.valueOf(itemInfo.spanX);
        objArr[5] = Integer.valueOf(itemInfo.spanY);
        return new AppTargetEvent.Builder(appTarget, 3).setLaunchLocation(String.format(locale, "%s/%d/[%d,%d]/[%d,%d]", objArr)).build();
    }
}
