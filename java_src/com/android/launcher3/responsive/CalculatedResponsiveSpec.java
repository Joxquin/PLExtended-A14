package com.android.launcher3.responsive;

import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
/* loaded from: classes.dex */
public abstract class CalculatedResponsiveSpec {
    private int availableSpace;
    private int cellSizePx;
    private int cells;
    private int endPaddingPx;
    private int gutterPx;
    private ResponsiveSpec spec;
    private int startPaddingPx;

    public CalculatedResponsiveSpec(int i4, int i5, ResponsiveSpec responsiveSpec, CalculatedWorkspaceSpec calculatedWorkspaceSpec) {
        this.availableSpace = i4;
        this.cells = i5;
        this.spec = responsiveSpec;
        this.startPaddingPx = responsiveSpec.getStartPadding().getCalculatedValue(i4, calculatedWorkspaceSpec.startPaddingPx);
        this.endPaddingPx = responsiveSpec.getEndPadding().getCalculatedValue(i4, calculatedWorkspaceSpec.endPaddingPx);
        this.gutterPx = responsiveSpec.getGutter().getCalculatedValue(i4, calculatedWorkspaceSpec.gutterPx);
        this.cellSizePx = responsiveSpec.getCellSize().getCalculatedValue(i4, calculatedWorkspaceSpec.cellSizePx);
        updateRemainderSpaces(i4, i5, responsiveSpec);
    }

    private final void updateRemainderSpaces(int i4, int i5, ResponsiveSpec responsiveSpec) {
        int i6 = this.startPaddingPx + this.endPaddingPx;
        int i7 = this.gutterPx;
        int i8 = i4 - ((this.cellSizePx * i5) + ((i7 * (i5 - 1)) + i6));
        this.startPaddingPx = responsiveSpec.getStartPadding().getRemainderSpaceValue(i8, this.startPaddingPx);
        this.endPaddingPx = responsiveSpec.getEndPadding().getRemainderSpaceValue(i8, this.endPaddingPx);
        this.gutterPx = responsiveSpec.getGutter().getRemainderSpaceValue(i8, this.gutterPx);
        this.cellSizePx = responsiveSpec.getCellSize().getRemainderSpaceValue(i8, this.cellSizePx);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof CalculatedResponsiveSpec) {
            CalculatedResponsiveSpec calculatedResponsiveSpec = (CalculatedResponsiveSpec) obj;
            if (this.availableSpace == calculatedResponsiveSpec.availableSpace && this.cells == calculatedResponsiveSpec.cells && this.startPaddingPx == calculatedResponsiveSpec.startPaddingPx && this.endPaddingPx == calculatedResponsiveSpec.endPaddingPx && this.gutterPx == calculatedResponsiveSpec.gutterPx && this.cellSizePx == calculatedResponsiveSpec.cellSizePx && h.a(this.spec, calculatedResponsiveSpec.spec)) {
                return true;
            }
        }
        return false;
    }

    public final int getAvailableSpace() {
        return this.availableSpace;
    }

    public final int getCellSizePx() {
        return this.cellSizePx;
    }

    public final int getEndPaddingPx() {
        return this.endPaddingPx;
    }

    public final int getGutterPx() {
        return this.gutterPx;
    }

    public final ResponsiveSpec getSpec() {
        return this.spec;
    }

    public final int getStartPaddingPx() {
        return this.startPaddingPx;
    }

    public final int hashCode() {
        int hashCode = Integer.hashCode(this.cells);
        int hashCode2 = Integer.hashCode(this.startPaddingPx);
        int hashCode3 = Integer.hashCode(this.endPaddingPx);
        int hashCode4 = Integer.hashCode(this.gutterPx);
        int hashCode5 = Integer.hashCode(this.cellSizePx);
        return this.spec.hashCode() + ((hashCode5 + ((hashCode4 + ((hashCode3 + ((hashCode2 + ((hashCode + (Integer.hashCode(this.availableSpace) * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        String b4 = j.a(getClass()).b();
        int i4 = this.availableSpace;
        int i5 = this.cells;
        int i6 = this.startPaddingPx;
        int i7 = this.endPaddingPx;
        int i8 = this.gutterPx;
        int i9 = this.cellSizePx;
        String b5 = j.a(this.spec.getClass()).b();
        int maxAvailableSize = this.spec.getMaxAvailableSize();
        return b4 + "(availableSpace=" + i4 + ", cells=" + i5 + ", startPaddingPx=" + i6 + ", endPaddingPx=" + i7 + ", gutterPx=" + i8 + ", cellSizePx=" + i9 + ", " + b5 + ".maxAvailableSize=" + maxAvailableSize + ")";
    }

    public CalculatedResponsiveSpec(int i4, int i5, ResponsiveSpec responsiveSpec) {
        this.availableSpace = i4;
        this.cells = i5;
        this.spec = responsiveSpec;
        this.startPaddingPx = responsiveSpec.getStartPadding().getCalculatedValue(i4, 0);
        this.endPaddingPx = responsiveSpec.getEndPadding().getCalculatedValue(i4, 0);
        this.gutterPx = responsiveSpec.getGutter().getCalculatedValue(i4, 0);
        this.cellSizePx = responsiveSpec.getCellSize().getCalculatedValue(i4, 0);
        updateRemainderSpaces(i4, i5, responsiveSpec);
    }
}
