package com.android.launcher3.celllayout;

import android.view.View;
import com.android.launcher3.CellLayout;
import com.android.launcher3.MultipageCellLayout;
import com.android.launcher3.ShortcutAndWidgetContainer;
import com.android.launcher3.util.CellAndSpan;
import com.android.launcher3.util.GridOccupancy;
import java.util.Arrays;
import java.util.function.BiConsumer;
import java.util.function.Supplier;
/* loaded from: classes.dex */
public final class MulticellReorderAlgorithm extends ReorderAlgorithm {
    private final View mSeam;

    public MulticellReorderAlgorithm(CellLayout cellLayout) {
        super(cellLayout);
        this.mSeam = new View(cellLayout.getContext());
    }

    private void removeSeamFromSolution(CellLayout.ItemConfiguration itemConfiguration) {
        itemConfiguration.map.forEach(new BiConsumer() { // from class: com.android.launcher3.celllayout.a
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                MulticellReorderAlgorithm multicellReorderAlgorithm = MulticellReorderAlgorithm.this;
                View view = (View) obj;
                CellAndSpan cellAndSpan = (CellAndSpan) obj2;
                multicellReorderAlgorithm.getClass();
                cellAndSpan.cellX = cellAndSpan.cellX > multicellReorderAlgorithm.mCellLayout.getCountX() / 2 ? cellAndSpan.cellX - 1 : cellAndSpan.cellX;
            }
        });
        itemConfiguration.cellX = itemConfiguration.cellX > this.mCellLayout.getCountX() / 2 ? itemConfiguration.cellX - 1 : itemConfiguration.cellX;
    }

    @Override // com.android.launcher3.celllayout.ReorderAlgorithm
    public final CellLayout.ItemConfiguration closestEmptySpaceReorder(final int i4, final int i5, final int i6, final int i7, final int i8, final int i9) {
        CellLayout.ItemConfiguration itemConfiguration = (CellLayout.ItemConfiguration) simulateSeam(new Supplier() { // from class: H0.b
            @Override // java.util.function.Supplier
            public final Object get() {
                CellLayout.ItemConfiguration closestEmptySpaceReorder;
                closestEmptySpaceReorder = super/*com.android.launcher3.celllayout.ReorderAlgorithm*/.closestEmptySpaceReorder(i4, i5, i6, i7, i8, i9);
                return closestEmptySpaceReorder;
            }
        });
        removeSeamFromSolution(itemConfiguration);
        return itemConfiguration;
    }

    @Override // com.android.launcher3.celllayout.ReorderAlgorithm
    public final CellLayout.ItemConfiguration dropInPlaceSolution(final View view, final int i4, final int i5, final int i6, final int i7) {
        CellLayout.ItemConfiguration itemConfiguration = (CellLayout.ItemConfiguration) simulateSeam(new Supplier() { // from class: H0.a
            @Override // java.util.function.Supplier
            public final Object get() {
                CellLayout.ItemConfiguration dropInPlaceSolution;
                dropInPlaceSolution = super/*com.android.launcher3.celllayout.ReorderAlgorithm*/.dropInPlaceSolution(view, i4, i5, i6, i7);
                return dropInPlaceSolution;
            }
        });
        removeSeamFromSolution(itemConfiguration);
        return itemConfiguration;
    }

    @Override // com.android.launcher3.celllayout.ReorderAlgorithm
    public final CellLayout.ItemConfiguration findReorderSolution(final int i4, final int i5, final int i6, final int i7, final int i8, final int i9, final int[] iArr, final View view, final boolean z4, final CellLayout.ItemConfiguration itemConfiguration) {
        CellLayout.ItemConfiguration itemConfiguration2 = (CellLayout.ItemConfiguration) simulateSeam(new Supplier() { // from class: H0.c
            @Override // java.util.function.Supplier
            public final Object get() {
                CellLayout.ItemConfiguration findReorderSolution;
                findReorderSolution = super/*com.android.launcher3.celllayout.ReorderAlgorithm*/.findReorderSolution(i4, i5, i6, i7, i8, i9, iArr, view, z4, itemConfiguration);
                return findReorderSolution;
            }
        });
        removeSeamFromSolution(itemConfiguration2);
        return itemConfiguration2;
    }

    public final Object simulateSeam(Supplier supplier) {
        MultipageCellLayout multipageCellLayout = (MultipageCellLayout) this.mCellLayout;
        if (multipageCellLayout.isSeamWasAdded()) {
            return supplier.get();
        }
        GridOccupancy occupied = multipageCellLayout.getOccupied();
        MultipageCellLayout multipageCellLayout2 = (MultipageCellLayout) this.mCellLayout;
        multipageCellLayout2.setSeamWasAdded(true);
        CellLayoutLayoutParams cellLayoutLayoutParams = new CellLayoutLayoutParams(multipageCellLayout2.getCountX() / 2, 0, 1, multipageCellLayout2.getCountY());
        cellLayoutLayoutParams.canReorder = false;
        multipageCellLayout2.setCountX(multipageCellLayout2.getCountX() + 1);
        ShortcutAndWidgetContainer shortcutsAndWidgets = multipageCellLayout2.getShortcutsAndWidgets();
        View view = this.mSeam;
        shortcutsAndWidgets.addViewInLayout(view, cellLayoutLayoutParams);
        ShortcutAndWidgetContainer shortcutsAndWidgets2 = this.mCellLayout.getShortcutsAndWidgets();
        GridOccupancy gridOccupancy = new GridOccupancy(this.mCellLayout.getCountX(), this.mCellLayout.getCountY());
        for (int i4 = 0; i4 < shortcutsAndWidgets2.getChildCount(); i4++) {
            CellLayoutLayoutParams cellLayoutLayoutParams2 = (CellLayoutLayoutParams) shortcutsAndWidgets2.getChildAt(i4).getLayoutParams();
            gridOccupancy.markCells(true, cellLayoutLayoutParams2.getCellX() + ((cellLayoutLayoutParams2.getCellX() < this.mCellLayout.getCountX() / 2 || !cellLayoutLayoutParams2.canReorder) ? 0 : 1), cellLayoutLayoutParams2.getCellY(), cellLayoutLayoutParams2.cellHSpan, cellLayoutLayoutParams2.cellVSpan);
        }
        Arrays.fill(gridOccupancy.cells[this.mCellLayout.getCountX() / 2], true);
        multipageCellLayout2.setOccupied(gridOccupancy);
        multipageCellLayout2.mTmpOccupied = new GridOccupancy(multipageCellLayout2.getCountX(), multipageCellLayout2.getCountY());
        Object obj = supplier.get();
        MultipageCellLayout multipageCellLayout3 = (MultipageCellLayout) this.mCellLayout;
        multipageCellLayout3.setCountX(multipageCellLayout3.getCountX() - 1);
        multipageCellLayout3.getShortcutsAndWidgets().removeViewInLayout(view);
        multipageCellLayout3.mTmpOccupied = new GridOccupancy(multipageCellLayout3.getCountX(), multipageCellLayout3.getCountY());
        multipageCellLayout3.setSeamWasAdded(false);
        multipageCellLayout.setOccupied(occupied);
        return obj;
    }
}
