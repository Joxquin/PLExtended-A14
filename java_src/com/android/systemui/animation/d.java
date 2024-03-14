package com.android.systemui.animation;
/* loaded from: classes.dex */
public interface d extends l {
    default boolean isBelowAnimatingWindow() {
        return false;
    }

    default boolean isDialogLaunch() {
        return false;
    }

    default void onLaunchAnimationCancelled(Boolean bool) {
    }
}
