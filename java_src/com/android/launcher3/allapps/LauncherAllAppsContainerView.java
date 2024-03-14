package com.android.launcher3.allapps;

import android.content.Context;
import android.util.AttributeSet;
import android.view.WindowInsets;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.Utilities;
import com.android.launcher3.statemanager.BaseState;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.uioverrides.states.AllAppsState;
/* loaded from: classes.dex */
public class LauncherAllAppsContainerView extends ActivityAllAppsContainerView {
    public LauncherAllAppsContainerView(Context context) {
        this(context, null);
    }

    @Override // com.android.launcher3.allapps.ActivityAllAppsContainerView
    public final int computeNavBarScrimHeight(WindowInsets windowInsets) {
        return Utilities.ATLEAST_Q ? windowInsets.getTappableElementInsets().bottom : windowInsets.getStableInsetBottom();
    }

    @Override // com.android.launcher3.allapps.ActivityAllAppsContainerView
    public final int getFloatingSearchBarRestingMarginBottom() {
        int i4;
        if (isSearchBarFloating()) {
            Launcher launcher = (Launcher) this.mActivityContext;
            StateManager stateManager = launcher.getStateManager();
            int floatingSearchBarRestingMarginBottom = ((LauncherState) stateManager.getCurrentStableState()).getFloatingSearchBarRestingMarginBottom(launcher);
            if (!stateManager.isInTransition() || stateManager.getTargetState() == null) {
                i4 = -1;
            } else {
                i4 = ((LauncherState) stateManager.getTargetState()).getFloatingSearchBarRestingMarginBottom(launcher);
                if (i4 < 0) {
                    return i4;
                }
            }
            return Math.max(i4, floatingSearchBarRestingMarginBottom);
        }
        return 0;
    }

    @Override // com.android.launcher3.allapps.ActivityAllAppsContainerView
    public final int getFloatingSearchBarRestingMarginEnd() {
        if (isSearchBarFloating()) {
            StateManager stateManager = ((Launcher) this.mActivityContext).getStateManager();
            BaseState currentStableState = stateManager.getCurrentStableState();
            AllAppsState allAppsState = LauncherState.ALL_APPS;
            return (currentStableState == allAppsState && ((Launcher) this.mActivityContext).getDeviceProfile().isPhone) ? allAppsState.getFloatingSearchBarRestingMarginEnd((Launcher) this.mActivityContext) : (!stateManager.isInTransition() || stateManager.getTargetState() == null) ? ((LauncherState) stateManager.getCurrentStableState()).getFloatingSearchBarRestingMarginEnd((Launcher) this.mActivityContext) : ((LauncherState) stateManager.getTargetState()).getFloatingSearchBarRestingMarginEnd((Launcher) this.mActivityContext);
        }
        return super.getFloatingSearchBarRestingMarginEnd();
    }

    @Override // com.android.launcher3.allapps.ActivityAllAppsContainerView
    public final int getFloatingSearchBarRestingMarginStart() {
        if (isSearchBarFloating()) {
            StateManager stateManager = ((Launcher) this.mActivityContext).getStateManager();
            BaseState currentStableState = stateManager.getCurrentStableState();
            AllAppsState allAppsState = LauncherState.ALL_APPS;
            return (currentStableState == allAppsState && ((Launcher) this.mActivityContext).getDeviceProfile().isPhone) ? allAppsState.getFloatingSearchBarRestingMarginStart((Launcher) this.mActivityContext) : (!stateManager.isInTransition() || stateManager.getTargetState() == null) ? ((LauncherState) stateManager.getCurrentStableState()).getFloatingSearchBarRestingMarginStart((Launcher) this.mActivityContext) : ((LauncherState) stateManager.getTargetState()).getFloatingSearchBarRestingMarginStart((Launcher) this.mActivityContext);
        }
        return super.getFloatingSearchBarRestingMarginStart();
    }

    @Override // com.android.launcher3.allapps.ActivityAllAppsContainerView
    public final boolean isInAllApps() {
        return ((Launcher) this.mActivityContext).getStateManager().isInStableState(LauncherState.ALL_APPS);
    }

    @Override // com.android.launcher3.allapps.ActivityAllAppsContainerView
    public boolean shouldFloatingSearchBarBePillWhenUnfocused() {
        if (isSearchBarFloating()) {
            Launcher launcher = (Launcher) this.mActivityContext;
            StateManager stateManager = launcher.getStateManager();
            return (!stateManager.isInTransition() || stateManager.getTargetState() == null) ? ((LauncherState) stateManager.getCurrentStableState()).shouldFloatingSearchBarUsePillWhenUnfocused(launcher) : ((LauncherState) stateManager.getTargetState()).shouldFloatingSearchBarUsePillWhenUnfocused(launcher);
        }
        return false;
    }

    public LauncherAllAppsContainerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LauncherAllAppsContainerView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
    }
}
