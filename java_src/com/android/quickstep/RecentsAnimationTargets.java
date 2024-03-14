package com.android.quickstep;

import android.graphics.Rect;
import android.view.RemoteAnimationTarget;
import com.android.quickstep.views.DesktopTaskView;
/* loaded from: classes.dex */
public class RecentsAnimationTargets extends RemoteAnimationTargets {
    public final Rect homeContentInsets;
    public final Rect minimizedHomeBounds;

    public RecentsAnimationTargets(RemoteAnimationTarget[] remoteAnimationTargetArr, RemoteAnimationTarget[] remoteAnimationTargetArr2, RemoteAnimationTarget[] remoteAnimationTargetArr3, Rect rect, Rect rect2) {
        super(remoteAnimationTargetArr, remoteAnimationTargetArr2, remoteAnimationTargetArr3, 1);
        this.homeContentInsets = rect;
        this.minimizedHomeBounds = rect2;
    }

    public boolean hasDesktopTasks() {
        if (DesktopTaskView.DESKTOP_MODE_SUPPORTED) {
            for (RemoteAnimationTarget remoteAnimationTarget : this.apps) {
                if (remoteAnimationTarget.windowConfiguration.getWindowingMode() == 5) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public boolean hasTargets() {
        return this.unfilteredApps.length != 0;
    }
}
