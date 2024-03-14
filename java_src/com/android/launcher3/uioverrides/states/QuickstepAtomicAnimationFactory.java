package com.android.launcher3.uioverrides.states;

import android.util.FloatProperty;
import android.util.Log;
import android.view.animation.Interpolator;
import com.android.launcher3.CellLayout;
import com.android.launcher3.Hotseat;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.Workspace;
import com.android.launcher3.WorkspaceStateTransitionAnimation;
import com.android.launcher3.statemanager.StatefulActivity;
import com.android.launcher3.states.StateAnimationConfig;
import com.android.launcher3.touch.AllAppsSwipeController;
import com.android.launcher3.uioverrides.QuickstepLauncher;
import com.android.launcher3.util.DisplayController;
import com.android.quickstep.util.RecentsAtomicAnimationFactory;
import com.android.quickstep.util.SplitAnimationTimings;
import com.android.quickstep.views.RecentsView;
import e1.b;
import y0.animation.InterpolatorC1488a;
import y0.e;
/* loaded from: classes.dex */
public final class QuickstepAtomicAnimationFactory extends RecentsAtomicAnimationFactory {
    private int mHintToNormalDuration;

    public QuickstepAtomicAnimationFactory(QuickstepLauncher quickstepLauncher) {
        super(quickstepLauncher);
        this.mHintToNormalDuration = -1;
    }

