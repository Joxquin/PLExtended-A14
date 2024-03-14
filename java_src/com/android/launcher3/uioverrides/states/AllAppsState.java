package com.android.launcher3.uioverrides.states;

import android.content.Context;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.uioverrides.QuickstepLauncher;
import com.android.launcher3.views.ActivityContext;
import com.android.systemui.shared.R;
import y0.e;
/* loaded from: classes.dex */
public final class AllAppsState extends LauncherState {
    private static final int STATE_FLAGS = 648;

    public AllAppsState() {
        super(5, 4, STATE_FLAGS);
    }

    @Override // com.android.launcher3.LauncherState
    public final float getDepthUnchecked(Context context) {
        ActivityContext activityContext = (ActivityContext) context;
        if (activityContext.getDeviceProfile().isTablet) {
            return activityContext.getDeviceProfile().bottomSheetDepth;
        }
        return 2.0f;
    }

    @Override // com.android.launcher3.LauncherState
    public final String getDescription(Launcher launcher) {
        return launcher.getAppsView().getDescription();
    }

    @Override // com.android.launcher3.LauncherState
    public final int getFloatingSearchBarRestingMarginBottom(Launcher launcher) {
        return 0;
    }

    @Override // com.android.launcher3.LauncherState
    public final int getFloatingSearchBarRestingMarginEnd(Launcher launcher) {
        DeviceProfile deviceProfile = launcher.getDeviceProfile();
        return deviceProfile.getAllAppsIconStartMargin() + deviceProfile.allAppsLeftRightMargin;
    }

    @Override // com.android.launcher3.LauncherState
    public final int getFloatingSearchBarRestingMarginStart(Launcher launcher) {
        DeviceProfile deviceProfile = launcher.getDeviceProfile();
        return deviceProfile.getAllAppsIconStartMargin() + deviceProfile.allAppsLeftRightMargin;
    }

    @Override // com.android.launcher3.LauncherState
    public final LauncherState.ScaleAndTranslation getHotseatScaleAndTranslation(Launcher launcher) {
        if (launcher.getDeviceProfile().isTablet) {
            return getWorkspaceScaleAndTranslation(launcher);
        }
        LauncherState.ScaleAndTranslation workspaceScaleAndTranslation = LauncherState.OVERVIEW.getWorkspaceScaleAndTranslation(launcher);
        return new LauncherState.ScaleAndTranslation(launcher.getDeviceProfile().workspaceContentScale, workspaceScaleAndTranslation.translationX, workspaceScaleAndTranslation.translationY);
    }

    @Override // com.android.launcher3.LauncherState
    public final float[] getOverviewScaleAndOffset(QuickstepLauncher quickstepLauncher) {
        return !FeatureFlags.ENABLE_ALL_APPS_FROM_OVERVIEW.get() ? quickstepLauncher.getNormalOverviewScaleAndOffset() : new float[]{0.5f, 0.0f};
    }

    @Override // com.android.launcher3.statemanager.BaseState
    public final int getTransitionDuration(Context context, boolean z4) {
        return z4 ? ((ActivityContext) context).getDeviceProfile().allAppsOpenDuration : ((ActivityContext) context).getDeviceProfile().allAppsCloseDuration;
    }

    @Override // com.android.launcher3.LauncherState
    public final float getVerticalProgress(Launcher launcher) {
        return 0.0f;
    }

    @Override // com.android.launcher3.LauncherState
    public final int getVisibleElements(Launcher launcher) {
        return launcher.getDeviceProfile().isTablet ? 131 : 130;
    }

    @Override // com.android.launcher3.LauncherState
    public final LauncherState.PageAlphaProvider getWorkspacePageAlphaProvider(final Launcher launcher) {
        final LauncherState.PageAlphaProvider workspacePageAlphaProvider = super.getWorkspacePageAlphaProvider(launcher);
        return new LauncherState.PageAlphaProvider(e.f12929C) { // from class: com.android.launcher3.uioverrides.states.AllAppsState.1
            @Override // com.android.launcher3.LauncherState.PageAlphaProvider
            public final float getPageAlpha(int i4) {
                if (launcher.getDeviceProfile().isTablet) {
                    return workspacePageAlphaProvider.getPageAlpha(i4);
                }
                return 0.0f;
            }
        };
    }

    @Override // com.android.launcher3.LauncherState
    public final LauncherState.ScaleAndTranslation getWorkspaceScaleAndTranslation(Launcher launcher) {
        return new LauncherState.ScaleAndTranslation(launcher.getDeviceProfile().workspaceContentScale, 0.0f, 0.0f);
    }

    @Override // com.android.launcher3.LauncherState
    public final int getWorkspaceScrimColor(Launcher launcher) {
        return launcher.getDeviceProfile().isTablet ? launcher.getResources().getColor(R.color.widgets_picker_scrim) : GraphicsUtils.getAttrColor(R.attr.allAppsScrimColor, launcher);
    }

    @Override // com.android.launcher3.LauncherState
    public final boolean shouldFloatingSearchBarUsePillWhenUnfocused(Launcher launcher) {
        DeviceProfile deviceProfile = launcher.getDeviceProfile();
        return deviceProfile.isPhone && !deviceProfile.isLandscape;
    }

    @Override // com.android.launcher3.LauncherState, com.android.launcher3.statemanager.BaseState
    public final LauncherState getHistoryForState(LauncherState launcherState) {
        if (launcherState == LauncherState.BACKGROUND_APP) {
            return LauncherState.QUICK_SWITCH_FROM_HOME;
        }
        OverviewState overviewState = LauncherState.OVERVIEW;
        return launcherState == overviewState ? overviewState : LauncherState.NORMAL;
    }
}
