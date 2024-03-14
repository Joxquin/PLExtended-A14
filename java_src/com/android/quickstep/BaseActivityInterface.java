package com.android.quickstep;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.FloatProperty;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.RemoteAnimationTarget;
import android.view.View;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.MotionEventsUtils;
import com.android.launcher3.anim.AnimatorPlaybackController;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.statehandlers.DepthController;
import com.android.launcher3.statehandlers.DesktopVisibilityController;
import com.android.launcher3.statemanager.BaseState;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.statemanager.StatefulActivity;
import com.android.launcher3.taskbar.TaskbarUIController;
import com.android.launcher3.touch.PagedOrientationHandler;
import com.android.launcher3.util.DisplayController;
import com.android.launcher3.util.NavigationMode;
import com.android.quickstep.BaseActivityInterface;
import com.android.quickstep.GestureState;
import com.android.quickstep.util.ActivityInitListener;
import com.android.quickstep.util.AnimatorControllerWithResistance;
import com.android.quickstep.views.DesktopTaskView;
import com.android.quickstep.views.RecentsView;
import com.android.systemui.shared.R;
import java.util.HashMap;
import java.util.Optional;
import java.util.function.Consumer;
import java.util.function.Predicate;
/* loaded from: classes.dex */
public abstract class BaseActivityInterface {
    private final BaseState mBackgroundState;
    private Runnable mOnInitBackgroundStateUICallback = null;
    private BaseState mTargetState;
    public final boolean rotationSupportedByActivity;

    /* loaded from: classes.dex */
    public interface AnimationFactory {
        void createActivityInterface(long j4);

        default boolean hasRecentsEverAttachedToAppWindow() {
            return false;
        }

        default boolean isRecentsAttachedToAppWindow() {
            return false;
        }

        default void setEndTarget(GestureState.GestureEndTarget gestureEndTarget) {
        }

        default void setRecentsAttachedToAppWindow(boolean z4, boolean z5) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class DefaultAnimationFactory implements AnimationFactory {
        protected final StatefulActivity mActivity;
        private final Consumer mCallback;
        private boolean mHasEverAttachedToWindow;
        private boolean mIsAttachedToWindow;
        private final BaseState mStartState;

        public DefaultAnimationFactory(Consumer consumer) {
            this.mCallback = consumer;
            StatefulActivity createdActivity = BaseActivityInterface.this.getCreatedActivity();
            this.mActivity = createdActivity;
            this.mStartState = createdActivity.getStateManager().getState();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$createActivityInterface$0(AnimatorPlaybackController animatorPlaybackController) {
            StateManager stateManager = this.mActivity.getStateManager();
            int i4 = (animatorPlaybackController.getInterpolatedProgress() > 0.5d ? 1 : (animatorPlaybackController.getInterpolatedProgress() == 0.5d ? 0 : -1));
            BaseActivityInterface baseActivityInterface = BaseActivityInterface.this;
            stateManager.goToState(i4 > 0 ? baseActivityInterface.mTargetState : baseActivityInterface.mBackgroundState, false);
        }

        @Override // com.android.quickstep.BaseActivityInterface.AnimationFactory
        public void createActivityInterface(long j4) {
            PendingAnimation pendingAnimation = new PendingAnimation(j4 * 2);
            createBackgroundToOverviewAnim(this.mActivity, pendingAnimation);
            final AnimatorPlaybackController createPlaybackController = pendingAnimation.createPlaybackController();
            this.mActivity.getStateManager().setCurrentUserControlledAnimation(createPlaybackController);
            createPlaybackController.setEndAction(new Runnable() { // from class: com.android.quickstep.y
                @Override // java.lang.Runnable
                public final void run() {
                    BaseActivityInterface.DefaultAnimationFactory.this.lambda$createActivityInterface$0(createPlaybackController);
                }
            });
            RecentsView recentsView = (RecentsView) this.mActivity.getOverviewPanel();
            this.mCallback.accept(AnimatorControllerWithResistance.createForRecents(createPlaybackController, this.mActivity, recentsView.getPagedViewOrientedState(), this.mActivity.getDeviceProfile(), recentsView, RecentsView.RECENTS_SCALE_PROPERTY, recentsView, RecentsView.TASK_SECONDARY_TRANSLATION));
            if (DisplayController.getNavigationMode(this.mActivity) == NavigationMode.NO_BUTTON) {
                setRecentsAttachedToAppWindow(this.mIsAttachedToWindow, false);
            }
        }

        public void createBackgroundToOverviewAnim(StatefulActivity statefulActivity, PendingAnimation pendingAnimation) {
            RecentsView recentsView = (RecentsView) statefulActivity.getOverviewPanel();
            FloatProperty floatProperty = RecentsView.RECENTS_SCALE_PROPERTY;
            float maxScaleForFullScreen = recentsView.getMaxScaleForFullScreen();
            TimeInterpolator timeInterpolator = y0.e.f12949m;
            pendingAnimation.addFloat(recentsView, floatProperty, maxScaleForFullScreen, 1.0f, timeInterpolator);
            pendingAnimation.addFloat(recentsView, RecentsView.FULLSCREEN_PROGRESS, 1.0f, 0.0f, timeInterpolator);
            pendingAnimation.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.BaseActivityInterface.DefaultAnimationFactory.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    TaskbarUIController taskbarController = BaseActivityInterface.this.getTaskbarController();
                    if (taskbarController != null) {
                        taskbarController.setSystemGestureInProgress(true);
                    }
                }
            });
        }

