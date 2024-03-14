package com.android.launcher3.uioverrides;

import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.util.FloatProperty;
import android.util.Log;
import android.util.Pair;
import android.view.animation.Interpolator;
import com.android.launcher3.LauncherState;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.AnimatorListeners;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.anim.PropertySetter;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.states.StateAnimationConfig;
import com.android.launcher3.util.MultiPropertyFactory;
import com.android.quickstep.util.AnimUtils;
import com.android.quickstep.util.SplitAnimationTimings;
import com.android.quickstep.views.ClearAllButton;
import com.android.quickstep.views.LauncherRecentsView;
import com.android.quickstep.views.RecentsView;
/* loaded from: classes.dex */
public final class RecentsViewStateController extends BaseRecentsViewStateController {
    private void handleSplitSelectionState(LauncherState launcherState, PendingAnimation pendingAnimation, boolean z4) {
        if (launcherState != LauncherState.OVERVIEW_SPLIT_SELECT) {
            return;
        }
        QuickstepLauncher quickstepLauncher = this.mLauncher;
        Pair splitSelectTaskOffset = ((RecentsView) quickstepLauncher.getOverviewPanel()).getPagedOrientationHandler().getSplitSelectTaskOffset(RecentsView.TASK_PRIMARY_SPLIT_TRANSLATION, RecentsView.TASK_SECONDARY_SPLIT_TRANSLATION, quickstepLauncher.getDeviceProfile());
        SplitAnimationTimings deviceOverviewToSplitTimings = AnimUtils.getDeviceOverviewToSplitTimings(quickstepLauncher.getDeviceProfile().isTablet);
        LauncherRecentsView launcherRecentsView = (LauncherRecentsView) this.mRecentsView;
        launcherRecentsView.createSplitSelectInitAnimation(pendingAnimation, launcherState.getTransitionDuration(quickstepLauncher, true));
        pendingAnimation.setFloat(launcherRecentsView, (FloatProperty) splitSelectTaskOffset.first, launcherState.getSplitSelectTranslation(quickstepLauncher), deviceOverviewToSplitTimings.getGridSlidePrimaryInterpolator());
        pendingAnimation.setFloat(launcherRecentsView, (FloatProperty) splitSelectTaskOffset.second, 0.0f, deviceOverviewToSplitTimings.getGridSlideSecondaryInterpolator());
        if (z4) {
            return;
        }
        AnimatorSet buildAnim = pendingAnimation.buildAnim();
        buildAnim.start();
        buildAnim.end();
    }

