package com.android.quickstep.util;

import android.content.Context;
import android.content.SharedPreferences;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.LauncherState;
import com.android.launcher3.Utilities;
import com.android.launcher3.appprediction.AppsDividerView;
import com.android.launcher3.hybridhotseat.HotseatPredictionController;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.uioverrides.QuickstepLauncher;
import com.android.launcher3.util.DisplayController;
import com.android.launcher3.util.NavigationMode;
import com.android.launcher3.util.OnboardingPrefs;
import com.android.quickstep.views.AllAppsEduView;
/* loaded from: classes.dex */
public class QuickstepOnboardingPrefs extends OnboardingPrefs {
    public QuickstepOnboardingPrefs(final QuickstepLauncher quickstepLauncher, SharedPreferences sharedPreferences) {
        super(quickstepLauncher, sharedPreferences);
        final StateManager stateManager = quickstepLauncher.getStateManager();
        if (!getBoolean(OnboardingPrefs.HOME_BOUNCE_SEEN)) {
            stateManager.addStateListener(new StateManager.StateListener() { // from class: com.android.quickstep.util.QuickstepOnboardingPrefs.1
                @Override // com.android.launcher3.statemanager.StateManager.StateListener
                public /* bridge */ /* synthetic */ void onStateTransitionStart(Object obj) {
                }

                @Override // com.android.launcher3.statemanager.StateManager.StateListener
                public void onStateTransitionComplete(LauncherState launcherState) {
                    boolean z4 = DisplayController.getNavigationMode((Context) ((OnboardingPrefs) QuickstepOnboardingPrefs.this).mLauncher).hasGestures;
                    LauncherState launcherState2 = (LauncherState) stateManager.getLastState();
                    if ((z4 && launcherState == LauncherState.OVERVIEW) || ((!z4 && launcherState == LauncherState.ALL_APPS && launcherState2 == LauncherState.NORMAL) || QuickstepOnboardingPrefs.this.hasReachedMaxCount(OnboardingPrefs.HOME_BOUNCE_COUNT))) {
                        ((OnboardingPrefs) QuickstepOnboardingPrefs.this).mSharedPrefs.edit().putBoolean(OnboardingPrefs.HOME_BOUNCE_SEEN, true).apply();
                        stateManager.removeStateListener(this);
                    }
                }
            });
        }
        if (!Utilities.isRunningInTestHarness() && !hasReachedMaxCount(OnboardingPrefs.HOTSEAT_DISCOVERY_TIP_COUNT)) {
            stateManager.addStateListener(new StateManager.StateListener() { // from class: com.android.quickstep.util.QuickstepOnboardingPrefs.2
                boolean mFromAllApps = false;

                @Override // com.android.launcher3.statemanager.StateManager.StateListener
                public void onStateTransitionComplete(LauncherState launcherState) {
                    HotseatPredictionController hotseatPredictionController = ((QuickstepLauncher) ((OnboardingPrefs) QuickstepOnboardingPrefs.this).mLauncher).getHotseatPredictionController();
                    if (this.mFromAllApps && launcherState == LauncherState.NORMAL && hotseatPredictionController.hasPredictions() && !((QuickstepLauncher) ((OnboardingPrefs) QuickstepOnboardingPrefs.this).mLauncher).getDeviceProfile().isTablet && QuickstepOnboardingPrefs.this.incrementEventCount(OnboardingPrefs.HOTSEAT_DISCOVERY_TIP_COUNT)) {
                        hotseatPredictionController.showEdu();
                        stateManager.removeStateListener(this);
                    }
                }

                @Override // com.android.launcher3.statemanager.StateManager.StateListener
                public void onStateTransitionStart(LauncherState launcherState) {
                    this.mFromAllApps = ((QuickstepLauncher) ((OnboardingPrefs) QuickstepOnboardingPrefs.this).mLauncher).getStateManager().getCurrentStableState() == LauncherState.ALL_APPS;
                }
            });
        }
        if (DisplayController.getNavigationMode(quickstepLauncher) == NavigationMode.NO_BUTTON) {
            stateManager.addStateListener(new StateManager.StateListener() { // from class: com.android.quickstep.util.QuickstepOnboardingPrefs.3
                private static final int MAX_NUM_SWIPES_TO_TRIGGER_EDU = 3;
                private int mCount = 0;
                private boolean mShouldIncreaseCount;

                @Override // com.android.launcher3.statemanager.StateManager.StateListener
                public void onStateTransitionComplete(LauncherState launcherState) {
                    AllAppsEduView allAppsEduView;
                    if (launcherState == LauncherState.NORMAL) {
                        if (this.mCount >= 3) {
                            if (AbstractFloatingView.getOpenView(((OnboardingPrefs) QuickstepOnboardingPrefs.this).mLauncher, 512) == null) {
                                AllAppsEduView.show(quickstepLauncher);
                            }
                            this.mCount = 0;
                            return;
                        }
                        return;
                    }
                    if (this.mShouldIncreaseCount && launcherState == LauncherState.HINT_STATE) {
                        this.mCount++;
                    } else {
                        this.mCount = 0;
                    }
                    if (launcherState != LauncherState.ALL_APPS || (allAppsEduView = (AllAppsEduView) AbstractFloatingView.getOpenView(((OnboardingPrefs) QuickstepOnboardingPrefs.this).mLauncher, 512)) == null) {
                        return;
                    }
                    allAppsEduView.close(false);
                }

                @Override // com.android.launcher3.statemanager.StateManager.StateListener
                public void onStateTransitionStart(LauncherState launcherState) {
                    if (launcherState == LauncherState.NORMAL) {
                        return;
                    }
                    this.mShouldIncreaseCount = launcherState == LauncherState.HINT_STATE && quickstepLauncher.getWorkspace().getNextPage() == 0;
                }
            });
        }
        if (hasReachedMaxCount(OnboardingPrefs.ALL_APPS_VISITED_COUNT)) {
            return;
        }
        ((QuickstepLauncher) this.mLauncher).getStateManager().addStateListener(new StateManager.StateListener() { // from class: com.android.quickstep.util.QuickstepOnboardingPrefs.4
            @Override // com.android.launcher3.statemanager.StateManager.StateListener
            public /* bridge */ /* synthetic */ void onStateTransitionStart(Object obj) {
            }

            @Override // com.android.launcher3.statemanager.StateManager.StateListener
            public void onStateTransitionComplete(LauncherState launcherState) {
                if (launcherState == LauncherState.ALL_APPS) {
                    QuickstepOnboardingPrefs.this.incrementEventCount(OnboardingPrefs.ALL_APPS_VISITED_COUNT);
                    return;
                }
                boolean hasReachedMaxCount = QuickstepOnboardingPrefs.this.hasReachedMaxCount(OnboardingPrefs.ALL_APPS_VISITED_COUNT);
                ((AppsDividerView) ((QuickstepLauncher) ((OnboardingPrefs) QuickstepOnboardingPrefs.this).mLauncher).getAppsView().getFloatingHeaderView().findFixedRowByType(AppsDividerView.class)).setShowAllAppsLabel(!hasReachedMaxCount);
                if (hasReachedMaxCount) {
                    ((QuickstepLauncher) ((OnboardingPrefs) QuickstepOnboardingPrefs.this).mLauncher).getStateManager().removeStateListener(this);
                }
            }
        });
    }
}
