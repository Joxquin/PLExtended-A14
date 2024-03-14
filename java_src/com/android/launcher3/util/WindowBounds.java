package com.android.launcher3.util;

import android.graphics.Point;
import android.graphics.Rect;
import java.util.Objects;
/* loaded from: classes.dex */
public final class WindowBounds {
    public final Point availableSize;
    public final Rect bounds;
    public final Rect insets;
    public final int rotationHint;

    public WindowBounds() {
        throw null;
    }

    public WindowBounds(int i4, Rect rect, Rect rect2) {
        this.bounds = rect;
        this.insets = rect2;
        this.rotationHint = i4;
        this.availableSize = new Point((rect.width() - rect2.left) - rect2.right, (rect.height() - rect2.top) - rect2.bottom);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof WindowBounds) {
            WindowBounds windowBounds = (WindowBounds) obj;
            return windowBounds.bounds.equals(this.bounds) && windowBounds.insets.equals(this.insets);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.bounds, this.insets);
    }

    public final String toString() {
        return "WindowBounds{bounds=" + this.bounds + ", insets=" + this.insets + ", availableSize=" + this.availableSize + ", rotationHint=" + this.rotationHint + '}';
    }

    public WindowBounds(int i4, int i5, int i6, int i7, int i8) {
        this.bounds = new Rect(0, 0, i4, i5);
        this.availableSize = new Point(i6, i7);
        this.insets = new Rect(0, 0, i4 - i6, i5 - i7);
        this.rotationHint = i8;
    }
}
