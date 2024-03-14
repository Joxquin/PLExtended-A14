package com.android.launcher3.states;

import android.content.Context;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public final class EditModeState extends LauncherState {
    private static final int STATE_FLAGS = 62;

    public EditModeState() {
        super(10, 2, STATE_FLAGS);
    }

    @Override // com.android.launcher3.LauncherState
    public final float getDepthUnchecked(Context context) {
        return 0.5f;
    }

    @Override // com.android.launcher3.LauncherState
    public final LauncherState.ScaleAndTranslation getHotseatScaleAndTranslation(Launcher launcher) {
        h.e(launcher, "launcher");
        return new LauncherState.ScaleAndTranslation(launcher.getDeviceProfile().getWorkspaceSpringLoadScale(launcher), 0.0f, 0.0f);
    }

    @Override // com.android.launcher3.statemanager.BaseState
    public final int getTransitionDuration(Context context, boolean z4) {
        return 150;
    }

    @Override // com.android.launcher3.LauncherState
    public final float getWorkspaceBackgroundAlpha(Launcher launcher) {
        h.e(launcher, "launcher");
        return 0.2f;
    }

    @Override // com.android.launcher3.LauncherState
    public final LauncherState.ScaleAndTranslation getWorkspaceScaleAndTranslation(Launcher launcher) {
        h.e(launcher, "launcher");
        return new LauncherState.ScaleAndTranslation(launcher.getDeviceProfile().getWorkspaceSpringLoadScale(launcher), 0.0f, 0.0f);
    }

    @Override // com.android.launcher3.LauncherState
    public final void onLeavingState() {
    }
}
