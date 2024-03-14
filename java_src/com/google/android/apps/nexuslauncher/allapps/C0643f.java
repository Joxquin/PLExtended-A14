package com.google.android.apps.nexuslauncher.allapps;

import android.view.animation.Interpolator;
import com.android.launcher3.LauncherState;
import com.android.launcher3.allapps.ActivityAllAppsContainerView;
import com.android.launcher3.states.StateAnimationConfig;
import com.android.launcher3.uioverrides.states.BackgroundAppState;
import com.android.launcher3.uioverrides.states.OverviewState;
import com.google.android.apps.nexuslauncher.NexusLauncherActivity;
/* renamed from: com.google.android.apps.nexuslauncher.allapps.f  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0643f extends P {
    @Override // com.google.android.apps.nexuslauncher.allapps.P
    public final Interpolator a(LauncherState launcherState, boolean z4) {
        return !z4 ? super.a(launcherState, z4) : y0.e.f12949m;
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.P
    public final boolean c(LauncherState launcherState) {
        BackgroundAppState backgroundAppState = LauncherState.BACKGROUND_APP;
        NexusLauncherActivity nexusLauncherActivity = this.f6668d;
        if (!nexusLauncherActivity.isInState(backgroundAppState)) {
            OverviewState overviewState = LauncherState.OVERVIEW;
            if (!nexusLauncherActivity.isInState(overviewState)) {
                return nexusLauncherActivity.isInState(LauncherState.ALL_APPS) && (LauncherState.QUICK_SWITCH_FROM_HOME.equals(launcherState) || overviewState.equals(launcherState));
            }
        }
        return LauncherState.ALL_APPS.equals(launcherState);
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.P
    public final void d(ActivityAllAppsContainerView activityAllAppsContainerView) {
        U u4 = this.f6668d.f6476g;
        OneSearchSessionManager$ZeroEntryState oneSearchSessionManager$ZeroEntryState = OneSearchSessionManager$ZeroEntryState.f6665f;
        u4.J(oneSearchSessionManager$ZeroEntryState);
        u4.B();
        u4.P(true);
        u4.Q("", oneSearchSessionManager$ZeroEntryState, false);
        activityAllAppsContainerView.forceBottomSheetVisible(true);
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.P
    public final boolean f(LauncherState launcherState, StateAnimationConfig stateAnimationConfig) {
        return true;
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.P
    public final boolean g(LauncherState launcherState, boolean z4, boolean z5, boolean z6) {
        return true;
    }
}
