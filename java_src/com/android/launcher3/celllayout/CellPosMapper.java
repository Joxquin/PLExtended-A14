package com.android.launcher3.celllayout;

import com.android.launcher3.model.data.ItemInfo;
import java.util.Objects;
/* loaded from: classes.dex */
public class CellPosMapper {
    public static final CellPosMapper DEFAULT = new CellPosMapper();

    /* loaded from: classes.dex */
    public final class CellPos {
        public final int cellX;
        public final int cellY;
        public final int screenId;

        public CellPos(int i4, int i5, int i6) {
            this.cellX = i4;
            this.cellY = i5;
            this.screenId = i6;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof CellPos) {
                CellPos cellPos = (CellPos) obj;
                return this.cellX == cellPos.cellX && this.cellY == cellPos.cellY && this.screenId == cellPos.screenId;
            }
            return false;
        }

        public final int hashCode() {
            return Objects.hash(Integer.valueOf(this.cellX), Integer.valueOf(this.cellY), Integer.valueOf(this.screenId));
        }
    }

    /* loaded from: classes.dex */
    public final class TwoPanelCellPosMapper extends CellPosMapper {
        private final int mColumnCount;

        public TwoPanelCellPosMapper(int i4) {
            super(0);
            this.mColumnCount = i4;
        }

        @Override // com.android.launcher3.celllayout.CellPosMapper
        public final CellPos mapModelToPresenter(ItemInfo itemInfo) {
            if (itemInfo.container == -100) {
                int i4 = itemInfo.screenId;
                if (i4 % 2 != 0) {
                    return new CellPos(itemInfo.cellX + this.mColumnCount, itemInfo.cellY, i4 - 1);
                }
            }
            return super.mapModelToPresenter(itemInfo);
        }

        @Override // com.android.launcher3.celllayout.CellPosMapper
        public final CellPos mapPresenterToModel(int i4, int i5, int i6, int i7) {
            int i8;
            return (i7 == -100 && i6 % 2 == 0 && i4 >= (i8 = this.mColumnCount)) ? new CellPos(i4 - i8, i5, i6 + 1) : new CellPos(i4, i5, i6);
        }
    }

    public /* synthetic */ CellPosMapper(int i4) {
    }

    public CellPos mapModelToPresenter(ItemInfo itemInfo) {
        return new CellPos(itemInfo.cellX, itemInfo.cellY, itemInfo.screenId);
    }

    public CellPos mapPresenterToModel(int i4, int i5, int i6, int i7) {
        return new CellPos(i4, i5, i6);
    }
}
