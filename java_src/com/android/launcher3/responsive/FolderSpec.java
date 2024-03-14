package com.android.launcher3.responsive;

import com.android.launcher3.responsive.ResponsiveSpec;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public final class FolderSpec extends ResponsiveSpec {
    private final SizeSpec cellSize;
    private final SizeSpec endPadding;
    private final SizeSpec gutter;
    private final int maxAvailableSize;
    private final ResponsiveSpec.SpecType specType;
    private final SizeSpec startPadding;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public FolderSpec(android.content.res.TypedArray r12, java.util.Map r13) {
        /*
            r11 = this;
            java.lang.String r0 = "attrs"
            kotlin.jvm.internal.h.e(r12, r0)
            java.lang.String r0 = "specs"
            kotlin.jvm.internal.h.e(r13, r0)
            r0 = 0
            int r8 = r12.getDimensionPixelSize(r0, r0)
            com.android.launcher3.responsive.ResponsiveSpec$SpecType[] r1 = com.android.launcher3.responsive.ResponsiveSpec.SpecType.values()
            r2 = 1
            int r12 = r12.getInt(r2, r0)
            r12 = r1[r12]
            java.lang.String r0 = "startPadding"
            com.android.launcher3.responsive.SizeSpec r0 = com.android.launcher3.responsive.ResponsiveSpecsParserKt.getOrError(r13, r0)
            java.lang.String r1 = "endPadding"
            com.android.launcher3.responsive.SizeSpec r9 = com.android.launcher3.responsive.ResponsiveSpecsParserKt.getOrError(r13, r1)
            java.lang.String r1 = "gutter"
            com.android.launcher3.responsive.SizeSpec r10 = com.android.launcher3.responsive.ResponsiveSpecsParserKt.getOrError(r13, r1)
            java.lang.String r1 = "cellSize"
            com.android.launcher3.responsive.SizeSpec r13 = com.android.launcher3.responsive.ResponsiveSpecsParserKt.getOrError(r13, r1)
            java.lang.String r1 = "specType"
            kotlin.jvm.internal.h.e(r12, r1)
            r1 = r11
            r2 = r8
            r3 = r12
            r4 = r0
            r5 = r9
            r6 = r10
            r7 = r13
            r1.<init>(r2, r3, r4, r5, r6, r7)
            r11.maxAvailableSize = r8
            r11.specType = r12
            r11.startPadding = r0
            r11.endPadding = r9
            r11.gutter = r10
            r11.cellSize = r13
            boolean r11 = r11.isValid()
            if (r11 == 0) goto L54
            return
        L54:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "Invalid FolderSpec found."
            java.lang.String r12 = r12.toString()
            r11.<init>(r12)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.responsive.FolderSpec.<init>(android.content.res.TypedArray, java.util.Map):void");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FolderSpec) {
            FolderSpec folderSpec = (FolderSpec) obj;
            return this.maxAvailableSize == folderSpec.maxAvailableSize && this.specType == folderSpec.specType && h.a(this.startPadding, folderSpec.startPadding) && h.a(this.endPadding, folderSpec.endPadding) && h.a(this.gutter, folderSpec.gutter) && h.a(this.cellSize, folderSpec.cellSize);
        }
        return false;
    }

    @Override // com.android.launcher3.responsive.ResponsiveSpec
    public final SizeSpec getCellSize() {
        return this.cellSize;
    }

    @Override // com.android.launcher3.responsive.ResponsiveSpec
    public final SizeSpec getEndPadding() {
        return this.endPadding;
    }

    @Override // com.android.launcher3.responsive.ResponsiveSpec
    public final SizeSpec getGutter() {
        return this.gutter;
    }

    @Override // com.android.launcher3.responsive.ResponsiveSpec
    public final int getMaxAvailableSize() {
        return this.maxAvailableSize;
    }

    @Override // com.android.launcher3.responsive.ResponsiveSpec
    public final ResponsiveSpec.SpecType getSpecType() {
        return this.specType;
    }

    @Override // com.android.launcher3.responsive.ResponsiveSpec
    public final SizeSpec getStartPadding() {
        return this.startPadding;
    }

    public final int hashCode() {
        int hashCode = this.specType.hashCode();
        int hashCode2 = this.startPadding.hashCode();
        int hashCode3 = this.endPadding.hashCode();
        int hashCode4 = this.gutter.hashCode();
        return this.cellSize.hashCode() + ((hashCode4 + ((hashCode3 + ((hashCode2 + ((hashCode + (Integer.hashCode(this.maxAvailableSize) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "FolderSpec(maxAvailableSize=" + this.maxAvailableSize + ", specType=" + this.specType + ", startPadding=" + this.startPadding + ", endPadding=" + this.endPadding + ", gutter=" + this.gutter + ", cellSize=" + this.cellSize + ")";
    }
}
