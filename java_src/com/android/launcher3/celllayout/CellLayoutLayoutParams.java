package com.android.launcher3.celllayout;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.ViewDebug;
import android.view.ViewGroup;
import v.C1429e;
/* loaded from: classes.dex */
public final class CellLayoutLayoutParams extends ViewGroup.MarginLayoutParams {
    public boolean canReorder;
    @ViewDebug.ExportedProperty
    public int cellHSpan;
    @ViewDebug.ExportedProperty
    public int cellVSpan;
    public boolean dropped;
    public boolean isLockedToGrid;
    @ViewDebug.ExportedProperty
    private int mCellX;
    @ViewDebug.ExportedProperty
    private int mCellY;
    private int mTmpCellX;
    private int mTmpCellY;
    public boolean useTmpCoords;
    @ViewDebug.ExportedProperty

    /* renamed from: x  reason: collision with root package name */
    public int f4575x;
    @ViewDebug.ExportedProperty

    /* renamed from: y  reason: collision with root package name */
    public int f4576y;

    public CellLayoutLayoutParams(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isLockedToGrid = true;
        this.canReorder = true;
        this.cellHSpan = 1;
        this.cellVSpan = 1;
    }

    public final int getCellX() {
        return this.mCellX;
    }

    public final int getCellY() {
        return this.mCellY;
    }

    public final int getTmpCellX() {
        return this.mTmpCellX;
    }

    public final int getTmpCellY() {
        return this.mTmpCellY;
    }

    public final void setCellX(int i4) {
        this.mCellX = i4;
    }

    public final void setCellXY(Point point) {
        this.mCellX = point.x;
        this.mCellY = point.y;
    }

    public final void setCellY(int i4) {
        this.mCellY = i4;
    }

    public final void setTmpCellX(int i4) {
        this.mTmpCellX = i4;
    }

    public final void setTmpCellY(int i4) {
        this.mTmpCellY = i4;
    }

    public final void setup(int i4, int i5, boolean z4, int i6, float f4, float f5, Point point, Rect rect) {
        if (this.isLockedToGrid) {
            int i7 = this.cellHSpan;
            int i8 = this.cellVSpan;
            boolean z5 = this.useTmpCoords;
            int i9 = z5 ? this.mTmpCellX : this.mCellX;
            int i10 = z5 ? this.mTmpCellY : this.mCellY;
            if (z4) {
                i9 = (i6 - i9) - i7;
            }
            ((ViewGroup.MarginLayoutParams) this).width = (Math.round(((i7 * i4) + ((i7 - 1) * point.x)) / f4) - ((ViewGroup.MarginLayoutParams) this).leftMargin) - ((ViewGroup.MarginLayoutParams) this).rightMargin;
            int round = Math.round(((i8 * i5) + ((i8 - 1) * point.y)) / f5);
            int i11 = ((ViewGroup.MarginLayoutParams) this).topMargin;
            int i12 = (round - i11) - ((ViewGroup.MarginLayoutParams) this).bottomMargin;
            ((ViewGroup.MarginLayoutParams) this).height = i12;
            int i13 = (i9 * point.x) + (i4 * i9) + ((ViewGroup.MarginLayoutParams) this).leftMargin;
            this.f4575x = i13;
            int i14 = (i10 * point.y) + (i5 * i10) + i11;
            this.f4576y = i14;
            if (rect != null) {
                int i15 = rect.left;
                this.f4575x = i13 + i15;
                int i16 = rect.top;
                this.f4576y = i14 + i16;
                ((ViewGroup.MarginLayoutParams) this).width -= i15 + rect.right;
                ((ViewGroup.MarginLayoutParams) this).height = i12 - (i16 + rect.bottom);
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("(");
        sb.append(this.mCellX);
        sb.append(", ");
        return C1429e.a(sb, this.mCellY, ")");
    }

    public CellLayoutLayoutParams(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.isLockedToGrid = true;
        this.canReorder = true;
        this.cellHSpan = 1;
        this.cellVSpan = 1;
    }

    public CellLayoutLayoutParams(int i4, int i5, int i6, int i7) {
        super(-1, -1);
        this.isLockedToGrid = true;
        this.canReorder = true;
        this.mCellX = i4;
        this.mCellY = i5;
        this.cellHSpan = i6;
        this.cellVSpan = i7;
    }
}
