package com.android.launcher3.widget;

import android.appwidget.AppWidgetHostView;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProviderInfo;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import com.android.launcher3.DropTarget;
import com.android.launcher3.Launcher;
import com.android.launcher3.dragndrop.DragController;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.views.BaseDragLayer;
import com.android.launcher3.widget.util.WidgetSizes;
/* loaded from: classes.dex */
public final class WidgetHostViewLoader implements DragController.DragListener {
    final PendingAddWidgetInfo mInfo;
    Launcher mLauncher;
    final View mView;
    Runnable mInflateWidgetRunnable = null;
    private Runnable mBindWidgetRunnable = null;
    int mWidgetLoadingId = -1;
    Handler mHandler = new Handler();

    public WidgetHostViewLoader(Launcher launcher, View view) {
        this.mLauncher = launcher;
        this.mView = view;
        this.mInfo = (PendingAddWidgetInfo) view.getTag();
    }

    @Override // com.android.launcher3.dragndrop.DragController.DragListener
    public final void onDragEnd() {
        this.mLauncher.getDragController().removeDragListener(this);
        this.mHandler.removeCallbacks(this.mBindWidgetRunnable);
        this.mHandler.removeCallbacks(this.mInflateWidgetRunnable);
        if (this.mWidgetLoadingId != -1) {
            this.mLauncher.getAppWidgetHolder().deleteAppWidgetId(this.mWidgetLoadingId);
            this.mWidgetLoadingId = -1;
        }
        PendingAddWidgetInfo pendingAddWidgetInfo = this.mInfo;
        if (pendingAddWidgetInfo.boundWidget != null) {
            this.mLauncher.getDragLayer().removeView(pendingAddWidgetInfo.boundWidget);
            this.mLauncher.getAppWidgetHolder().deleteAppWidgetId(pendingAddWidgetInfo.boundWidget.getAppWidgetId());
            pendingAddWidgetInfo.boundWidget = null;
        }
    }

    @Override // com.android.launcher3.dragndrop.DragController.DragListener
    public final void onDragStart(DropTarget.DragObject dragObject, DragOptions dragOptions) {
        PendingAddWidgetInfo pendingAddWidgetInfo = this.mInfo;
        final LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfo = pendingAddWidgetInfo.info;
        if (((AppWidgetProviderInfo) launcherAppWidgetProviderInfo).provider.getClassName().startsWith("#custom-widget-")) {
            return;
        }
        final Bundle widgetSizeOptions = WidgetSizes.getWidgetSizeOptions(this.mLauncher, pendingAddWidgetInfo.componentName, pendingAddWidgetInfo.spanX, pendingAddWidgetInfo.spanY);
        if (pendingAddWidgetInfo.getHandler().needsConfigure()) {
            pendingAddWidgetInfo.bindOptions = widgetSizeOptions;
            return;
        }
        Runnable runnable = new Runnable() { // from class: com.android.launcher3.widget.WidgetHostViewLoader.1
            @Override // java.lang.Runnable
            public final void run() {
                WidgetHostViewLoader widgetHostViewLoader = WidgetHostViewLoader.this;
                widgetHostViewLoader.mWidgetLoadingId = widgetHostViewLoader.mLauncher.getAppWidgetHolder().allocateAppWidgetId();
                AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(WidgetHostViewLoader.this.mLauncher);
                int i4 = WidgetHostViewLoader.this.mWidgetLoadingId;
                LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfo2 = launcherAppWidgetProviderInfo;
                if (i4 <= -100 ? true : appWidgetManager.bindAppWidgetIdIfAllowed(i4, launcherAppWidgetProviderInfo2.getProfile(), ((AppWidgetProviderInfo) launcherAppWidgetProviderInfo2).provider, widgetSizeOptions)) {
                    WidgetHostViewLoader widgetHostViewLoader2 = WidgetHostViewLoader.this;
                    widgetHostViewLoader2.mHandler.post(widgetHostViewLoader2.mInflateWidgetRunnable);
                }
            }
        };
        this.mBindWidgetRunnable = runnable;
        this.mInflateWidgetRunnable = new Runnable() { // from class: com.android.launcher3.widget.WidgetHostViewLoader.2
            @Override // java.lang.Runnable
            public final void run() {
                WidgetHostViewLoader widgetHostViewLoader = WidgetHostViewLoader.this;
                if (widgetHostViewLoader.mWidgetLoadingId == -1) {
                    return;
                }
                LauncherWidgetHolder appWidgetHolder = widgetHostViewLoader.mLauncher.getAppWidgetHolder();
                WidgetHostViewLoader widgetHostViewLoader2 = WidgetHostViewLoader.this;
                AppWidgetHostView createView = appWidgetHolder.createView(widgetHostViewLoader2.mLauncher, widgetHostViewLoader2.mWidgetLoadingId, launcherAppWidgetProviderInfo);
                WidgetHostViewLoader widgetHostViewLoader3 = WidgetHostViewLoader.this;
                widgetHostViewLoader3.mInfo.boundWidget = createView;
                widgetHostViewLoader3.mWidgetLoadingId = -1;
                createView.setVisibility(4);
                int[] estimateItemSize = WidgetHostViewLoader.this.mLauncher.getWorkspace().estimateItemSize(WidgetHostViewLoader.this.mInfo);
                BaseDragLayer.LayoutParams layoutParams = new BaseDragLayer.LayoutParams(estimateItemSize[0], estimateItemSize[1]);
                layoutParams.f5329y = 0;
                layoutParams.f5328x = 0;
                layoutParams.customPosition = true;
                createView.setLayoutParams(layoutParams);
                WidgetHostViewLoader.this.mLauncher.getDragLayer().addView(createView);
                WidgetHostViewLoader widgetHostViewLoader4 = WidgetHostViewLoader.this;
                widgetHostViewLoader4.mView.setTag(widgetHostViewLoader4.mInfo);
            }
        };
        this.mHandler.post(runnable);
    }
}
