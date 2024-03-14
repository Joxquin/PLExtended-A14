package com.android.launcher3;

import android.content.Context;
import android.view.View;
import android.view.animation.Interpolator;
import com.android.launcher3.statemanager.BaseState;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.states.EditModeState;
import com.android.launcher3.states.HintState;
import com.android.launcher3.states.SpringLoadedState;
import com.android.launcher3.uioverrides.QuickstepLauncher;
import com.android.launcher3.uioverrides.states.AllAppsState;
import com.android.launcher3.uioverrides.states.BackgroundAppState;
import com.android.launcher3.uioverrides.states.OverviewModalTaskState;
import com.android.launcher3.uioverrides.states.OverviewState;
import com.android.launcher3.uioverrides.states.QuickSwitchState;
import com.android.launcher3.uioverrides.states.SplitScreenSelectState;
import java.util.Arrays;
/* loaded from: classes.dex */
public abstract class LauncherState implements BaseState {
    private final int mFlags;
    public final int ordinal;
    public final boolean overviewUi;
    public final int statsLogOrdinal;
    protected static final PageAlphaProvider DEFAULT_ALPHA_PROVIDER = new AnonymousClass1(y0.e.f12960x);
    protected static final PageAlphaProvider DEFAULT_PAGE_TRANSLATION_PROVIDER = new AnonymousClass1(y0.e.f12929C);
    private static final LauncherState[] sAllStates = new LauncherState[11];
    public static final LauncherState NORMAL = new LauncherState(82) { // from class: com.android.launcher3.LauncherState.3
        @Override // com.android.launcher3.statemanager.BaseState
        public final int getTransitionDuration(Context context, boolean z4) {
            return 0;
        }
    };
    public static final SpringLoadedState SPRING_LOADED = new SpringLoadedState();
    public static final EditModeState EDIT_MODE = new EditModeState();
    public static final AllAppsState ALL_APPS = new AllAppsState();
    public static final HintState HINT_STATE = new HintState(7, 2);
    public static final HintState HINT_STATE_TWO_BUTTON = new HintState(8, 3);
    public static final OverviewState OVERVIEW = new OverviewState(2);
    public static final OverviewModalTaskState OVERVIEW_MODAL_TASK = new OverviewModalTaskState();
    public static final QuickSwitchState QUICK_SWITCH_FROM_HOME = new QuickSwitchState();
    public static final BackgroundAppState BACKGROUND_APP = new BackgroundAppState(6);
    public static final SplitScreenSelectState OVERVIEW_SPLIT_SELECT = new SplitScreenSelectState();

    /* renamed from: com.android.launcher3.LauncherState$1  reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass1 extends PageAlphaProvider {
        @Override // com.android.launcher3.LauncherState.PageAlphaProvider
        public float getPageAlpha(int i4) {
            return 1.0f;
        }

        @Override // com.android.launcher3.LauncherState.PageAlphaProvider
        public float getPageTranslation(int i4) {
            return 0.0f;
        }
    }

    /* loaded from: classes.dex */
    public abstract class PageAlphaProvider {
        public final Interpolator interpolator;

        public /* synthetic */ PageAlphaProvider(Interpolator interpolator) {
            this.interpolator = interpolator;
        }

        public abstract float getPageAlpha(int i4);

        public abstract float getPageTranslation(int i4);
    }

    /* loaded from: classes.dex */
    public final class ScaleAndTranslation {
        public float scale;
        public float translationX;
        public float translationY;

        public ScaleAndTranslation(float f4, float f5, float f6) {
            this.scale = f4;
            this.translationX = f5;
            this.translationY = f6;
        }
    }

    public LauncherState(int i4, int i5, int i6) {
        this.statsLogOrdinal = i5;
        this.mFlags = i6;
        this.overviewUi = (256 & i6) != 0;
        this.ordinal = i4;
        sAllStates[i4] = this;
    }

    public static LauncherState[] values() {
        LauncherState[] launcherStateArr = sAllStates;
        return (LauncherState[]) Arrays.copyOf(launcherStateArr, launcherStateArr.length);
    }

    public boolean allowTaskbarInitialSplitSelection() {
        return false;
    }

    public final boolean areElementsVisible(Launcher launcher, int i4) {
        return (getVisibleElements(launcher) & i4) == i4;
    }

    public boolean disallowTaskbarGlobalDrag() {
        return false;
    }

    public final float getDepth(Context context) {
        if (BaseActivity.fromContext(context).getDeviceProfile().isMultiWindowMode) {
            return 0.0f;
        }
        return getDepthUnchecked(context);
    }

    public float getDepthUnchecked(Context context) {
        return 0.0f;
    }

