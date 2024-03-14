package com.android.launcher3.model.data;

import android.appwidget.AppWidgetHostView;
import android.content.ComponentName;
import android.content.Intent;
import android.os.Process;
import com.android.launcher3.Launcher;
import com.android.launcher3.logger.LauncherAtom$Attribute;
import com.android.launcher3.logger.LauncherAtom$ItemInfo;
import com.android.launcher3.logger.LauncherAtom$Widget;
import com.android.launcher3.util.ContentWriter;
import com.android.launcher3.widget.util.WidgetSizes;
/* loaded from: classes.dex */
public final class LauncherAppWidgetInfo extends ItemInfo {
    public int appWidgetId;
    public Intent bindOptions;
    public int installProgress;
    private boolean mHasNotifiedInitialWidgetSizeChanged;
    public int options;
    public PackageItemInfo pendingItemInfo;
    public ComponentName providerName;
    public int restoreStatus;
    public int sourceContainer;
    private int widgetFeatures;

    public LauncherAppWidgetInfo(int i4, ComponentName componentName) {
        this.installProgress = -1;
        this.sourceContainer = -1;
        this.appWidgetId = i4;
        this.providerName = componentName;
        if (i4 <= -100) {
            this.itemType = 5;
        } else {
            this.itemType = 4;
        }
        this.spanX = -1;
        this.spanY = -1;
        this.widgetFeatures = -1;
        this.user = Process.myUserHandle();
        this.restoreStatus = 0;
    }

