package com.android.systemui.shared.rotation;

import android.graphics.drawable.Drawable;
import android.view.View;
/* loaded from: classes.dex */
public interface RotationButton {

    /* loaded from: classes.dex */
    public interface RotationButtonUpdatesCallback {
        default void onPositionChanged() {
        }

        default void onVisibilityChanged(boolean z4) {
        }
    }

    default boolean acceptRotationProposal() {
        return getCurrentView() != null;
    }

    default View getCurrentView() {
        return null;
    }

    default Drawable getImageDrawable() {
        return null;
    }

    default boolean hide() {
        return false;
    }

    default boolean isVisible() {
        return false;
    }

    default void onTaskbarStateChanged(boolean z4, boolean z5) {
    }

    default void setCanShowRotationButton(boolean z4) {
    }

    default void setDarkIntensity(float f4) {
    }

    default void setOnClickListener(View.OnClickListener onClickListener) {
    }

    default void setOnHoverListener(View.OnHoverListener onHoverListener) {
    }

    default void setRotationButtonController(RotationButtonController rotationButtonController) {
    }

    default void setUpdatesCallback(RotationButtonUpdatesCallback rotationButtonUpdatesCallback) {
    }

    default boolean show() {
        return false;
    }

    default void updateIcon(int i4, int i5) {
    }
}
