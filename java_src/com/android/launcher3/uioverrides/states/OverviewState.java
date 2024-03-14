package com.android.launcher3.uioverrides.states;

import android.content.Context;
import android.graphics.Rect;
import android.os.SystemProperties;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.uioverrides.QuickstepLauncher;
import com.android.launcher3.util.DisplayController;
import com.android.quickstep.util.LayoutUtils;
import com.android.quickstep.util.StaggeredWorkspaceAnim;
import com.android.quickstep.views.RecentsView;
import com.android.quickstep.views.TaskView;
import com.android.systemui.shared.R;
import y0.e;
/* loaded from: classes.dex */
public class OverviewState extends LauncherState {
    protected static final Rect sTempRect = new Rect();
    private static final int STATE_FLAGS = 410;

    /* renamed from: com.android.launcher3.uioverrides.states.OverviewState$1  reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass1 extends LauncherState.PageAlphaProvider {
        @Override // com.android.launcher3.LauncherState.PageAlphaProvider
        public final float getPageAlpha(int i4) {
            return 0.0f;
        }
    }

    public OverviewState(int i4) {
        super(i4, 3, STATE_FLAGS);
    }

    @Override // com.android.launcher3.LauncherState
    public boolean allowTaskbarInitialSplitSelection() {
        return true;
    }

    @Override // com.android.launcher3.LauncherState
    public boolean disallowTaskbarGlobalDrag() {
        return true;
    }

    @Override // com.android.launcher3.statemanager.BaseState
    public boolean displayOverviewTasksAsGrid(DeviceProfile deviceProfile) {
        return deviceProfile.isTablet;
    }

    @Override // com.android.launcher3.LauncherState
    public float getDepthUnchecked(Context context) {
        return SystemProperties.getBoolean("ro.launcher.depth.overview", true) ? 1.0f : 0.0f;
    }

    @Override // com.android.launcher3.LauncherState
    public final String getDescription(Launcher launcher) {
        return launcher.getString(R.string.accessibility_recent_apps);
    }

    @Override // com.android.launcher3.LauncherState
    public final int getFloatingSearchBarRestingMarginBottom(Launcher launcher) {
        if (areElementsVisible(launcher, 128)) {
            return 0;
        }
        return super.getFloatingSearchBarRestingMarginBottom(launcher);
    }

    @Override // com.android.launcher3.LauncherState
    public float[] getOverviewScaleAndOffset(QuickstepLauncher quickstepLauncher) {
        return new float[]{1.0f, 0.0f};
    }

    @Override // com.android.launcher3.statemanager.BaseState
    public int getTransitionDuration(Context context, boolean z4) {
        if (z4 && DisplayController.getNavigationMode(context).hasGestures) {
            return 380;
        }
        return StaggeredWorkspaceAnim.DURATION_MS;
    }

    @Override // com.android.launcher3.LauncherState
    public int getVisibleElements(Launcher launcher) {
        boolean z4;
        DeviceProfile deviceProfile = launcher.getDeviceProfile();
        boolean z5 = true;
        if (deviceProfile.isPhone) {
            z4 = !deviceProfile.isLandscape;
        } else {
            if (deviceProfile.isTaskbarPresent && !isTaskbarStashed(launcher)) {
                z5 = false;
            }
            z4 = z5;
        }
        return z4 ? 152 : 24;
    }

    @Override // com.android.launcher3.LauncherState
    public final LauncherState.PageAlphaProvider getWorkspacePageAlphaProvider(Launcher launcher) {
        return new AnonymousClass1(e.f12929C);
    }

    @Override // com.android.launcher3.LauncherState
    public LauncherState.ScaleAndTranslation getWorkspaceScaleAndTranslation(Launcher launcher) {
        float width;
        int cellLayoutWidth;
        Rect rect = sTempRect;
        ((RecentsView) launcher.getOverviewPanel()).getTaskSize(rect);
        DeviceProfile deviceProfile = launcher.getDeviceProfile();
        if (deviceProfile.isTwoPanels) {
            width = rect.height();
            cellLayoutWidth = deviceProfile.availableHeightPx - deviceProfile.getTotalWorkspacePadding().y;
        } else {
            width = rect.width();
            cellLayoutWidth = deviceProfile.getCellLayoutWidth();
        }
        return new LauncherState.ScaleAndTranslation(width / cellLayoutWidth, 0.0f, (-LayoutUtils.getDefaultSwipeHeight(launcher, launcher.getDeviceProfile())) * 0.5f);
    }

    @Override // com.android.launcher3.LauncherState
    public int getWorkspaceScrimColor(Launcher launcher) {
        return GraphicsUtils.getAttrColor(R.attr.overviewScrimColor, launcher);
    }

    @Override // com.android.launcher3.LauncherState
    public boolean isTaskbarAlignedWithHotseat() {
        return false;
    }

    @Override // com.android.launcher3.LauncherState
    public void onBackPressed(Launcher launcher) {
        RecentsView recentsView = (RecentsView) launcher.getOverviewPanel();
        TaskView runningTaskView = recentsView.getRunningTaskView();
        if (runningTaskView == null) {
            super.onBackPressed(launcher);
        } else if (recentsView.isTaskViewFullyVisible(runningTaskView)) {
            runningTaskView.launchTasks();
        } else {
            recentsView.snapToPage(recentsView.indexOfChild(runningTaskView));
        }
    }

    @Override // com.android.launcher3.LauncherState
    public final boolean shouldFloatingSearchBarUsePillWhenUnfocused(Launcher launcher) {
        DeviceProfile deviceProfile = launcher.getDeviceProfile();
        return deviceProfile.isPhone && !deviceProfile.isLandscape;
    }
}
