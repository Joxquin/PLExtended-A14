package com.android.launcher3;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import com.android.launcher3.DropTarget;
import com.android.launcher3.accessibility.LauncherAccessibilityDelegate;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public class DeleteDropTarget extends ButtonDropTarget {
    private StatsLogManager.LauncherEvent mLauncherEvent;
    private final StatsLogManager mStatsLogManager;

    public DeleteDropTarget(Context context) {
        this(context, null, 0);
    }

    @Override // com.android.launcher3.ButtonDropTarget
    public final void completeDrop(DropTarget.DragObject dragObject) {
        ItemInfo itemInfo = dragObject.dragInfo;
        if (itemInfo.id != -1) {
            onAccessibilityDrop(null, itemInfo);
            this.mDropTargetHandler.onDeleteComplete(itemInfo);
        }
    }

    @Override // com.android.launcher3.ButtonDropTarget
    public final int getAccessibilityAction() {
        int i4 = LauncherAccessibilityDelegate.f4526d;
        return R.id.action_remove;
    }

    @Override // com.android.launcher3.ButtonDropTarget
    public final void onAccessibilityDrop(View view, ItemInfo itemInfo) {
        this.mDropTargetHandler.onAccessibilityDelete(view, itemInfo, getContext().getString(R.string.item_removed));
    }

    @Override // com.android.launcher3.ButtonDropTarget, com.android.launcher3.dragndrop.DragController.DragListener
    public final void onDragStart(DropTarget.DragObject dragObject, DragOptions dragOptions) {
        super.onDragStart(dragObject, dragOptions);
        ItemInfo itemInfo = dragObject.dragInfo;
        if (!TextUtils.isEmpty(this.mText)) {
            String string = getResources().getString(itemInfo.id != -1 ? R.string.remove_drop_target_label : 17039360);
            this.mText = string;
            setContentDescription(string);
            requestLayout();
        }
        this.mLauncherEvent = dragObject.dragInfo.id != -1 ? StatsLogManager.LauncherEvent.LAUNCHER_ITEM_DROPPED_ON_REMOVE : StatsLogManager.LauncherEvent.LAUNCHER_ITEM_DROPPED_ON_CANCEL;
    }

    @Override // com.android.launcher3.ButtonDropTarget, com.android.launcher3.DropTarget
    public final void onDrop(DropTarget.DragObject dragObject, DragOptions dragOptions) {
        if (dragObject.dragInfo.id != -1) {
            this.mDropTargetHandler.prepareToUndoDelete();
        }
        super.onDrop(dragObject, dragOptions);
        this.mStatsLogManager.logger().withInstanceId(dragObject.logInstanceId).log(this.mLauncherEvent);
    }

    @Override // com.android.launcher3.ButtonDropTarget, android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        setDrawable(R.drawable.ic_remove_no_shadow);
    }

    @Override // com.android.launcher3.ButtonDropTarget
    public final void setupItemInfo(ItemInfo itemInfo) {
    }

    @Override // com.android.launcher3.ButtonDropTarget
    public final boolean supportsAccessibilityDrop(View view, ItemInfo itemInfo) {
        return itemInfo instanceof WorkspaceItemInfo ? itemInfo.id != -1 : (itemInfo instanceof LauncherAppWidgetInfo) || (itemInfo instanceof FolderInfo);
    }

    @Override // com.android.launcher3.ButtonDropTarget
    public final boolean supportsDrop(ItemInfo itemInfo) {
        return true;
    }

    public DeleteDropTarget(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DeleteDropTarget(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mStatsLogManager = StatsLogManager.newInstance(context);
    }
}
