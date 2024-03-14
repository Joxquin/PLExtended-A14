package com.android.launcher3.util.window;

import android.graphics.Point;
import android.graphics.Rect;
import com.android.launcher3.util.RotationUtils;
import java.util.Objects;
/* loaded from: classes.dex */
public final class CachedDisplayInfo {
    public final Rect cutout;
    public final int rotation;
    public final Point size;

    public CachedDisplayInfo() {
        this(new Point(0, 0), 0);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CachedDisplayInfo) {
            CachedDisplayInfo cachedDisplayInfo = (CachedDisplayInfo) obj;
            return this.rotation == cachedDisplayInfo.rotation && Objects.equals(this.size, cachedDisplayInfo.size) && Objects.equals(this.cutout, cachedDisplayInfo.cutout);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.size, Integer.valueOf(this.rotation), this.cutout);
    }

    public final CachedDisplayInfo normalize() {
        int i4 = this.rotation;
        if (i4 == 0) {
            return this;
        }
        Point point = new Point(this.size);
        int i5 = 0 - i4;
        if (i5 < 0) {
            i5 += 4;
        }
        RotationUtils.rotateSize(point, i5);
        Rect rect = new Rect(this.cutout);
        int i6 = 0 - i4;
        if (i6 < 0) {
            i6 += 4;
        }
        RotationUtils.rotateRect(i6, rect);
        return new CachedDisplayInfo(point, 0, rect);
    }

    public final String toString() {
        return "CachedDisplayInfo{size=" + this.size + ", cutout=" + this.cutout + ", rotation=" + this.rotation + '}';
    }

    public CachedDisplayInfo(Point point, int i4) {
        this(point, i4, new Rect());
    }

    public CachedDisplayInfo(Point point, int i4, Rect rect) {
        this.size = point;
        this.rotation = i4;
        this.cutout = rect;
    }
}
