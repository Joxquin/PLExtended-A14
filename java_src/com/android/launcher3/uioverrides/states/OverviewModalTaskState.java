package com.android.launcher3.uioverrides.states;

import android.content.Context;
import android.graphics.Rect;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.uioverrides.QuickstepLauncher;
import com.android.quickstep.views.RecentsView;
/* loaded from: classes.dex */
public final class OverviewModalTaskState extends OverviewState {
    private static final int STATE_FLAGS = 266;

    public OverviewModalTaskState() {
        super(3, 3, STATE_FLAGS);
    }

    public static float[] getOverviewScaleAndOffsetForModalState(BaseDraggingActivity baseDraggingActivity) {
        RecentsView recentsView = (RecentsView) baseDraggingActivity.getOverviewPanel();
        Rect selectedTaskBounds = recentsView.getSelectedTaskBounds();
        Rect rect = new Rect();
        recentsView.getModalTaskSize(rect);
        return new float[]{Math.min(rect.height() / selectedTaskBounds.height(), rect.width() / selectedTaskBounds.width()), 0.0f};
    }

    @Override // com.android.launcher3.LauncherState
    public final float getOverviewModalness() {
        return 1.0f;
    }

    @Override // com.android.launcher3.uioverrides.states.OverviewState, com.android.launcher3.LauncherState
    public final float[] getOverviewScaleAndOffset(QuickstepLauncher quickstepLauncher) {
        return getOverviewScaleAndOffsetForModalState(quickstepLauncher);
    }

    @Override // com.android.launcher3.uioverrides.states.OverviewState, com.android.launcher3.statemanager.BaseState
    public final int getTransitionDuration(Context context, boolean z4) {
        return 300;
    }

    @Override // com.android.launcher3.uioverrides.states.OverviewState, com.android.launcher3.LauncherState
    public final int getVisibleElements(Launcher launcher) {
        return 24;
    }

    @Override // com.android.launcher3.LauncherState
    public final boolean isTaskbarStashed(Launcher launcher) {
        return FeatureFlags.ENABLE_GRID_ONLY_OVERVIEW.get();
    }

    @Override // com.android.launcher3.uioverrides.states.OverviewState, com.android.launcher3.LauncherState
    public final void onBackPressed(Launcher launcher) {
        launcher.getStateManager().goToState(LauncherState.OVERVIEW);
        RecentsView recentsView = (RecentsView) launcher.getOverviewPanel();
        if (recentsView != null) {
            recentsView.resetModalVisuals();
        } else {
            super.onBackPressed(launcher);
        }
    }
}
