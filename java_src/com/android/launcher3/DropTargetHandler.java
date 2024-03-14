package com.android.launcher3;

import android.content.ComponentName;
import android.view.View;
import com.android.launcher3.CellLayout;
import com.android.launcher3.DropTarget;
import com.android.launcher3.SecondaryDropTarget;
import com.android.launcher3.dragndrop.DragLayer;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.ModelWriter;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.util.IntSet;
import com.android.launcher3.util.PendingRequestArgs;
import com.android.launcher3.views.Snackbar;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class DropTargetHandler {
    private final Launcher mLauncher;

    public DropTargetHandler(Launcher launcher) {
        kotlin.jvm.internal.h.e(launcher, "launcher");
        this.mLauncher = launcher;
    }

    public final void dismissPrediction(CharSequence announcement, K0 k02, L0 l02) {
        kotlin.jvm.internal.h.e(announcement, "announcement");
        Launcher launcher = this.mLauncher;
        launcher.mDragLayer.announceForAccessibility(announcement);
        Snackbar.show(launcher, (int) R.string.item_removed, (int) R.string.undo, l02, k02);
    }

    public final DragLayer getDragLayer() {
        DragLayer dragLayer = this.mLauncher.mDragLayer;
        kotlin.jvm.internal.h.d(dragLayer, "mLauncher.dragLayer");
        return dragLayer;
    }

    public final Launcher getMLauncher() {
        return this.mLauncher;
    }

    public final View getViewUnderDrag(ItemInfo info) {
        CellLayout.CellInfo cellInfo;
        kotlin.jvm.internal.h.e(info, "info");
        if ((info instanceof LauncherAppWidgetInfo) && info.container == -100 && (cellInfo = this.mLauncher.mWorkspace.mDragInfo) != null) {
            return cellInfo.cell;
        }
        return null;
    }

    public final void onAccessibilityDelete(View view, ItemInfo item, CharSequence announcement) {
        kotlin.jvm.internal.h.e(item, "item");
        kotlin.jvm.internal.h.e(announcement, "announcement");
        Launcher launcher = this.mLauncher;
        launcher.removeItem(view, item, true, "removed by accessibility drop");
        launcher.mWorkspace.stripEmptyScreens();
        launcher.mDragLayer.announceForAccessibility(announcement);
    }

    public final void onClick(ButtonDropTarget buttonDropTarget) {
        kotlin.jvm.internal.h.e(buttonDropTarget, "buttonDropTarget");
        this.mLauncher.getAccessibilityDelegate().handleAccessibleDrop(buttonDropTarget, null, null);
    }

    public final void onDeleteComplete(ItemInfo itemInfo) {
        View homescreenIconByItemId;
        int i4 = itemInfo.container;
        Launcher launcher = this.mLauncher;
        if (i4 <= 0 && (homescreenIconByItemId = launcher.mWorkspace.getHomescreenIconByItemId(i4)) != null) {
            Object tag = homescreenIconByItemId.getTag();
            kotlin.jvm.internal.h.c(tag, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo");
            itemInfo = (ItemInfo) tag;
        }
        final IntSet wrap = itemInfo.container == -100 ? IntSet.wrap(itemInfo.screenId) : launcher.mWorkspace.getCurrentPageScreenIds();
        Runnable runnable = new Runnable() { // from class: com.android.launcher3.DropTargetHandler$onDeleteComplete$onUndoClicked$1
            @Override // java.lang.Runnable
            public final void run() {
                DropTargetHandler.this.getMLauncher().setPagesToBindSynchronously(wrap);
                DropTargetHandler.this.getMLauncher().getModelWriter().abortDelete();
                DropTargetHandler.this.getMLauncher().getStatsLogManager().logger().log(StatsLogManager.LauncherEvent.LAUNCHER_UNDO);
            }
        };
        ModelWriter modelWriter = launcher.getModelWriter();
        kotlin.jvm.internal.h.d(modelWriter, "mLauncher.modelWriter");
        Snackbar.show(launcher, (int) R.string.item_removed, (int) R.string.undo, new DropTargetHandler$onDeleteComplete$2(0, modelWriter), runnable);
    }

    public final void onDropAnimationComplete() {
        this.mLauncher.getStateManager().goToState(LauncherState.NORMAL);
    }

    public final void onSecondaryTargetCompleteDrop(ComponentName componentName, DropTarget.DragObject d4) {
        e3.f fVar;
        kotlin.jvm.internal.h.e(d4, "d");
        DragSource dragSource = d4.dragSource;
        if (dragSource instanceof SecondaryDropTarget.DeferredOnComplete) {
            SecondaryDropTarget.DeferredOnComplete deferredOnComplete = (SecondaryDropTarget.DeferredOnComplete) dragSource;
            if (dragSource instanceof SecondaryDropTarget.DeferredOnComplete) {
                if (componentName != null) {
                    deferredOnComplete.mPackageName = componentName.getPackageName();
                    this.mLauncher.addOnResumeCallback(new DropTargetHandler$onDeleteComplete$2(1, deferredOnComplete));
                    fVar = e3.f.f9037a;
                } else {
                    fVar = null;
                }
                if (fVar == null) {
                    deferredOnComplete.sendFailure();
                }
            }
        }
    }

    public final void prepareToUndoDelete() {
        this.mLauncher.getModelWriter().prepareToUndoDelete();
    }

    public final void reconfigureWidget(int i4, ItemInfo info) {
        kotlin.jvm.internal.h.e(info, "info");
        PendingRequestArgs forWidgetInfo = PendingRequestArgs.forWidgetInfo(i4, null, info);
        Launcher launcher = this.mLauncher;
        launcher.setWaitingForResult(forWidgetInfo);
        launcher.getAppWidgetHolder().startConfigActivity(launcher, i4, 13);
    }
}
