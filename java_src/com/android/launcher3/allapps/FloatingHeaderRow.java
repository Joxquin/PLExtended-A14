package com.android.launcher3.allapps;

import android.view.View;
/* loaded from: classes.dex */
public interface FloatingHeaderRow {
    public static final FloatingHeaderRow[] NO_ROWS = new FloatingHeaderRow[0];

    int getExpectedHeight();

    View getFocusedChild();

    Class getTypeClass();

    boolean hasVisibleContent();

    default boolean isVisible() {
        return shouldDraw();
    }

    void setVerticalScroll(int i4, boolean z4);

    void setup(FloatingHeaderView floatingHeaderView, FloatingHeaderRow[] floatingHeaderRowArr, boolean z4);

    boolean shouldDraw();
}
