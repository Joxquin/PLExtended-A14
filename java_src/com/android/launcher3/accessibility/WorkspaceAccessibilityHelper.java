package com.android.launcher3.accessibility;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.android.launcher3.accessibility.BaseAccessibilityDelegate;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.systemui.shared.R;
import java.util.Iterator;
/* loaded from: classes.dex */
public final class WorkspaceAccessibilityHelper extends DragAndDropAccessibilityDelegate {
    public static String getDescriptionForDropOver(View view, Context context) {
        ItemInfo itemInfo = (ItemInfo) view.getTag();
        if (itemInfo instanceof WorkspaceItemInfo) {
            return context.getString(R.string.create_folder_with, itemInfo.title);
        }
        if (itemInfo instanceof FolderInfo) {
            if (TextUtils.isEmpty(itemInfo.title)) {
                Iterator it = ((FolderInfo) itemInfo).contents.iterator();
                WorkspaceItemInfo workspaceItemInfo = null;
                while (it.hasNext()) {
                    WorkspaceItemInfo workspaceItemInfo2 = (WorkspaceItemInfo) it.next();
                    if (workspaceItemInfo == null || workspaceItemInfo.rank > workspaceItemInfo2.rank) {
                        workspaceItemInfo = workspaceItemInfo2;
                    }
                }
                if (workspaceItemInfo != null) {
                    return context.getString(R.string.add_to_folder_with_app, workspaceItemInfo.title);
                }
            }
            return context.getString(R.string.add_to_folder, itemInfo.title);
        }
        return "";
    }

    @Override // com.android.launcher3.accessibility.DragAndDropAccessibilityDelegate
    public final String getConfirmationForIconDrop(int i4) {
        int countX = i4 % this.mView.getCountX();
        int countX2 = i4 / this.mView.getCountX();
        BaseAccessibilityDelegate.DragInfo dragInfo = this.mDelegate.mDragInfo;
        View childAt = this.mView.getChildAt(countX, countX2);
        if (childAt == null || childAt == dragInfo.item) {
            return this.mContext.getString(R.string.item_moved);
        }
        ItemInfo itemInfo = (ItemInfo) childAt.getTag();
        return ((itemInfo instanceof AppInfo) || (itemInfo instanceof WorkspaceItemInfo)) ? this.mContext.getString(R.string.folder_created) : itemInfo instanceof FolderInfo ? this.mContext.getString(R.string.added_to_folder) : "";
    }

    @Override // com.android.launcher3.accessibility.DragAndDropAccessibilityDelegate
    public final String getLocationDescriptionForIconDrop(int i4) {
        int countX = i4 % this.mView.getCountX();
        int countX2 = i4 / this.mView.getCountX();
        BaseAccessibilityDelegate.DragInfo dragInfo = this.mDelegate.mDragInfo;
        View childAt = this.mView.getChildAt(countX, countX2);
        return (childAt == null || childAt == dragInfo.item) ? this.mView.getItemMoveDescription(countX, countX2) : getDescriptionForDropOver(childAt, this.mContext);
    }

    @Override // com.android.launcher3.accessibility.DragAndDropAccessibilityDelegate
    public final int intersectsValidDropTarget(int i4) {
        int countX = this.mView.getCountX();
        int countY = this.mView.getCountY();
        int i5 = i4 % countX;
        int i6 = i4 / countX;
        BaseAccessibilityDelegate.DragInfo dragInfo = this.mDelegate.mDragInfo;
        BaseAccessibilityDelegate.DragType dragType = dragInfo.dragType;
        BaseAccessibilityDelegate.DragType dragType2 = BaseAccessibilityDelegate.DragType.WIDGET;
        if (dragType != dragType2 || this.mView.acceptsWidget()) {
            if (dragInfo.dragType != dragType2) {
                View childAt = this.mView.getChildAt(i5, i6);
                if (childAt == null || childAt == dragInfo.item) {
                    return i4;
                }
                if (dragInfo.dragType != BaseAccessibilityDelegate.DragType.FOLDER) {
                    ItemInfo itemInfo = (ItemInfo) childAt.getTag();
                    if ((itemInfo instanceof AppInfo) || (itemInfo instanceof FolderInfo) || (itemInfo instanceof WorkspaceItemInfo)) {
                        return i4;
                    }
                }
                return -1;
            }
            ItemInfo itemInfo2 = dragInfo.info;
            int i7 = itemInfo2.spanX;
            int i8 = itemInfo2.spanY;
            for (int i9 = 0; i9 < i7; i9++) {
                for (int i10 = 0; i10 < i8; i10++) {
                    int i11 = i5 - i9;
                    int i12 = i6 - i10;
                    if (i11 >= 0 && i12 >= 0) {
                        boolean z4 = true;
                        for (int i13 = i11; i13 < i11 + i7 && z4; i13++) {
                            for (int i14 = i12; i14 < i12 + i8; i14++) {
                                if (i13 >= countX || i14 >= countY || this.mView.isOccupied(i13, i14)) {
                                    z4 = false;
                                    break;
                                }
                            }
                        }
                        if (z4) {
                            return (countX * i12) + i11;
                        }
                    }
                }
            }
            return -1;
        }
        return -1;
    }
}