    public String getDescription(Launcher launcher) {
        return launcher.mWorkspace.getCurrentPageDescription();
    }

    public int getFloatingSearchBarRestingMarginBottom(Launcher launcher) {
        DeviceProfile deviceProfile = launcher.getDeviceProfile();
        return areElementsVisible(launcher, 128) ? deviceProfile.getQsbOffsetY() : -deviceProfile.hotseatQsbHeight;
    }

    public int getFloatingSearchBarRestingMarginEnd(Launcher launcher) {
        DeviceProfile deviceProfile = launcher.getDeviceProfile();
        if (deviceProfile.isQsbInline) {
            return (deviceProfile.widthPx - getFloatingSearchBarRestingMarginStart(launcher)) - deviceProfile.hotseatQsbWidth;
        }
        boolean isRtl = Utilities.isRtl(launcher.getResources());
        View qsb = launcher.mHotseat.getQsb();
        return isRtl ? qsb.getLeft() : launcher.mHotseat.getRight() - qsb.getRight();
    }

    public int getFloatingSearchBarRestingMarginStart(Launcher launcher) {
        boolean isRtl = Utilities.isRtl(launcher.getResources());
        View qsb = launcher.mHotseat.getQsb();
        return isRtl ? launcher.mHotseat.getRight() - qsb.getRight() : qsb.getLeft();
    }

    public ScaleAndTranslation getHotseatScaleAndTranslation(Launcher launcher) {
        return getWorkspaceScaleAndTranslation(launcher);
    }

    public float getOverviewFullscreenProgress() {
        return 0.0f;
    }

    public float getOverviewModalness() {
        return 0.0f;
    }

    public float[] getOverviewScaleAndOffset(QuickstepLauncher quickstepLauncher) {
        return quickstepLauncher.getNormalOverviewScaleAndOffset();
    }

    public float getSplitSelectTranslation(QuickstepLauncher quickstepLauncher) {
        return 0.0f;
    }

    public float getVerticalProgress(Launcher launcher) {
        return 1.0f;
    }

    public int getVisibleElements(Launcher launcher) {
        return (launcher.getDeviceProfile().isPhone && launcher.getDeviceProfile().isLandscape) ? 37 : 165;
    }

    public float getWorkspaceBackgroundAlpha(Launcher launcher) {
        return 0.0f;
    }

    public PageAlphaProvider getWorkspacePageAlphaProvider(Launcher launcher) {
        if ((this == NORMAL || this == HINT_STATE) && launcher.getDeviceProfile().isVerticalBarLayout()) {
            final int nextPage = launcher.mWorkspace.getNextPage();
            return new PageAlphaProvider(y0.e.f12960x) { // from class: com.android.launcher3.LauncherState.4
                @Override // com.android.launcher3.LauncherState.PageAlphaProvider
                public final float getPageAlpha(int i4) {
                    return i4 != nextPage ? 0.0f : 1.0f;
                }
            };
        }
        return DEFAULT_ALPHA_PROVIDER;
    }

    public ScaleAndTranslation getWorkspaceScaleAndTranslation(Launcher launcher) {
        return new ScaleAndTranslation(1.0f, 0.0f, 0.0f);
    }

    public int getWorkspaceScrimColor(Launcher launcher) {
        return 0;
    }

    @Override // com.android.launcher3.statemanager.BaseState
    public final boolean hasFlag(int i4) {
        return (this.mFlags & i4) != 0;
    }

    public boolean isTaskbarAlignedWithHotseat() {
        return true;
    }

    public boolean isTaskbarStashed(Launcher launcher) {
        return false;
    }

    public void onBackPressed(Launcher launcher) {
        if (this != NORMAL) {
            StateManager stateManager = launcher.getStateManager();
            stateManager.goToState((LauncherState) stateManager.getLastState());
        }
    }

    public void onLeavingState() {
    }

    public boolean shouldFloatingSearchBarUsePillWhenUnfocused(Launcher launcher) {
        return false;
    }

    public final String toString() {
        switch (this.ordinal) {
            case 0:
                return "Normal";
            case 1:
                return "SpringLoaded";
            case 2:
                return "Overview";
            case 3:
                return "OverviewModal";
            case 4:
                return "QuickSwitch";
            case 5:
                return "AllApps";
            case 6:
                return "Background";
            case 7:
                return "Hint";
            case 8:
                return "Hint2Button";
            case 9:
                return "OverviewSplitSelect";
            case 10:
                return "EditMode";
            default:
                return "Unknown";
        }
    }

    @Override // com.android.launcher3.statemanager.BaseState
    public LauncherState getHistoryForState(LauncherState launcherState) {
        return NORMAL;
    }
}
