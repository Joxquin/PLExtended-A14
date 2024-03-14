package com.android.launcher3.util;

import android.graphics.Rect;
/* loaded from: classes.dex */
public final class SplitConfigurationOptions$SplitBounds {
    public final boolean appsStackedVertically;
    public final float dividerHeightPercent;
    public final float dividerWidthPercent;
    public final boolean initiatedFromSeascape;
    public final float leftTaskPercent;
    public final Rect leftTopBounds;
    public final int leftTopTaskId;
    public final Rect rightBottomBounds;
    public final int rightBottomTaskId;
    public final float topTaskPercent;
    public final Rect visualDividerBounds;

    public SplitConfigurationOptions$SplitBounds(Rect rect, Rect rect2, int i4, int i5) {
        this.leftTopBounds = rect;
        this.rightBottomBounds = rect2;
        this.leftTopTaskId = i4;
        this.rightBottomTaskId = i5;
        if (rect2.top > rect.top) {
            this.visualDividerBounds = new Rect(rect.left, rect.bottom, rect.right, rect2.top);
            this.appsStackedVertically = true;
            this.initiatedFromSeascape = false;
        } else {
            this.visualDividerBounds = new Rect(rect.right, rect.top, rect2.left, rect.bottom);
            this.appsStackedVertically = false;
            if (rect2.width() > rect.width()) {
                this.initiatedFromSeascape = true;
            } else {
                this.initiatedFromSeascape = false;
            }
        }
        float f4 = rect2.right - rect.left;
        float f5 = rect2.bottom - rect.top;
        this.leftTaskPercent = rect.width() / f4;
        this.topTaskPercent = rect.height() / f5;
        this.dividerWidthPercent = this.visualDividerBounds.width() / f4;
        this.dividerHeightPercent = this.visualDividerBounds.height() / f5;
    }
}
