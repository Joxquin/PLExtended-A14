package com.android.launcher3.accessibility;

import com.android.launcher3.CellLayout;
import com.android.launcher3.folder.FolderPagedView;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class FolderAccessibilityHelper extends DragAndDropAccessibilityDelegate {
    private final FolderPagedView mParent;
    private final int mStartPosition;

    public FolderAccessibilityHelper(CellLayout cellLayout) {
        super(cellLayout);
        FolderPagedView folderPagedView = (FolderPagedView) cellLayout.getParent();
        this.mParent = folderPagedView;
        int indexOfChild = folderPagedView.indexOfChild(cellLayout);
        this.mStartPosition = cellLayout.getCountY() * cellLayout.getCountX() * indexOfChild;
    }

    @Override // com.android.launcher3.accessibility.DragAndDropAccessibilityDelegate
    public final String getConfirmationForIconDrop(int i4) {
        return this.mContext.getString(R.string.item_moved);
    }

    @Override // com.android.launcher3.accessibility.DragAndDropAccessibilityDelegate
    public final String getLocationDescriptionForIconDrop(int i4) {
        return this.mContext.getString(R.string.move_to_position, Integer.valueOf(i4 + this.mStartPosition + 1));
    }

    @Override // com.android.launcher3.accessibility.DragAndDropAccessibilityDelegate
    public final int intersectsValidDropTarget(int i4) {
        return Math.min(i4, (this.mParent.getAllocatedContentSize() - this.mStartPosition) - 1);
    }
}
