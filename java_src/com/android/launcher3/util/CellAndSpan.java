package com.android.launcher3.util;

import v.C1429e;
/* loaded from: classes.dex */
public class CellAndSpan {
    public int cellX;
    public int cellY;
    public int spanX;
    public int spanY;

    public CellAndSpan() {
        this.cellX = -1;
        this.cellY = -1;
        this.spanX = 1;
        this.spanY = 1;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("(");
        sb.append(this.cellX);
        sb.append(", ");
        sb.append(this.cellY);
        sb.append(": ");
        sb.append(this.spanX);
        sb.append(", ");
        return C1429e.a(sb, this.spanY, ")");
    }

    public CellAndSpan(int i4, int i5, int i6, int i7) {
        this.cellX = i4;
        this.cellY = i5;
        this.spanX = i6;
        this.spanY = i7;
    }
}
