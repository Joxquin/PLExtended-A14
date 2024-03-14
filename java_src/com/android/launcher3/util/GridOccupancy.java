package com.android.launcher3.util;

import com.android.launcher3.model.data.ItemInfo;
import java.lang.reflect.Array;
/* loaded from: classes.dex */
public final class GridOccupancy {
    public final boolean[][] cells;
    private final int mCountX;
    private final int mCountY;

    public GridOccupancy(int i4, int i5) {
        this.mCountX = i4;
        this.mCountY = i5;
        this.cells = (boolean[][]) Array.newInstance(Boolean.TYPE, i4, i5);
    }

    public static boolean findVacantCell$com$android$launcher3$util$AbsGridOccupancy(int[] iArr, boolean[][] zArr, int i4, int i5, int i6, int i7) {
        int i8 = 0;
        while (true) {
            int i9 = i8 + i7;
            if (i9 > i5) {
                return false;
            }
            int i10 = 0;
            while (true) {
                int i11 = i10 + i6;
                if (i11 <= i4) {
                    boolean z4 = !zArr[i10][i8];
                    for (int i12 = i10; i12 < i11; i12++) {
                        for (int i13 = i8; i13 < i9; i13++) {
                            z4 = z4 && !zArr[i12][i13];
                            if (!z4) {
                                break;
                            }
                        }
                    }
                    if (z4) {
                        iArr[0] = i10;
                        iArr[1] = i8;
                        return true;
                    }
                    i10++;
                }
            }
            i8++;
        }
    }

    public final void clear() {
        markCells(false, 0, 0, this.mCountX, this.mCountY);
    }

    public final void copyTo(GridOccupancy gridOccupancy) {
        for (int i4 = 0; i4 < this.mCountX; i4++) {
            for (int i5 = 0; i5 < this.mCountY; i5++) {
                gridOccupancy.cells[i4][i5] = this.cells[i4][i5];
            }
        }
    }

    public final boolean findVacantCell(int i4, int i5, int[] iArr) {
        return findVacantCell$com$android$launcher3$util$AbsGridOccupancy(iArr, this.cells, this.mCountX, this.mCountY, i4, i5);
    }

    public final boolean isRegionVacant(int i4, int i5, int i6, int i7) {
        int i8 = (i6 + i4) - 1;
        int i9 = (i7 + i5) - 1;
        if (i4 < 0 || i5 < 0 || i8 >= this.mCountX || i9 >= this.mCountY) {
            return false;
        }
        while (i4 <= i8) {
            for (int i10 = i5; i10 <= i9; i10++) {
                if (this.cells[i4][i10]) {
                    return false;
                }
            }
            i4++;
        }
        return true;
    }

    public final void markCells(boolean z4, int i4, int i5, int i6, int i7) {
        if (i4 < 0 || i5 < 0) {
            return;
        }
        for (int i8 = i4; i8 < i4 + i6 && i8 < this.mCountX; i8++) {
            for (int i9 = i5; i9 < i5 + i7 && i9 < this.mCountY; i9++) {
                this.cells[i8][i9] = z4;
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Grid: \n");
        for (int i4 = 0; i4 < this.mCountY; i4++) {
            for (int i5 = 0; i5 < this.mCountX; i5++) {
                sb.append(this.cells[i5][i4] ? 1 : 0);
                sb.append(" ");
            }
            sb.append("\n");
        }
        return sb.toString();
    }

    public final void markCells(CellAndSpan cellAndSpan, boolean z4) {
        markCells(z4, cellAndSpan.cellX, cellAndSpan.cellY, cellAndSpan.spanX, cellAndSpan.spanY);
    }

    public final void markCells(ItemInfo itemInfo) {
        markCells(true, itemInfo.cellX, itemInfo.cellY, itemInfo.spanX, itemInfo.spanY);
    }
}
