package com.android.systemui.shared.system;

import android.graphics.Rect;
import android.view.RemoteAnimationTarget;
import java.util.HashMap;
/* loaded from: classes.dex */
public interface RecentsAnimationListener {
    void onAnimationCanceled(HashMap hashMap);

    void onAnimationStart(RecentsAnimationControllerCompat recentsAnimationControllerCompat, RemoteAnimationTarget[] remoteAnimationTargetArr, RemoteAnimationTarget[] remoteAnimationTargetArr2, Rect rect, Rect rect2);

    default boolean onSwitchToScreenshot(Runnable runnable) {
        return false;
    }

    void onTasksAppeared(RemoteAnimationTarget[] remoteAnimationTargetArr);
}
