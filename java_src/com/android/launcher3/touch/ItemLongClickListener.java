package com.android.launcher3.touch;

import android.view.View;
import com.android.launcher3.CellLayout;
import com.android.launcher3.Launcher;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.folder.Folder;
import com.android.launcher3.model.data.ItemInfo;
/* loaded from: classes.dex */
public final class ItemLongClickListener {
    public static final j INSTANCE_WORKSPACE = new j(0);
    public static final j INSTANCE_ALL_APPS = new j(1);

    public static void beginDrag(View view, Launcher launcher, ItemInfo itemInfo, DragOptions dragOptions) {
        Folder open;
        if (itemInfo.container >= 0 && (open = Folder.getOpen(launcher)) != null) {
            if (open.getIconsInReadingOrder().contains(view)) {
                open.startDrag(view, dragOptions);
                return;
            }
            open.close(true);
        }
        launcher.getWorkspace().startDrag(new CellLayout.CellInfo(view, itemInfo, launcher.getCellPosMapper().mapModelToPresenter(itemInfo)), dragOptions);
    }

    public static boolean canStartDrag(Launcher launcher) {
        return (launcher == null || launcher.isWorkspaceLocked() || launcher.getDragController().isDragging()) ? false : true;
    }
}