    private void setAlphas(LauncherState launcherState, PropertySetter propertySetter, StateAnimationConfig stateAnimationConfig) {
        QuickstepLauncher quickstepLauncher = this.mLauncher;
        float f4 = launcherState.areElementsVisible(quickstepLauncher, 16) ? 1.0f : 0.0f;
        ClearAllButton clearAllButton = ((LauncherRecentsView) this.mRecentsView).getClearAllButton();
        FloatProperty floatProperty = ClearAllButton.VISIBILITY_ALPHA;
        Interpolator interpolator = y0.e.f12949m;
        propertySetter.setFloat(clearAllButton, floatProperty, f4, interpolator);
        propertySetter.setFloat(quickstepLauncher.getActionsView().getVisibilityAlpha(), MultiPropertyFactory.MULTI_PROPERTY_VALUE, launcherState.areElementsVisible(quickstepLauncher, 8) ? 1.0f : 0.0f, stateAnimationConfig.getInterpolator(14, interpolator));
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateHandler
    public final void setState(Object obj) {
        LauncherState launcherState = (LauncherState) obj;
        QuickstepLauncher quickstepLauncher = this.mLauncher;
        float[] overviewScaleAndOffset = launcherState.getOverviewScaleAndOffset(quickstepLauncher);
        FloatProperty floatProperty = RecentsView.RECENTS_SCALE_PROPERTY;
        Float valueOf = Float.valueOf(overviewScaleAndOffset[0]);
        RecentsView recentsView = this.mRecentsView;
        floatProperty.set((FloatProperty) recentsView, valueOf);
        RecentsView.ADJACENT_PAGE_HORIZONTAL_OFFSET.set((FloatProperty) recentsView, Float.valueOf(overviewScaleAndOffset[1]));
        RecentsView.TASK_SECONDARY_TRANSLATION.set((FloatProperty) recentsView, Float.valueOf(0.0f));
        FloatProperty floatProperty2 = RecentsView.CONTENT_ALPHA;
        boolean z4 = launcherState.overviewUi;
        floatProperty2.set((FloatProperty) recentsView, Float.valueOf(z4 ? 1.0f : 0.0f));
        RecentsView.TASK_MODALNESS.set((FloatProperty) recentsView, Float.valueOf(launcherState.getOverviewModalness()));
        RecentsView.RECENTS_GRID_PROGRESS.set((FloatProperty) recentsView, Float.valueOf(launcherState.displayOverviewTasksAsGrid(quickstepLauncher.getDeviceProfile()) ? 1.0f : 0.0f));
        RecentsView.TASK_THUMBNAIL_SPLASH_ALPHA.set((FloatProperty) recentsView, Float.valueOf(launcherState.showTaskThumbnailSplash() ? 1.0f : 0.0f));
        if (z4) {
            LauncherRecentsView launcherRecentsView = (LauncherRecentsView) recentsView;
            launcherRecentsView.updateEmptyMessage();
            launcherRecentsView.resetTaskVisuals();
        }
        setAlphas(launcherState, PropertySetter.NO_ANIM_PROPERTY_SETTER, new StateAnimationConfig());
        ((LauncherRecentsView) recentsView).setFullscreenProgress(launcherState.getOverviewFullscreenProgress());
        quickstepLauncher.getDepthController().setHasContentBehindLauncher(z4);
        handleSplitSelectionState(launcherState, new PendingAnimation(launcherState.getTransitionDuration(quickstepLauncher, true)), false);
    }

    @Override // com.android.launcher3.uioverrides.BaseRecentsViewStateController
    public final void setStateWithAnimationInternal(final LauncherState launcherState, StateAnimationConfig stateAnimationConfig, PendingAnimation pendingAnimation) {
        QuickstepLauncher quickstepLauncher = this.mLauncher;
        float[] overviewScaleAndOffset = launcherState.getOverviewScaleAndOffset(quickstepLauncher);
        FloatProperty floatProperty = RecentsView.RECENTS_SCALE_PROPERTY;
        float f4 = overviewScaleAndOffset[0];
        Interpolator interpolator = y0.e.f12949m;
        TimeInterpolator interpolator2 = stateAnimationConfig.getInterpolator(6, interpolator);
        RecentsView recentsView = this.mRecentsView;
        pendingAnimation.setFloat(recentsView, floatProperty, f4, interpolator2);
        pendingAnimation.setFloat(recentsView, RecentsView.ADJACENT_PAGE_HORIZONTAL_OFFSET, overviewScaleAndOffset[1], stateAnimationConfig.getInterpolator(7, interpolator));
        pendingAnimation.setFloat(recentsView, RecentsView.TASK_SECONDARY_TRANSLATION, 0.0f, stateAnimationConfig.getInterpolator(8, interpolator));
        boolean z4 = FeatureFlags.ENABLE_SPLIT_FROM_WORKSPACE_TO_WORKSPACE.get();
        boolean z5 = launcherState.overviewUi;
        boolean z6 = (z4 || z5) ? false : true;
        if (recentsView.isSplitSelectionActive() && z6) {
            pendingAnimation.add(recentsView.getSplitSelectController().getSplitAnimationController().createPlaceholderDismissAnim(quickstepLauncher));
            pendingAnimation.setViewAlpha(recentsView.getSplitInstructionsView(), 0.0f, stateAnimationConfig.getInterpolator(18, interpolator));
        }
        pendingAnimation.setFloat(recentsView, RecentsView.CONTENT_ALPHA, z5 ? 1.0f : 0.0f, stateAnimationConfig.getInterpolator(9, y0.e.f12953q));
        pendingAnimation.setFloat(recentsView, RecentsView.TASK_MODALNESS, launcherState.getOverviewModalness(), stateAnimationConfig.getInterpolator(12, interpolator));
        LauncherState launcherState2 = (LauncherState) quickstepLauncher.getStateManager().getState();
        pendingAnimation.setFloat(recentsView, RecentsView.TASK_THUMBNAIL_SPLASH_ALPHA, launcherState.showTaskThumbnailSplash() ? 1.0f : 0.0f, (launcherState.showTaskThumbnailSplash() || launcherState2 != LauncherState.QUICK_SWITCH_FROM_HOME) ? y0.e.f12941e : interpolator);
        boolean displayOverviewTasksAsGrid = launcherState.displayOverviewTasksAsGrid(quickstepLauncher.getDeviceProfile());
        pendingAnimation.setFloat(recentsView, RecentsView.RECENTS_GRID_PROGRESS, displayOverviewTasksAsGrid ? 1.0f : 0.0f, displayOverviewTasksAsGrid ? launcherState2 == LauncherState.QUICK_SWITCH_FROM_HOME ? interpolator : y0.e.f12941e : y0.e.f12942f);
        if (z5) {
            pendingAnimation.addOnFrameCallback(new Runnable() { // from class: com.android.launcher3.uioverrides.f
                @Override // java.lang.Runnable
                public final void run() {
                    switch (r1) {
                        case 0:
                            ((LauncherRecentsView) ((RecentsViewStateController) this).mRecentsView).loadVisibleTaskData(7);
                            return;
                        default:
                            ((LauncherRecentsView) this).resetTaskVisuals();
                            return;
                    }
                }
            });
            LauncherRecentsView launcherRecentsView = (LauncherRecentsView) recentsView;
            launcherRecentsView.updateEmptyMessage();
            if (Utilities.isRunningInTestHarness()) {
                Log.d("b/246283207", "RecentsView#setStateWithAnimationInternal getCurrentPage(): " + launcherRecentsView.getCurrentPage() + ", getScrollForPage(getCurrentPage())): " + launcherRecentsView.getScrollForPage(launcherRecentsView.getCurrentPage()));
            }
        } else {
            final LauncherRecentsView launcherRecentsView2 = (LauncherRecentsView) recentsView;
            pendingAnimation.addListener(AnimatorListeners.forSuccessCallback(new Runnable() { // from class: com.android.launcher3.uioverrides.f
                @Override // java.lang.Runnable
                public final void run() {
                    switch (r1) {
                        case 0:
                            ((LauncherRecentsView) ((RecentsViewStateController) launcherRecentsView2).mRecentsView).loadVisibleTaskData(7);
                            return;
                        default:
                            ((LauncherRecentsView) launcherRecentsView2).resetTaskVisuals();
                            return;
                    }
                }
            }));
        }
        pendingAnimation.addListener(AnimatorListeners.forSuccessCallback(new Runnable() { // from class: com.android.launcher3.uioverrides.g
            @Override // java.lang.Runnable
            public final void run() {
                RecentsViewStateController.this.mLauncher.getDepthController().setHasContentBehindLauncher(launcherState.overviewUi);
            }
        }));
        handleSplitSelectionState(launcherState, pendingAnimation, true);
        setAlphas(launcherState, pendingAnimation, stateAnimationConfig);
        pendingAnimation.setFloat(recentsView, RecentsView.FULLSCREEN_PROGRESS, launcherState.getOverviewFullscreenProgress(), interpolator);
    }
}