    @Override // com.android.launcher3.statemanager.StateManager.AtomicAnimationFactory
    public final void prepareForAtomicAnimation(Object obj, Object obj2, StateAnimationConfig stateAnimationConfig) {
        LauncherState launcherState = (LauncherState) obj;
        LauncherState launcherState2 = (LauncherState) obj2;
        Log.d("b/279059025", "creating animation fromState: " + launcherState + " toState: " + launcherState2);
        final RecentsView recentsView = (RecentsView) ((QuickstepLauncher) this.mActivity).getOverviewPanel();
        OverviewState overviewState = LauncherState.OVERVIEW;
        boolean z4 = true;
        if ((launcherState == overviewState || launcherState == LauncherState.OVERVIEW_SPLIT_SELECT) && launcherState2 == LauncherState.NORMAL) {
            recentsView.switchToScreenshot(new Runnable() { // from class: e1.a
                @Override // java.lang.Runnable
                public final void run() {
                    RecentsView.this.finishRecentsAnimation(true, null);
                }
            });
            SplitScreenSelectState splitScreenSelectState = LauncherState.OVERVIEW_SPLIT_SELECT;
            if (launcherState == splitScreenSelectState) {
                stateAnimationConfig.setInterpolator(17, e.b(0.0f, 0.4f, e.f12938b));
                stateAnimationConfig.setInterpolator(18, e.b(0.0f, 0.33f, e.f12949m));
            }
            Interpolator interpolator = e.f12949m;
            stateAnimationConfig.setInterpolator(14, e.b(0.0f, 0.25f, interpolator));
            if (launcherState == splitScreenSelectState) {
                interpolator = e.b(0.33f, 1.0f, interpolator);
            }
            stateAnimationConfig.setInterpolator(11, interpolator);
            stateAnimationConfig.setInterpolator(1, e.f12962z);
            Interpolator interpolator2 = e.f12957u;
            stateAnimationConfig.setInterpolator(3, interpolator2);
            if (!DisplayController.getNavigationMode(this.mActivity).hasGestures || recentsView.getTaskViewCount() <= 0) {
                stateAnimationConfig.setInterpolator(7, e.f12961y);
                stateAnimationConfig.setInterpolator(6, e.b(0.0f, 0.9f, interpolator2));
                stateAnimationConfig.setInterpolator(9, e.f12928B);
            } else {
                animation.InterpolatorC1488a animation_interpolatorc1488a = e.f12942f;
                stateAnimationConfig.setInterpolator(6, animation_interpolatorc1488a);
                stateAnimationConfig.setInterpolator(9, animation_interpolatorc1488a);
                stateAnimationConfig.setInterpolator(7, launcherState == splitScreenSelectState ? e.f12939c : e.b(0.0f, 0.75f, e.f12950n));
                stateAnimationConfig.setInterpolator(8, animation_interpolatorc1488a);
                stateAnimationConfig.duration = Math.max(stateAnimationConfig.duration, Math.min(750, (recentsView.getNextPage() - 0) * 150));
                if (DisplayController.isTransientTaskbar(this.mActivity) && ((QuickstepLauncher) this.mActivity).getDeviceProfile().isTaskbarPresent) {
                    stateAnimationConfig.duration = Math.min(stateAnimationConfig.duration, 300L);
                }
                recentsView.snapToPage(0, Math.toIntExact(stateAnimationConfig.duration));
            }
            Workspace workspace = ((QuickstepLauncher) this.mActivity).getWorkspace();
            boolean z5 = workspace.getVisibility() == 0;
            if (z5) {
                CellLayout cellLayout = (CellLayout) workspace.getChildAt(workspace.getCurrentPage());
                z5 = cellLayout.getVisibility() == 0 && cellLayout.getShortcutsAndWidgets().getAlpha() > 0.0f;
            }
            if (!z5) {
                workspace.setScaleX(0.92f);
                workspace.setScaleY(0.92f);
            }
            Hotseat hotseat = ((QuickstepLauncher) this.mActivity).getHotseat();
            if (hotseat.getVisibility() != 0 || hotseat.getAlpha() <= 0.0f) {
                z4 = false;
            }
            if (z4) {
                return;
            }
            hotseat.setScaleX(0.92f);
            hotseat.setScaleY(0.92f);
            return;
        }
        LauncherState launcherState3 = LauncherState.NORMAL;
        if ((launcherState == launcherState3 || launcherState == LauncherState.HINT_STATE || launcherState == LauncherState.HINT_STATE_TWO_BUTTON) && launcherState2 == overviewState) {
            if (DisplayController.getNavigationMode(this.mActivity).hasGestures) {
                stateAnimationConfig.setInterpolator(1, launcherState == launcherState3 ? e.f12957u : e.f12944h);
                stateAnimationConfig.setInterpolator(2, e.f12957u);
                if (recentsView.getTaskViewCount() > 0) {
                    stateAnimationConfig.setInterpolator(9, e.f12941e);
                } else {
                    stateAnimationConfig.setInterpolator(9, e.f12944h);
                }
            } else {
                Interpolator interpolator3 = e.f12944h;
                stateAnimationConfig.setInterpolator(1, interpolator3);
                stateAnimationConfig.setInterpolator(9, interpolator3);
                if (recentsView.getVisibility() != 0 || recentsView.getContentAlpha() == 0.0f) {
                    RecentsView.RECENTS_SCALE_PROPERTY.set((FloatProperty) recentsView, Float.valueOf(1.33f));
                }
            }
            Interpolator interpolator4 = e.f12944h;
            stateAnimationConfig.setInterpolator(3, interpolator4);
            stateAnimationConfig.setInterpolator(10, interpolator4);
            stateAnimationConfig.setInterpolator(6, interpolator4);
            stateAnimationConfig.setInterpolator(13, interpolator4);
            stateAnimationConfig.setInterpolator(11, new b());
            stateAnimationConfig.setInterpolator(7, interpolator4);
            stateAnimationConfig.setInterpolator(8, interpolator4);
        } else if (launcherState == LauncherState.HINT_STATE && launcherState2 == launcherState3) {
            stateAnimationConfig.setInterpolator(13, e.f12931E);
            if (this.mHintToNormalDuration == -1) {
                StatefulActivity statefulActivity = this.mActivity;
                this.mHintToNormalDuration = (int) WorkspaceStateTransitionAnimation.getWorkspaceSpringScaleAnimator((Launcher) statefulActivity, ((QuickstepLauncher) statefulActivity).getWorkspace(), launcherState2.getWorkspaceScaleAndTranslation((Launcher) this.mActivity).scale).getDuration();
            }
            stateAnimationConfig.duration = Math.max(stateAnimationConfig.duration, this.mHintToNormalDuration);
        } else {
            AllAppsState allAppsState = LauncherState.ALL_APPS;
            if (launcherState == allAppsState && launcherState2 == launcherState3) {
                AllAppsSwipeController.applyAllAppsToNormalConfig((Launcher) this.mActivity, stateAnimationConfig);
            } else if (launcherState == launcherState3 && launcherState2 == allAppsState) {
                AllAppsSwipeController.applyNormalToAllAppsAnimConfig((Launcher) this.mActivity, stateAnimationConfig);
            } else if (launcherState == overviewState && launcherState2 == LauncherState.OVERVIEW_SPLIT_SELECT) {
                SplitAnimationTimings splitAnimationTimings = ((QuickstepLauncher) this.mActivity).getDeviceProfile().isTablet ? SplitAnimationTimings.TABLET_OVERVIEW_TO_SPLIT : SplitAnimationTimings.PHONE_OVERVIEW_TO_SPLIT;
                stateAnimationConfig.setInterpolator(14, e.b(splitAnimationTimings.getActionsFadeStartOffset(), splitAnimationTimings.getActionsFadeEndOffset(), e.f12949m));
            } else if ((launcherState == launcherState3 || launcherState == allAppsState) && launcherState2 == LauncherState.OVERVIEW_SPLIT_SELECT) {
                SplitAnimationTimings splitAnimationTimings2 = SplitAnimationTimings.TABLET_HOME_TO_SPLIT;
                stateAnimationConfig.setInterpolator(11, e.b(splitAnimationTimings2.getScrimFadeInStartOffset(), splitAnimationTimings2.getScrimFadeInEndOffset(), e.f12949m));
                Interpolator interpolator5 = e.f12943g;
                stateAnimationConfig.setInterpolator(7, interpolator5);
                stateAnimationConfig.setInterpolator(8, interpolator5);
            }
        }
    }
}