        @Override // com.android.quickstep.BaseActivityInterface.AnimationFactory
        public boolean hasRecentsEverAttachedToAppWindow() {
            return this.mHasEverAttachedToWindow;
        }

        public StatefulActivity initBackgroundStateUI() {
            BaseState baseState = this.mStartState;
            if (baseState.shouldDisableRestore()) {
                baseState = this.mActivity.getStateManager().getRestState();
            }
            this.mActivity.getStateManager().setRestState(baseState);
            this.mActivity.getStateManager().goToState(BaseActivityInterface.this.mBackgroundState, false);
            BaseActivityInterface.this.onInitBackgroundStateUI();
            return this.mActivity;
        }

        @Override // com.android.quickstep.BaseActivityInterface.AnimationFactory
        public boolean isRecentsAttachedToAppWindow() {
            return this.mIsAttachedToWindow;
        }

        @Override // com.android.quickstep.BaseActivityInterface.AnimationFactory
        public void setEndTarget(GestureState.GestureEndTarget gestureEndTarget) {
            BaseActivityInterface baseActivityInterface = BaseActivityInterface.this;
            baseActivityInterface.mTargetState = baseActivityInterface.stateFromGestureEndTarget(gestureEndTarget);
        }

        @Override // com.android.quickstep.BaseActivityInterface.AnimationFactory
        public void setRecentsAttachedToAppWindow(final boolean z4, boolean z5) {
            if (this.mIsAttachedToWindow == z4 && z5) {
                return;
            }
            this.mActivity.getStateManager().cancelStateElementAnimation(0);
            this.mActivity.getStateManager().cancelStateElementAnimation(1);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.BaseActivityInterface.DefaultAnimationFactory.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    super.onAnimationStart(animator);
                    DefaultAnimationFactory.this.mIsAttachedToWindow = z4;
                    if (z4) {
                        DefaultAnimationFactory.this.mHasEverAttachedToWindow = true;
                    }
                }
            });
            long j4 = z5 ? 300L : 0L;
            StateManager stateManager = this.mActivity.getStateManager();
            float[] fArr = new float[1];
            fArr[0] = z4 ? 1.0f : 0.0f;
            Animator createStateElementAnimation = stateManager.createStateElementAnimation(0, fArr);
            createStateElementAnimation.setInterpolator(z4 ? y0.e.f12941e : y0.e.f12960x);
            createStateElementAnimation.setDuration(j4);
            animatorSet.play(createStateElementAnimation);
            Animator createStateElementAnimation2 = this.mActivity.getStateManager().createStateElementAnimation(1, ((Float) RecentsView.ADJACENT_PAGE_HORIZONTAL_OFFSET.get((RecentsView) this.mActivity.getOverviewPanel())).floatValue(), z4 ? 0.0f : 1.0f);
            createStateElementAnimation2.setDuration(j4);
            animatorSet.play(createStateElementAnimation2);
            animatorSet.start();
        }
    }

    public BaseActivityInterface(boolean z4, BaseState baseState, BaseState baseState2) {
        this.rotationSupportedByActivity = z4;
        this.mTargetState = baseState;
        this.mBackgroundState = baseState2;
    }

    private void calculateFocusTaskSize(Context context, DeviceProfile deviceProfile, Rect rect) {
        float f4 = context.getResources().getFloat(R.dimen.overview_max_scale);
        Rect rect2 = new Rect();
        calculateGridSize(deviceProfile, rect2);
        calculateTaskSizeInternal(context, deviceProfile, rect2, f4, 17, rect);
    }

    private void calculateTaskSizeInternal(Context context, DeviceProfile deviceProfile, int i4, int i5, int i6, float f4, int i7, Rect rect) {
        Rect insets = deviceProfile.getInsets();
        Rect rect2 = new Rect(0, 0, deviceProfile.widthPx, deviceProfile.heightPx);
        rect2.inset(insets.left, insets.top, insets.right, insets.bottom);
        rect2.inset(i6, i4, i6, i5);
        calculateTaskSizeInternal(context, deviceProfile, rect2, f4, i7, rect);
    }

    private static PointF getTaskDimension(Context context, DeviceProfile deviceProfile) {
        PointF pointF = new PointF();
        getTaskDimension(context, deviceProfile, pointF);
        return pointF;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onInitBackgroundStateUI() {
        Runnable runnable = this.mOnInitBackgroundStateUICallback;
        if (runnable != null) {
            runnable.run();
            this.mOnInitBackgroundStateUICallback = null;
        }
    }

    public abstract boolean allowAllAppsFromOverview();

    public abstract boolean allowMinimizeSplitScreen();

    public final void calculateDesktopTaskSize(Context context, DeviceProfile deviceProfile, Rect rect) {
        calculateFocusTaskSize(context, deviceProfile, rect);
    }

    public final void calculateGridSize(DeviceProfile deviceProfile, Rect rect) {
        Rect insets = deviceProfile.getInsets();
        int i4 = deviceProfile.overviewTaskThumbnailTopMarginPx;
        int overviewActionsClaimedSpaceBelow = deviceProfile.getOverviewActionsClaimedSpaceBelow() + ((deviceProfile.isTablet && FeatureFlags.ENABLE_GRID_ONLY_OVERVIEW.get()) ? 0 : deviceProfile.overviewActionsTopMarginPx + deviceProfile.overviewActionsHeight);
        int i5 = deviceProfile.overviewGridSideMargin;
        rect.set(0, 0, deviceProfile.widthPx, deviceProfile.heightPx);
        rect.inset(Math.max(insets.left, i5), insets.top + i4, Math.max(insets.right, i5), Math.max(insets.bottom, overviewActionsClaimedSpaceBelow));
    }

    public final void calculateGridTaskSize(Context context, DeviceProfile deviceProfile, Rect rect, PagedOrientationHandler pagedOrientationHandler) {
        Resources resources = context.getResources();
        Rect rect2 = new Rect();
        if (FeatureFlags.ENABLE_GRID_ONLY_OVERVIEW.get()) {
            calculateGridSize(deviceProfile, rect2);
        } else {
            calculateFocusTaskSize(context, deviceProfile, rect2);
        }
        PointF taskDimension = getTaskDimension(context, deviceProfile);
        float height = ((((rect2.height() + deviceProfile.overviewTaskThumbnailTopMarginPx) - deviceProfile.overviewRowSpacing) / 2.0f) - deviceProfile.overviewTaskThumbnailTopMarginPx) / taskDimension.y;
        Gravity.apply((pagedOrientationHandler.getRecentsRtlSetting(resources) ? 5 : 3) | 48, Math.round(taskDimension.x * height), Math.round(height * taskDimension.y), rect2, rect);
    }

    public final void calculateModalTaskSize(Context context, DeviceProfile deviceProfile, Rect rect, PagedOrientationHandler pagedOrientationHandler) {
        calculateTaskSize(context, deviceProfile, rect, pagedOrientationHandler);
        boolean z4 = deviceProfile.isTablet && FeatureFlags.ENABLE_GRID_ONLY_OVERVIEW.get();
        calculateTaskSizeInternal(context, deviceProfile, deviceProfile.overviewTaskMarginPx, z4 ? deviceProfile.overviewActionsTopMarginPx + deviceProfile.overviewActionsHeight + deviceProfile.stashedTaskbarHeight : (deviceProfile.heightPx - rect.bottom) - deviceProfile.getInsets().bottom, z4 ? 0 : Math.round((deviceProfile.availableWidthPx - (rect.width() * context.getResources().getFloat(R.dimen.overview_modal_max_scale))) / 2.0f), 1.0f, 81, rect);
    }

    public final void calculateTaskSize(Context context, DeviceProfile deviceProfile, Rect rect, PagedOrientationHandler pagedOrientationHandler) {
        if (deviceProfile.isTablet) {
            if (FeatureFlags.ENABLE_GRID_ONLY_OVERVIEW.get()) {
                calculateGridTaskSize(context, deviceProfile, rect, pagedOrientationHandler);
                return;
            } else {
                calculateFocusTaskSize(context, deviceProfile, rect);
                return;
            }
        }
        Resources resources = context.getResources();
        calculateTaskSizeInternal(context, deviceProfile, deviceProfile.overviewTaskThumbnailTopMarginPx, deviceProfile.getOverviewActionsClaimedSpaceBelow() + ((deviceProfile.isTablet && FeatureFlags.ENABLE_GRID_ONLY_OVERVIEW.get()) ? 0 : deviceProfile.overviewActionsTopMarginPx + deviceProfile.overviewActionsHeight), resources.getDimensionPixelSize(R.dimen.overview_minimum_next_prev_size) + deviceProfile.overviewTaskMarginPx, resources.getFloat(R.dimen.overview_max_scale), 17, rect);
    }

    public void closeOverlay() {
        Optional.ofNullable(getTaskbarController()).ifPresent(new C0611x());
    }

    public abstract ActivityInitListener createActivityInitListener(Predicate predicate);

    public boolean deferStartingActivity(RecentsAnimationDeviceState recentsAnimationDeviceState, MotionEvent motionEvent) {
        return recentsAnimationDeviceState.isInDeferredGestureRegion(motionEvent) || recentsAnimationDeviceState.isImeRenderingNavButtons() || MotionEventsUtils.isTrackpadMultiFingerSwipe(motionEvent);
    }

    public abstract StatefulActivity getCreatedActivity();

    public DepthController getDepthController() {
        return null;
    }

    public DesktopVisibilityController getDesktopVisibilityController() {
        return null;
    }

    public abstract int getOverviewScrimColorForState(StatefulActivity statefulActivity, BaseState baseState);

    public abstract Rect getOverviewWindowBounds(Rect rect, RemoteAnimationTarget remoteAnimationTarget);

    public Animator getParallelAnimationToLauncher(GestureState.GestureEndTarget gestureEndTarget, long j4, RecentsAnimationCallbacks recentsAnimationCallbacks) {
        StatefulActivity createdActivity;
        if (gestureEndTarget != GestureState.GestureEndTarget.RECENTS || (createdActivity = getCreatedActivity()) == null) {
            return null;
        }
        ObjectAnimator ofArgb = ObjectAnimator.ofArgb(createdActivity.getScrimView(), LauncherAnimUtils.VIEW_BACKGROUND_COLOR, getOverviewScrimColorForState(createdActivity, stateFromGestureEndTarget(gestureEndTarget)));
        ofArgb.setDuration(j4);
        return ofArgb;
    }

    public abstract int getSwipeUpDestinationAndLength(DeviceProfile deviceProfile, Context context, Rect rect, PagedOrientationHandler pagedOrientationHandler);

    public abstract TaskbarUIController getTaskbarController();

    public abstract RecentsView getVisibleRecentsView();

    public abstract boolean isInLiveTileMode();

    public final boolean isResumed() {
        StatefulActivity createdActivity = getCreatedActivity();
        return createdActivity != null && createdActivity.hasBeenResumed();
    }

    public final boolean isStarted() {
        StatefulActivity createdActivity = getCreatedActivity();
        return createdActivity != null && createdActivity.isStarted();
    }

    public abstract void onAssistantVisibilityChanged(float f4);

    public abstract void onExitOverview(RotationTouchHelper rotationTouchHelper, Runnable runnable);

    public abstract void onLaunchTaskFailed();

    public View onSettledOnEndTarget(GestureState.GestureEndTarget gestureEndTarget) {
        TaskbarUIController taskbarController = getTaskbarController();
        if (taskbarController != null) {
            taskbarController.setSystemGestureInProgress(false);
            return taskbarController.getRootView();
        }
        return null;
    }

    public void onSwipeUpToHomeComplete(RecentsAnimationDeviceState recentsAnimationDeviceState) {
    }

    public void onTransitionCancelled(boolean z4, GestureState.GestureEndTarget gestureEndTarget) {
        DesktopVisibilityController desktopVisibilityController;
        StatefulActivity createdActivity = getCreatedActivity();
        if (createdActivity == null) {
            return;
        }
        BaseState restState = createdActivity.getStateManager().getRestState();
        if (gestureEndTarget != null) {
            restState = stateFromGestureEndTarget(gestureEndTarget);
            if (DesktopTaskView.DESKTOP_MODE_SUPPORTED && (desktopVisibilityController = getDesktopVisibilityController()) != null && desktopVisibilityController.areFreeformTasksVisible() && gestureEndTarget == GestureState.GestureEndTarget.LAST_TASK) {
                restState = createdActivity.getStateManager().getRestState();
                z4 = false;
            }
        }
        createdActivity.getStateManager().goToState(restState, z4);
    }

    public abstract AnimationFactory prepareRecentsUI(RecentsAnimationDeviceState recentsAnimationDeviceState, boolean z4, Consumer consumer);

    public void runOnInitBackgroundStateUI(Runnable runnable) {
        this.mOnInitBackgroundStateUICallback = runnable;
        StatefulActivity createdActivity = getCreatedActivity();
        if (createdActivity == null || createdActivity.getStateManager().getState() != this.mBackgroundState) {
            return;
        }
        onInitBackgroundStateUI();
    }

    public void setOnDeferredActivityLaunchCallback(Runnable runnable) {
    }

    public boolean shouldCancelCurrentGesture() {
        return false;
    }

    public abstract BaseState stateFromGestureEndTarget(GestureState.GestureEndTarget gestureEndTarget);

    public void switchRunningTaskViewToScreenshot(HashMap hashMap, Runnable runnable) {
        StatefulActivity createdActivity = getCreatedActivity();
        if (createdActivity == null) {
            return;
        }
        RecentsView recentsView = (RecentsView) createdActivity.getOverviewPanel();
        if (recentsView != null) {
            recentsView.switchToScreenshot(hashMap, runnable);
        } else if (runnable != null) {
            runnable.run();
        }
    }

    public abstract boolean switchToRecentsIfVisible(Runnable runnable);

    public static void getTaskDimension(Context context, DeviceProfile deviceProfile, PointF pointF) {
        pointF.x = deviceProfile.widthPx;
        pointF.y = deviceProfile.heightPx;
        if (!deviceProfile.isTablet || DisplayController.isTransientTaskbar(context)) {
            return;
        }
        pointF.y -= deviceProfile.taskbarHeight;
    }

    private void calculateTaskSizeInternal(Context context, DeviceProfile deviceProfile, Rect rect, float f4, int i4, Rect rect2) {
        PointF taskDimension = getTaskDimension(context, deviceProfile);
        float min = Math.min(Math.min(rect.width() / taskDimension.x, rect.height() / taskDimension.y), f4);
        Gravity.apply(i4, Math.round(taskDimension.x * min), Math.round(min * taskDimension.y), rect, rect2);
    }
}
