package com.android.launcher3.responsive;

import android.util.Log;
import kotlin.jvm.internal.j;
/* loaded from: classes.dex */
public abstract class ResponsiveSpec {
    private final SizeSpec cellSize;
    private final SizeSpec endPadding;
    private final SizeSpec gutter;
    private final int maxAvailableSize;
    private final SpecType specType;
    private final SizeSpec startPadding;

    /* loaded from: classes.dex */
    public enum SpecType {
        HEIGHT,
        WIDTH
    }

    public ResponsiveSpec(int i4, SpecType specType, SizeSpec sizeSpec, SizeSpec sizeSpec2, SizeSpec sizeSpec3, SizeSpec sizeSpec4) {
        this.maxAvailableSize = i4;
        this.specType = specType;
        this.startPadding = sizeSpec;
        this.endPadding = sizeSpec2;
        this.gutter = sizeSpec3;
        this.cellSize = sizeSpec4;
    }

    public SizeSpec getCellSize() {
        return this.cellSize;
    }

    public SizeSpec getEndPadding() {
        return this.endPadding;
    }

    public SizeSpec getGutter() {
        return this.gutter;
    }

    public int getMaxAvailableSize() {
        return this.maxAvailableSize;
    }

    public SpecType getSpecType() {
        return this.specType;
    }

    public SizeSpec getStartPadding() {
        return this.startPadding;
    }

    public boolean isValid() {
        if (getMaxAvailableSize() <= 0) {
            String b4 = j.a(getClass()).b();
            Log.e("ResponsiveSpec", b4 + "#isValid - maxAvailableSize <= 0");
            return false;
        }
        if (getStartPadding().isValid() && getEndPadding().isValid() && getGutter().isValid() && getCellSize().isValid()) {
            return true;
        }
        String b5 = j.a(getClass()).b();
        Log.e("ResponsiveSpec", b5 + "#isValid - !allSpecsAreValid()");
        return false;
    }
}
