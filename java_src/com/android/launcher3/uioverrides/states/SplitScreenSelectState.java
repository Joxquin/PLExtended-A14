package com.android.launcher3.uioverrides.states;

import android.content.Context;
import com.android.launcher3.Launcher;
import com.android.launcher3.uioverrides.QuickstepLauncher;
import com.android.quickstep.util.SplitAnimationTimings;
import com.android.quickstep.views.RecentsView;
/* loaded from: classes.dex */
public final class SplitScreenSelectState extends OverviewState {
    public SplitScreenSelectState() {
        super(9);
    }

    @Override // com.android.launcher3.LauncherState
    public final float getSplitSelectTranslation(QuickstepLauncher quickstepLauncher) {
        return ((RecentsView) quickstepLauncher.getOverviewPanel()).getSplitSelectTranslation();
    }

    @Override // com.android.launcher3.uioverrides.states.OverviewState, com.android.launcher3.statemanager.BaseState
    public final int getTransitionDuration(Context context, boolean z4) {
        boolean z5 = ((Launcher) context).getDeviceProfile().isTablet;
        if (z4 && z5) {
            return SplitAnimationTimings.TABLET_ENTER_DURATION;
        }
        if (!z4 || z5) {
            return 500;
        }
        return SplitAnimationTimings.PHONE_ENTER_DURATION;
    }

    @Override // com.android.launcher3.uioverrides.states.OverviewState, com.android.launcher3.LauncherState
    public final int getVisibleElements(Launcher launcher) {
        return 64;
    }
}
