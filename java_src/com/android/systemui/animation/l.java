package com.android.systemui.animation;

import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes.dex */
public interface l {
    n createAnimatorState();

    ViewGroup getLaunchContainer();

    default View getOpeningWindowSyncView() {
        return null;
    }

    default void onLaunchAnimationEnd(boolean z4) {
    }

    default void onLaunchAnimationProgress(n state, float f4, float f5) {
        kotlin.jvm.internal.h.e(state, "state");
    }

    default void onLaunchAnimationStart(boolean z4) {
    }
}
