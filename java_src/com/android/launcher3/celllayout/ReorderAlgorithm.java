package com.android.launcher3.celllayout;

import android.view.View;
import com.android.launcher3.CellLayout;
/* loaded from: classes.dex */
public class ReorderAlgorithm {
    CellLayout mCellLayout;

    public ReorderAlgorithm(CellLayout cellLayout) {
        this.mCellLayout = cellLayout;
    }

    public final CellLayout.ItemConfiguration calculateReorder(int i4, int i5, int i6, int i7, int i8, int i9, View view) {
        CellLayout cellLayout = this.mCellLayout;
        cellLayout.getDirectionVectorForDrop(i4, i5, i8, i9, view, cellLayout.mDirectionVector);
        CellLayout.ItemConfiguration dropInPlaceSolution = dropInPlaceSolution(view, i4, i5, i8, i9);
        CellLayout.ItemConfiguration findReorderSolution = findReorderSolution(i4, i5, i6, i7, i8, i9, this.mCellLayout.mDirectionVector, view, true, new CellLayout.ItemConfiguration());
        CellLayout.ItemConfiguration closestEmptySpaceReorder = closestEmptySpaceReorder(i4, i5, i6, i7, i8, i9);
        if (!findReorderSolution.isSolution || findReorderSolution.spanX * findReorderSolution.spanY < closestEmptySpaceReorder.spanX * closestEmptySpaceReorder.spanY) {
            if (closestEmptySpaceReorder.isSolution) {
                return closestEmptySpaceReorder;
            }
            if (dropInPlaceSolution.isSolution) {
                return dropInPlaceSolution;
            }
            return null;
        }
        return findReorderSolution;
    }

    public CellLayout.ItemConfiguration closestEmptySpaceReorder(int i4, int i5, int i6, int i7, int i8, int i9) {
        CellLayout.ItemConfiguration itemConfiguration = new CellLayout.ItemConfiguration();
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        this.mCellLayout.findNearestArea(i4, i5, i6, i7, i8, i9, false, iArr, iArr2);
        if (iArr[0] < 0 || iArr[1] < 0) {
            itemConfiguration.isSolution = false;
        } else {
            this.mCellLayout.copyCurrentStateToSolution(itemConfiguration);
            itemConfiguration.cellX = iArr[0];
            itemConfiguration.cellY = iArr[1];
            itemConfiguration.spanX = iArr2[0];
            itemConfiguration.spanY = iArr2[1];
            itemConfiguration.isSolution = true;
        }
        return itemConfiguration;
    }

    public CellLayout.ItemConfiguration dropInPlaceSolution(View view, int i4, int i5, int i6, int i7) {
        int[] iArr = new int[2];
        if (this.mCellLayout.isNearestDropLocationOccupied(i4, i5, i6, i7, view, iArr)) {
            iArr[1] = -1;
            iArr[0] = -1;
        }
        CellLayout.ItemConfiguration itemConfiguration = new CellLayout.ItemConfiguration();
        this.mCellLayout.copyCurrentStateToSolution(itemConfiguration);
        int i8 = iArr[0];
        boolean z4 = i8 != -1;
        itemConfiguration.isSolution = z4;
        if (z4) {
            itemConfiguration.cellX = i8;
            itemConfiguration.cellY = iArr[1];
            itemConfiguration.spanX = i6;
            itemConfiguration.spanY = i7;
            return itemConfiguration;
        }
        return itemConfiguration;
    }

    public CellLayout.ItemConfiguration findReorderSolution(int i4, int i5, int i6, int i7, int i8, int i9, int[] iArr, View view, boolean z4, CellLayout.ItemConfiguration itemConfiguration) {
        this.mCellLayout.copyCurrentStateToSolution(itemConfiguration);
        this.mCellLayout.getOccupied().copyTo(this.mCellLayout.mTmpOccupied);
        int[] findNearestAreaIgnoreOccupied = this.mCellLayout.findNearestAreaIgnoreOccupied(i4, i5, i8, i9, new int[2]);
        if (this.mCellLayout.rearrangementExists(findNearestAreaIgnoreOccupied[0], findNearestAreaIgnoreOccupied[1], i8, i9, iArr, view, itemConfiguration)) {
            itemConfiguration.isSolution = true;
            itemConfiguration.cellX = findNearestAreaIgnoreOccupied[0];
            itemConfiguration.cellY = findNearestAreaIgnoreOccupied[1];
            itemConfiguration.spanX = i8;
            itemConfiguration.spanY = i9;
        } else if (i8 > i6 && (i7 == i9 || z4)) {
            return findReorderSolution(i4, i5, i6, i7, i8 - 1, i9, iArr, view, false, itemConfiguration);
        } else {
            if (i9 > i7) {
                return findReorderSolution(i4, i5, i6, i7, i8, i9 - 1, iArr, view, true, itemConfiguration);
            }
            itemConfiguration.isSolution = false;
        }
        return itemConfiguration;
    }
}
