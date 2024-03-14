package com.android.quickstep.fallback;

import android.util.FloatProperty;
import android.util.Pair;
import android.view.animation.Interpolator;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.anim.PropertySetter;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.states.StateAnimationConfig;
import com.android.launcher3.util.MultiPropertyFactory;
import com.android.quickstep.RecentsActivity;
import com.android.quickstep.views.ClearAllButton;
import com.android.quickstep.views.RecentsView;
import java.util.function.Consumer;
import y0.e;
/* loaded from: classes.dex */
public class FallbackRecentsStateController implements StateManager.StateHandler {
    private final RecentsActivity mActivity;
    private final StateAnimationConfig mNoConfig = new StateAnimationConfig();
    private final FallbackRecentsView mRecentsView;

    public FallbackRecentsStateController(RecentsActivity recentsActivity) {
        this.mActivity = recentsActivity;
        this.mRecentsView = (FallbackRecentsView) recentsActivity.getOverviewPanel();
    }

    private boolean isSplitSelectionState(RecentsState recentsState) {
        return recentsState == RecentsState.OVERVIEW_SPLIT_SELECT;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setStateWithAnimation$0() {
        this.mRecentsView.loadVisibleTaskData(7);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setStateWithAnimation$1(Boolean bool) {
        if (bool.booleanValue()) {
            return;
        }
        this.mRecentsView.reset();
    }

    private void setProperties(RecentsState recentsState, StateAnimationConfig stateAnimationConfig, PropertySetter propertySetter) {
        float f4 = recentsState.hasClearAllButton() ? 1.0f : 0.0f;
        ClearAllButton clearAllButton = this.mRecentsView.getClearAllButton();
        FloatProperty floatProperty = ClearAllButton.VISIBILITY_ALPHA;
        Interpolator interpolator = e.f12949m;
        propertySetter.setFloat(clearAllButton, floatProperty, f4, interpolator);
        propertySetter.setFloat(this.mActivity.getActionsView().getVisibilityAlpha(), MultiPropertyFactory.MULTI_PROPERTY_VALUE, recentsState.hasOverviewActions() ? 1.0f : 0.0f, interpolator);
        float[] overviewScaleAndOffset = recentsState.getOverviewScaleAndOffset(this.mActivity);
        propertySetter.setFloat(this.mRecentsView, RecentsView.RECENTS_SCALE_PROPERTY, overviewScaleAndOffset[0], stateAnimationConfig.getInterpolator(6, interpolator));
        propertySetter.setFloat(this.mRecentsView, RecentsView.ADJACENT_PAGE_HORIZONTAL_OFFSET, overviewScaleAndOffset[1], stateAnimationConfig.getInterpolator(7, interpolator));
        propertySetter.setFloat(this.mRecentsView, RecentsView.TASK_SECONDARY_TRANSLATION, 0.0f, stateAnimationConfig.getInterpolator(8, interpolator));
        propertySetter.setFloat(this.mRecentsView, RecentsView.TASK_MODALNESS, recentsState.getOverviewModalness(), stateAnimationConfig.getInterpolator(12, interpolator));
        propertySetter.setFloat(this.mRecentsView, RecentsView.FULLSCREEN_PROGRESS, recentsState.isFullScreen() ? 1.0f : 0.0f, interpolator);
        boolean displayOverviewTasksAsGrid = recentsState.displayOverviewTasksAsGrid(this.mActivity.getDeviceProfile());
        propertySetter.setFloat(this.mRecentsView, RecentsView.RECENTS_GRID_PROGRESS, displayOverviewTasksAsGrid ? 1.0f : 0.0f, displayOverviewTasksAsGrid ? e.f12941e : e.f12942f);
        propertySetter.setFloat(this.mRecentsView, RecentsView.TASK_THUMBNAIL_SPLASH_ALPHA, recentsState.showTaskThumbnailSplash() ? 1.0f : 0.0f, e.f12941e);
        propertySetter.setViewBackgroundColor(this.mActivity.getScrimView(), recentsState.getScrimColor(this.mActivity), stateAnimationConfig.getInterpolator(11, interpolator));
        RecentsState recentsState2 = (RecentsState) this.mActivity.getStateManager().getState();
        if (isSplitSelectionState(recentsState) && !isSplitSelectionState(recentsState2)) {
            int transitionDuration = recentsState.getTransitionDuration(this.mActivity, true);
            PendingAnimation pendingAnimation = new PendingAnimation(transitionDuration);
            this.mRecentsView.createSplitSelectInitAnimation(pendingAnimation, transitionDuration);
            propertySetter.add(pendingAnimation.buildAnim());
        }
        Pair splitSelectTaskOffset = this.mRecentsView.getPagedOrientationHandler().getSplitSelectTaskOffset(RecentsView.TASK_PRIMARY_SPLIT_TRANSLATION, RecentsView.TASK_SECONDARY_SPLIT_TRANSLATION, this.mActivity.getDeviceProfile());
        propertySetter.setFloat(this.mRecentsView, (FloatProperty) splitSelectTaskOffset.first, isSplitSelectionState(recentsState) ? this.mRecentsView.getSplitSelectTranslation() : 0.0f, interpolator);
        propertySetter.setFloat(this.mRecentsView, (FloatProperty) splitSelectTaskOffset.second, 0.0f, interpolator);
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateHandler
    public /* bridge */ /* synthetic */ void onBackCancelled(Object obj) {
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateHandler
    public /* bridge */ /* synthetic */ void onBackProgressed(Object obj, float f4) {
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateHandler
    public void setState(RecentsState recentsState) {
        this.mRecentsView.updateEmptyMessage();
        this.mRecentsView.resetTaskVisuals();
        setProperties(recentsState, this.mNoConfig, PropertySetter.NO_ANIM_PROPERTY_SETTER);
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateHandler
    public void setStateWithAnimation(RecentsState recentsState, StateAnimationConfig stateAnimationConfig, PendingAnimation pendingAnimation) {
        if (stateAnimationConfig.hasAnimationFlag(2)) {
            return;
        }
        pendingAnimation.addOnFrameCallback(new Runnable() { // from class: com.android.quickstep.fallback.a
            @Override // java.lang.Runnable
            public final void run() {
                FallbackRecentsStateController.this.lambda$setStateWithAnimation$0();
            }
        });
        pendingAnimation.addEndListener(new Consumer() { // from class: com.android.quickstep.fallback.b
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                FallbackRecentsStateController.this.lambda$setStateWithAnimation$1((Boolean) obj);
            }
        });
        this.mRecentsView.updateEmptyMessage();
        setProperties(recentsState, stateAnimationConfig, pendingAnimation);
    }
}
