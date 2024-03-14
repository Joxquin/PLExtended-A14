package com.android.launcher3.widget.dragndrop;

import com.android.launcher3.DropTarget;
import com.android.launcher3.Launcher;
import com.android.launcher3.dragndrop.DragController;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.widget.LauncherAppWidgetHostView;
/* loaded from: classes.dex */
public final class AppWidgetHostViewDragListener implements DragController.DragListener {
    private LauncherAppWidgetHostView mAppWidgetHostView;
    private final Launcher mLauncher;

    public AppWidgetHostViewDragListener(Launcher launcher) {
        this.mLauncher = launcher;
    }

    @Override // com.android.launcher3.dragndrop.DragController.DragListener
    public final void onDragEnd() {
        this.mAppWidgetHostView.endDrag();
        this.mLauncher.getDragController().removeDragListener(this);
    }

    @Override // com.android.launcher3.dragndrop.DragController.DragListener
    public final void onDragStart(DropTarget.DragObject dragObject, DragOptions dragOptions) {
        if (!(dragObject.dragView.getContentView() instanceof LauncherAppWidgetHostView)) {
            this.mLauncher.getDragController().removeDragListener(this);
            return;
        }
        LauncherAppWidgetHostView launcherAppWidgetHostView = (LauncherAppWidgetHostView) dragObject.dragView.getContentView();
        this.mAppWidgetHostView = launcherAppWidgetHostView;
        launcherAppWidgetHostView.startDrag();
    }
}