    public static LauncherAtom$Attribute getAttribute(int i4) {
        if (i4 != -105) {
            if (i4 != -104) {
                switch (i4) {
                    case -113:
                        return LauncherAtom$Attribute.PINITEM;
                    case -112:
                        return LauncherAtom$Attribute.WIDGETS_BOTTOM_TRAY;
                    case -111:
                        return LauncherAtom$Attribute.WIDGETS_TRAY_PREDICTION;
                    default:
                        return LauncherAtom$Attribute.UNKNOWN;
                }
            }
            return LauncherAtom$Attribute.ALL_APPS_SEARCH_RESULT_WIDGETS;
        }
        return LauncherAtom$Attribute.WIDGETS;
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public final LauncherAtom$ItemInfo buildProto(FolderInfo folderInfo) {
        LauncherAtom$ItemInfo buildProto = super.buildProto(folderInfo);
        LauncherAtom$ItemInfo.Builder builder = (LauncherAtom$ItemInfo.Builder) buildProto.toBuilder$1();
        LauncherAtom$Widget.Builder builder2 = (LauncherAtom$Widget.Builder) buildProto.getWidget().toBuilder$1();
        builder2.setWidgetFeatures(this.widgetFeatures);
        builder.setWidget(builder2);
        builder.addItemAttributes(getAttribute(this.sourceContainer));
        return (LauncherAtom$ItemInfo) builder.build();
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public final String dumpProperties() {
        return super.dumpProperties() + " providerName=" + this.providerName + " appWidgetId=" + this.appWidgetId;
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public final ComponentName getTargetComponent() {
        return this.providerName;
    }

    public final boolean hasRestoreFlag(int i4) {
        return (this.restoreStatus & i4) == i4;
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public final void onAddToDatabase(ContentWriter contentWriter) {
        super.onAddToDatabase(contentWriter);
        contentWriter.put("appWidgetId", Integer.valueOf(this.appWidgetId));
        contentWriter.put("appWidgetProvider", this.providerName.flattenToString());
        contentWriter.put("restored", Integer.valueOf(this.restoreStatus));
        contentWriter.put("options", Integer.valueOf(this.options));
        contentWriter.put(this.bindOptions);
        contentWriter.put("appWidgetSource", Integer.valueOf(this.sourceContainer));
    }

    public final void onBindAppWidget(Launcher launcher, AppWidgetHostView appWidgetHostView) {
        if (this.mHasNotifiedInitialWidgetSizeChanged) {
            return;
        }
        WidgetSizes.updateWidgetSizeRanges(appWidgetHostView, launcher, this.spanX, this.spanY);
        this.mHasNotifiedInitialWidgetSizeChanged = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0037, code lost:
        if (((com.android.launcher3.Utilities.ATLEAST_P ? ((android.appwidget.AppWidgetProviderInfo) r6).widgetFeatures : 0) & 4) != 0) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x001b  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x006d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public LauncherAppWidgetInfo(int r4, android.content.ComponentName r5, com.android.launcher3.widget.LauncherAppWidgetProviderInfo r6, android.appwidget.AppWidgetHostView r7) {
        /*
            r3 = this;
            r3.<init>(r4, r5)
            android.content.ComponentName r4 = r6.configure
            r5 = 1
            r0 = 0
            if (r4 == 0) goto L16
            boolean r1 = com.android.launcher3.Utilities.ATLEAST_P
            if (r1 == 0) goto L10
            int r1 = r6.widgetFeatures
            goto L11
        L10:
            r1 = r0
        L11:
            r1 = r1 & r5
            if (r1 == 0) goto L16
            r1 = r5
            goto L17
        L16:
            r1 = r0
        L17:
            boolean r2 = com.android.launcher3.Utilities.ATLEAST_S
            if (r2 == 0) goto L3a
            if (r4 == 0) goto L2a
            boolean r4 = com.android.launcher3.Utilities.ATLEAST_P
            if (r4 == 0) goto L24
            int r4 = r6.widgetFeatures
            goto L25
        L24:
            r4 = r0
        L25:
            r4 = r4 & r5
            if (r4 == 0) goto L2a
            r4 = r5
            goto L2b
        L2a:
            r4 = r0
        L2b:
            if (r4 == 0) goto L3a
            boolean r4 = com.android.launcher3.Utilities.ATLEAST_P
            if (r4 == 0) goto L34
            int r4 = r6.widgetFeatures
            goto L35
        L34:
            r4 = r0
        L35:
            r4 = r4 & 4
            if (r4 == 0) goto L3a
            goto L3b
        L3a:
            r5 = r0
        L3b:
            if (r5 == 0) goto L3f
            r1 = r1 | 2
        L3f:
            if (r2 == 0) goto L47
            int r4 = r6.previewLayout
            if (r4 == 0) goto L47
            r1 = r1 | 4
        L47:
            if (r2 == 0) goto L4d
            int r4 = r6.targetCellWidth
            if (r4 > 0) goto L51
        L4d:
            int r4 = r6.targetCellHeight
            if (r4 <= 0) goto L53
        L51:
            r1 = r1 | 8
        L53:
            int r4 = r6.minResizeWidth
            if (r4 > 0) goto L5b
            int r4 = r6.minResizeHeight
            if (r4 <= 0) goto L5d
        L5b:
            r1 = r1 | 16
        L5d:
            if (r2 == 0) goto L63
            int r4 = r6.maxResizeWidth
            if (r4 > 0) goto L67
        L63:
            int r4 = r6.maxResizeHeight
            if (r4 <= 0) goto L69
        L67:
            r1 = r1 | 32
        L69:
            boolean r4 = r7 instanceof com.android.launcher3.widget.LauncherAppWidgetHostView
            if (r4 == 0) goto L77
            com.android.launcher3.widget.LauncherAppWidgetHostView r7 = (com.android.launcher3.widget.LauncherAppWidgetHostView) r7
            boolean r4 = r7.getClipToOutline()
            if (r4 == 0) goto L77
            r1 = r1 | 64
        L77:
            r3.widgetFeatures = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.model.data.LauncherAppWidgetInfo.<init>(int, android.content.ComponentName, com.android.launcher3.widget.LauncherAppWidgetProviderInfo, android.appwidget.AppWidgetHostView):void");
    }

    public LauncherAppWidgetInfo() {
        this.appWidgetId = -1;
        this.installProgress = -1;
        this.sourceContainer = -1;
        this.itemType = 4;
    }
}
