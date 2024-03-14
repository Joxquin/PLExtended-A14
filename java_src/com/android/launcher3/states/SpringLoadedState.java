package com.android.launcher3.states;

import android.content.Context;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.Workspace;
/* loaded from: classes.dex */
public final class SpringLoadedState extends LauncherState {
    private static final int STATE_FLAGS = 62;

    public SpringLoadedState() {
        super(1, 2, STATE_FLAGS);
    }

    @Override // com.android.launcher3.LauncherState
    public final float getDepthUnchecked(Context context) {
        return 0.5f;
    }

    @Override // com.android.launcher3.LauncherState
    public final LauncherState.ScaleAndTranslation getHotseatScaleAndTranslation(Launcher launcher) {
        return new LauncherState.ScaleAndTranslation(1.0f, 0.0f, 0.0f);
    }

    @Override // com.android.launcher3.statemanager.BaseState
    public final int getTransitionDuration(Context context, boolean z4) {
        return 150;
    }

    @Override // com.android.launcher3.LauncherState
    public final float getWorkspaceBackgroundAlpha(Launcher launcher) {
        return 0.2f;
    }

    @Override // com.android.launcher3.LauncherState
    public final LauncherState.ScaleAndTranslation getWorkspaceScaleAndTranslation(Launcher launcher) {
        DeviceProfile deviceProfile = launcher.getDeviceProfile();
        Workspace workspace = launcher.getWorkspace();
        if (workspace.getChildCount() == 0) {
            return super.getWorkspaceScaleAndTranslation(launcher);
        }
        float cellLayoutSpringLoadShrunkTop = deviceProfile.getCellLayoutSpringLoadShrunkTop();
        float workspaceSpringLoadScale = deviceProfile.getWorkspaceSpringLoadScale(launcher);
        float height = workspace.getHeight() / 2;
        return new LauncherState.ScaleAndTranslation(workspaceSpringLoadScale, 0.0f, cellLayoutSpringLoadShrunkTop - ((workspace.getTop() + height) - ((height - workspace.getChildAt(0).getTop()) * workspaceSpringLoadScale)));
    }
}
