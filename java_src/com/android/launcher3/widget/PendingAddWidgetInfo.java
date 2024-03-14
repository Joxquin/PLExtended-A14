package com.android.launcher3.widget;

import android.appwidget.AppWidgetHostView;
import android.appwidget.AppWidgetProviderInfo;
import android.os.Bundle;
import com.android.launcher3.PendingAddItemInfo;
import com.android.launcher3.logger.LauncherAtom$ItemInfo;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
/* loaded from: classes.dex */
public class PendingAddWidgetInfo extends PendingAddItemInfo {
    public Bundle bindOptions = null;
    public AppWidgetHostView boundWidget;
    public LauncherAppWidgetProviderInfo info;
    public int sourceContainer;

    public PendingAddWidgetInfo(LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfo, int i4) {
        if (((AppWidgetProviderInfo) launcherAppWidgetProviderInfo).provider.getClassName().startsWith("#custom-widget-")) {
            this.itemType = 5;
        } else {
            this.itemType = 4;
        }
        this.info = launcherAppWidgetProviderInfo;
        this.user = launcherAppWidgetProviderInfo.getProfile();
        this.componentName = ((AppWidgetProviderInfo) launcherAppWidgetProviderInfo).provider;
        this.spanX = launcherAppWidgetProviderInfo.spanX;
        this.spanY = launcherAppWidgetProviderInfo.spanY;
        this.minSpanX = launcherAppWidgetProviderInfo.minSpanX;
        this.minSpanY = launcherAppWidgetProviderInfo.minSpanY;
        this.container = i4;
        this.sourceContainer = i4;
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public final LauncherAtom$ItemInfo buildProto(FolderInfo folderInfo) {
        LauncherAtom$ItemInfo.Builder builder = (LauncherAtom$ItemInfo.Builder) super.buildProto(folderInfo).toBuilder$1();
        builder.addItemAttributes(LauncherAppWidgetInfo.getAttribute(this.sourceContainer));
        return (LauncherAtom$ItemInfo) builder.build();
    }

    public WidgetAddFlowHandler getHandler() {
        return new WidgetAddFlowHandler(this.info);
    }
}
