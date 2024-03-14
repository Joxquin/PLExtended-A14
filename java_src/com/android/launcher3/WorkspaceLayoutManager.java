package com.android.launcher3;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.android.launcher3.celllayout.CellLayoutLayoutParams;
import com.android.launcher3.celllayout.CellPosMapper;
import com.android.launcher3.folder.Folder;
import com.android.launcher3.folder.FolderIcon;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.touch.ItemLongClickListener;
import com.android.launcher3.util.IntSet;
import j.C1080K;
/* loaded from: classes.dex */
public interface WorkspaceLayoutManager {
    public static final IntSet EXTRA_EMPTY_SCREEN_IDS = IntSet.wrap(-201, -200);

    default void addInScreen(View view, ItemInfo itemInfo) {
        CellPosMapper.CellPos mapModelToPresenter = getCellPosMapper().mapModelToPresenter(itemInfo);
        addInScreen(itemInfo.container, mapModelToPresenter.screenId, mapModelToPresenter.cellX, mapModelToPresenter.cellY, itemInfo.spanX, itemInfo.spanY, view);
    }

    default void addInScreenFromBind(View view, ItemInfo itemInfo) {
        int cellYFromOrder;
        CellPosMapper.CellPos mapModelToPresenter = getCellPosMapper().mapModelToPresenter(itemInfo);
        int i4 = mapModelToPresenter.cellX;
        int i5 = itemInfo.container;
        if (i5 == -101 || i5 == -103) {
            Log.d("Launcher.Workspace", "add predicted icon " + view.getTag().toString() + " to home screen");
            Hotseat hotseat = getHotseat();
            int i6 = mapModelToPresenter.screenId;
            i4 = hotseat.getCellXFromOrder(i6);
            cellYFromOrder = getHotseat().getCellYFromOrder(i6);
        } else {
            cellYFromOrder = mapModelToPresenter.cellY;
        }
        addInScreen(itemInfo.container, mapModelToPresenter.screenId, i4, cellYFromOrder, itemInfo.spanX, itemInfo.spanY, view);
    }

    CellPosMapper getCellPosMapper();

    Hotseat getHotseat();

    CellLayout getScreenWithId(int i4);

    default void onAddDropTarget(DropTarget dropTarget) {
    }

    default void addInScreen(int i4, int i5, int i6, int i7, int i8, int i9, View view) {
        CellLayout hotseat;
        CellLayoutLayoutParams cellLayoutLayoutParams;
        if (i4 == -100 && getScreenWithId(i5) == null) {
            Log.e("Launcher.Workspace", "Skipping child, screenId " + i5 + " not found");
            new Throwable().printStackTrace();
        } else if (!EXTRA_EMPTY_SCREEN_IDS.contains(i5)) {
            if (i4 != -101 && i4 != -103) {
                if (view instanceof FolderIcon) {
                    ((FolderIcon) view).setTextVisible(true);
                }
                hotseat = getScreenWithId(i5);
            } else {
                hotseat = getHotseat();
                if (view instanceof FolderIcon) {
                    ((FolderIcon) view).setTextVisible(false);
                }
            }
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams != null && (layoutParams instanceof CellLayoutLayoutParams)) {
                cellLayoutLayoutParams = (CellLayoutLayoutParams) layoutParams;
                cellLayoutLayoutParams.setCellX(i6);
                cellLayoutLayoutParams.setCellY(i7);
                cellLayoutLayoutParams.cellHSpan = i8;
                cellLayoutLayoutParams.cellVSpan = i9;
            } else {
                cellLayoutLayoutParams = new CellLayoutLayoutParams(i6, i7, i8, i9);
            }
            if (i8 < 0 && i9 < 0) {
                cellLayoutLayoutParams.isLockedToGrid = false;
            }
            if (!hotseat.addViewToCellLayout(view, -1, ((ItemInfo) view.getTag()).getViewId(), cellLayoutLayoutParams, !(view instanceof Folder))) {
                Log.e("Launcher.Workspace", "Failed to add to item at (" + cellLayoutLayoutParams.getCellX() + "," + cellLayoutLayoutParams.getCellY() + ") to CellLayout");
            }
            view.setHapticFeedbackEnabled(false);
            view.setOnLongClickListener(ItemLongClickListener.INSTANCE_WORKSPACE);
            if (view instanceof DropTarget) {
                onAddDropTarget((DropTarget) view);
            }
        } else {
            throw new RuntimeException(C1080K.a("Screen id should not be extra empty screen: ", i5));
        }
    }
}
