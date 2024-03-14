package com.android.launcher3.pageindicators;
/* loaded from: classes.dex */
public interface PageIndicator {
    default void pauseAnimations() {
    }

    void setActiveMarker(int i4);

    default void setAreScreensBinding(boolean z4) {
    }

    void setMarkersCount(int i4);

    default void setPaintColor(int i4) {
    }

    void setScroll(int i4, int i5);

    default void setShouldAutoHide(boolean z4) {
    }

    default void skipAnimationsToEnd() {
    }
}
