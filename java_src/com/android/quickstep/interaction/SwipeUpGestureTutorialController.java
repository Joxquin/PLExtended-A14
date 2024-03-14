package com.android.quickstep.interaction;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Outline;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.FloatProperty;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.view.animation.Interpolator;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.AnimatedFloat;
import com.android.launcher3.anim.AnimatorListeners;
import com.android.launcher3.anim.AnimatorPlaybackController;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.util.window.RefreshRateTracker;
import com.android.launcher3.views.ClipIconView;
import com.android.quickstep.GestureState;
import com.android.quickstep.OverviewComponentObserver;
import com.android.quickstep.RecentsAnimationDeviceState;
import com.android.quickstep.RemoteTargetGluer;
import com.android.quickstep.SwipeUpAnimationLogic;
import com.android.quickstep.interaction.TutorialController;
import com.android.quickstep.util.RecordingSurfaceTransaction;
import com.android.quickstep.util.RectFSpringAnim;
import com.android.quickstep.util.SurfaceTransaction;
import com.android.quickstep.util.TransformParams;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class SwipeUpGestureTutorialController extends TutorialController {
    private static final int FAKE_PREVIOUS_TASK_MARGIN = Utilities.dpToPx(24.0f);
    private static final long HOME_SWIPE_ANIMATION_DURATION_MILLIS = 625;
    private static final long OVERVIEW_SWIPE_ANIMATION_DURATION_MILLIS = 1000;
    protected static final long TASK_VIEW_END_ANIMATION_DURATION_MILLIS = 300;
    protected static final long TASK_VIEW_FILL_SCREEN_ANIMATION_DELAY_MILLIS = 300;
    private float mFakeTaskViewRadius;
    private final Rect mFakeTaskViewRect;
    private final AnimatorListenerAdapter mResetTaskView;
    SwipeUpAnimationLogic.RunningWindowAnim mRunningWindowAnim;
    private boolean mShowPreviousTasks;
    private boolean mShowTasks;
    final ViewSwipeUpAnimation mTaskViewSwipeUpAnimation;

    /* loaded from: classes.dex */
    class FakeTransformParams extends TransformParams {
        public /* synthetic */ FakeTransformParams(SwipeUpGestureTutorialController swipeUpGestureTutorialController, int i4) {
            this();
        }

        @Override // com.android.quickstep.util.TransformParams
        public void applySurfaceParams(SurfaceTransaction surfaceTransaction) {
            if (surfaceTransaction instanceof RecordingSurfaceTransaction) {
                SurfaceTransaction.MockProperties mockProperties = ((RecordingSurfaceTransaction) surfaceTransaction).mockProperties;
                SwipeUpGestureTutorialController.this.mFakeTaskView.setAnimationMatrix(mockProperties.matrix);
                SwipeUpGestureTutorialController.this.mFakePreviousTaskView.setAnimationMatrix(mockProperties.matrix);
                SwipeUpGestureTutorialController.this.mFakeTaskViewRect.set(mockProperties.windowCrop);
                SwipeUpGestureTutorialController.this.mFakeTaskViewRadius = mockProperties.cornerRadius;
                SwipeUpGestureTutorialController.this.mFakeTaskView.invalidateOutline();
                SwipeUpGestureTutorialController.this.mFakePreviousTaskView.invalidateOutline();
            }
        }

        @Override // com.android.quickstep.util.TransformParams
        public SurfaceTransaction createSurfaceParams(TransformParams.BuilderProxy builderProxy) {
            RecordingSurfaceTransaction recordingSurfaceTransaction = new RecordingSurfaceTransaction();
            builderProxy.onBuildTargetParams(recordingSurfaceTransaction.mockProperties, null, this);
            return recordingSurfaceTransaction;
        }

        private FakeTransformParams() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class ViewSwipeUpAnimation extends SwipeUpAnimationLogic {
        public ViewSwipeUpAnimation(Context context, RecentsAnimationDeviceState recentsAnimationDeviceState, GestureState gestureState) {
            super(context, recentsAnimationDeviceState, gestureState);
            RemoteTargetGluer.RemoteTargetHandle[] remoteTargetHandleArr = this.mRemoteTargetHandles;
            remoteTargetHandleArr[0] = new RemoteTargetGluer.RemoteTargetHandle(remoteTargetHandleArr[0].getTaskViewSimulator(), new FakeTransformParams(SwipeUpGestureTutorialController.this, 0));
            for (RemoteTargetGluer.RemoteTargetHandle remoteTargetHandle : this.mTargetGluer.getRemoteTargetHandles()) {
                remoteTargetHandle.getTaskViewSimulator().getOrientationState().ignoreAllowHomeRotationPreference();
            }
        }

        public AnimatedFloat getCurrentShift() {
            return this.mCurrentShift;
        }

        public RectFSpringAnim handleSwipeUpToHome(PointF pointF) {
            PointF pointF2 = new PointF(pointF.x, pointF.y);
            float f4 = this.mCurrentShift.value;
            float boundToRange = Utilities.boundToRange(f4 - ((pointF2.y * RefreshRateTracker.getSingleFrameMs(this.mContext)) / this.mTransitionDragLength), 0.0f, this.mDragLengthFactor);
            final long min = Math.min(350L, Math.round(Math.abs(((1.0f - f4) * this.mTransitionDragLength) / pointF2.y)) * 2);
            RectFSpringAnim rectFSpringAnim = createWindowAnimationToHome(boundToRange, new SwipeUpAnimationLogic.HomeAnimationFactory() { // from class: com.android.quickstep.interaction.SwipeUpGestureTutorialController.ViewSwipeUpAnimation.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super();
                }

                @Override // com.android.quickstep.SwipeUpAnimationLogic.HomeAnimationFactory
                public AnimatorPlaybackController createActivityAnimationToHome() {
                    return AnimatorPlaybackController.wrap(new AnimatorSet(), min);
                }

                @Override // com.android.quickstep.SwipeUpAnimationLogic.HomeAnimationFactory
                public RectF getWindowTargetRect() {
                    int dpToPx = Utilities.dpToPx(60.0f);
                    int hotseatIconLeft = SwipeUpGestureTutorialController.this.getHotseatIconLeft();
                    int hotseatIconTop = SwipeUpGestureTutorialController.this.getHotseatIconTop();
                    return new RectF(hotseatIconLeft, hotseatIconTop, hotseatIconLeft + dpToPx, hotseatIconTop + dpToPx);
                }

                @Override // com.android.quickstep.SwipeUpAnimationLogic.HomeAnimationFactory
                public void onCancel() {
                    SwipeUpGestureTutorialController.this.mFakeIconView.setVisibility(4);
                }

                @Override // com.android.quickstep.SwipeUpAnimationLogic.HomeAnimationFactory
                public void update(RectF rectF, float f5, float f6) {
                    SwipeUpGestureTutorialController.this.mFakeIconView.setVisibility(0);
                    ViewSwipeUpAnimation viewSwipeUpAnimation = ViewSwipeUpAnimation.this;
                    ClipIconView clipIconView = SwipeUpGestureTutorialController.this.mFakeIconView;
                    clipIconView.update(rectF, f5, 0.9f, f6, false, clipIconView, ((SwipeUpAnimationLogic) viewSwipeUpAnimation).mDp);
                    SwipeUpGestureTutorialController.this.mFakeIconView.setAlpha(1.0f);
                    if (FeatureFlags.ENABLE_NEW_GESTURE_NAV_TUTORIAL.get()) {
                        int d4 = E.a.d(SwipeUpGestureTutorialController.this.getFakeTaskViewColor(), SwipeUpGestureTutorialController.this.getHotseatIconColor(), f5);
                        SwipeUpGestureTutorialController.this.mFakeIconView.getBackground().setTint(d4);
                        SwipeUpGestureTutorialController.this.mFakeTaskView.setBackgroundColor(d4);
                    }
                    SwipeUpGestureTutorialController.this.mFakeTaskView.setAlpha(getWindowAlpha(f5));
                    SwipeUpGestureTutorialController.this.mFakePreviousTaskView.setAlpha(getWindowAlpha(f5));
                }
            })[0];
            rectFSpringAnim.start(this.mContext, this.mDp, pointF2);
            return rectFSpringAnim;
        }

        public void initDp(DeviceProfile deviceProfile) {
            initTransitionEndpoints(deviceProfile);
            this.mRemoteTargetHandles[0].getTaskViewSimulator().setPreviewBounds(new Rect(0, 0, deviceProfile.widthPx, deviceProfile.heightPx), deviceProfile.getInsets());
        }

        @Override // com.android.quickstep.SwipeUpAnimationLogic
        public void onCurrentShiftUpdated() {
            this.mRemoteTargetHandles[0].getPlaybackController().setProgress(this.mCurrentShift.value, this.mDragLengthFactor);
            this.mRemoteTargetHandles[0].getTaskViewSimulator().apply(this.mRemoteTargetHandles[0].getTransformParams());
        }
    }

    public SwipeUpGestureTutorialController(TutorialFragment tutorialFragment, TutorialController.TutorialType tutorialType) {
        super(tutorialFragment, tutorialType);
        Rect rect = new Rect();
        this.mFakeTaskViewRect = rect;
        this.mShowTasks = false;
        this.mShowPreviousTasks = false;
        this.mResetTaskView = new AnimatorListenerAdapter() { // from class: com.android.quickstep.interaction.SwipeUpGestureTutorialController.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                SwipeUpGestureTutorialController.this.resetTaskViews();
            }
        };
        RecentsAnimationDeviceState recentsAnimationDeviceState = new RecentsAnimationDeviceState(this.mContext);
        OverviewComponentObserver overviewComponentObserver = new OverviewComponentObserver(this.mContext, recentsAnimationDeviceState);
        ViewSwipeUpAnimation viewSwipeUpAnimation = new ViewSwipeUpAnimation(this.mContext, recentsAnimationDeviceState, new GestureState(overviewComponentObserver, -1));
        this.mTaskViewSwipeUpAnimation = viewSwipeUpAnimation;
        overviewComponentObserver.onDestroy();
        recentsAnimationDeviceState.destroy();
        viewSwipeUpAnimation.initDp(((InvariantDeviceProfile) InvariantDeviceProfile.INSTANCE.get(this.mContext)).getDeviceProfile(this.mContext).toBuilder(this.mContext).build());
        rect.set(0, 0, this.mTutorialFragment.getRootView().getWidth(), this.mTutorialFragment.getRootView().getFullscreenHeight());
        this.mFakeTaskViewRadius = 0.0f;
        ViewOutlineProvider viewOutlineProvider = new ViewOutlineProvider() { // from class: com.android.quickstep.interaction.SwipeUpGestureTutorialController.2
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                outline.setRoundRect(SwipeUpGestureTutorialController.this.mFakeTaskViewRect, SwipeUpGestureTutorialController.this.mFakeTaskViewRadius);
            }
        };
        this.mFakeTaskView.setClipToOutline(true);
        this.mFakeTaskView.setOutlineProvider(viewOutlineProvider);
        this.mFakePreviousTaskView.setClipToOutline(true);
        this.mFakePreviousTaskView.setOutlineProvider(viewOutlineProvider);
    }

    private void cancelRunningAnimation() {
        SwipeUpAnimationLogic.RunningWindowAnim runningWindowAnim = this.mRunningWindowAnim;
        if (runningWindowAnim != null) {
            runningWindowAnim.cancel();
        }
        this.mRunningWindowAnim = null;
    }

    private Animator createFingerDotSwipeUpAnimator(final float f4) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.quickstep.interaction.r
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                SwipeUpGestureTutorialController.this.lambda$createFingerDotSwipeUpAnimator$0(f4, valueAnimator);
            }
        });
        return ofFloat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createFingerDotSwipeUpAnimator$0(float f4, ValueAnimator valueAnimator) {
        float animatedFraction = valueAnimator.getAnimatedFraction() * (-f4);
        setNavBarGestureProgress(Float.valueOf(animatedFraction));
        this.mFingerDotView.setTranslationY(f4 + animatedFraction);
    }

    public void animateFakeTaskViewHome(PointF pointF, Runnable runnable) {
        cancelRunningAnimation();
        hideFakeTaskbar(true);
        this.mFakePreviousTaskView.setVisibility(4);
        this.mFakeHotseatView.setVisibility(0);
        this.mShowPreviousTasks = false;
        RectFSpringAnim handleSwipeUpToHome = this.mTaskViewSwipeUpAnimation.handleSwipeUpToHome(pointF);
        PendingAnimation pendingAnimation = new PendingAnimation(300L);
        pendingAnimation.setViewAlpha(this.mFakeIconView, 0.0f, y0.e.f12957u);
        final View view = this.mHotseatIconView;
        if (view != null) {
            view.setVisibility(4);
            pendingAnimation.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.interaction.SwipeUpGestureTutorialController.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    super.onAnimationStart(animator);
                    view.setVisibility(0);
                }
            });
        }
        if (runnable != null) {
            pendingAnimation.addListener(AnimatorListeners.forSuccessCallback(runnable));
        }
        final AnimatorSet buildAnim = pendingAnimation.buildAnim();
        Objects.requireNonNull(buildAnim);
        handleSwipeUpToHome.addAnimatorListener(AnimatorListeners.forSuccessCallback(new Runnable() { // from class: com.android.quickstep.interaction.q
            @Override // java.lang.Runnable
            public final void run() {
                buildAnim.start();
            }
        }));
        this.mRunningWindowAnim = SwipeUpAnimationLogic.RunningWindowAnim.wrap(handleSwipeUpToHome);
    }

    public Animator createFingerDotHomeSwipeAnimator(final float f4) {
        Animator duration = createFingerDotSwipeUpAnimator(f4).setDuration(HOME_SWIPE_ANIMATION_DURATION_MILLIS);
        duration.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.interaction.SwipeUpGestureTutorialController.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                SwipeUpGestureTutorialController.this.animateFakeTaskViewHome(new PointF(0.0f, f4 / 625.0f), null);
            }
        });
        return duration;
    }

    public Animator createFingerDotOverviewSwipeAnimator(float f4) {
        Animator duration = createFingerDotSwipeUpAnimator(f4).setDuration(OVERVIEW_SWIPE_ANIMATION_DURATION_MILLIS);
        duration.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.interaction.SwipeUpGestureTutorialController.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                SwipeUpGestureTutorialController.this.mFakePreviousTaskView.setVisibility(0);
                SwipeUpGestureTutorialController.this.onMotionPaused(true);
            }
        });
        return duration;
    }

    public void fadeOutFakeTaskView(boolean z4, Runnable runnable) {
        fadeOutFakeTaskView(z4, true, true, null, runnable);
    }

    @Override // com.android.quickstep.interaction.NavBarGestureHandler.NavBarGestureAttemptCallback
    public void onMotionPaused(boolean z4) {
        if (!isGestureCompleted() && this.mShowTasks) {
            if (!this.mShowPreviousTasks) {
                AnimatedTaskView animatedTaskView = this.mFakePreviousTaskView;
                int i4 = FAKE_PREVIOUS_TASK_MARGIN;
                animatedTaskView.setTranslationX(-((animatedTaskView.getWidth() * 2) + i4));
                this.mFakePreviousTaskView.animate().setDuration(300L).translationX(-(this.mFakePreviousTaskView.getWidth() + i4)).start();
            }
            this.mShowPreviousTasks = true;
        }
    }

    public void resetFakeTaskView(boolean z4) {
        resetFakeTaskView(z4, true);
    }

    public void resetFakeTaskViewFromOverview() {
        resetFakeTaskView(false, false);
    }

    public void resetTaskViews() {
        this.mFakeHotseatView.setVisibility(4);
        this.mFakeIconView.setVisibility(4);
        FeatureFlags.BooleanFlag booleanFlag = FeatureFlags.ENABLE_NEW_GESTURE_NAV_TUTORIAL;
        if (booleanFlag.get()) {
            this.mFakeIconView.getBackground().setTint(getFakeTaskViewColor());
        }
        if (this.mTutorialFragment.getActivity() != null) {
            int fullscreenHeight = this.mTutorialFragment.getRootView().getFullscreenHeight();
            this.mFakeTaskViewRect.set(0, 0, this.mTutorialFragment.getRootView().getWidth(), fullscreenHeight);
        }
        this.mFakeTaskViewRadius = 0.0f;
        this.mFakeTaskView.invalidateOutline();
        this.mFakeTaskView.setVisibility(0);
        if (booleanFlag.get()) {
            this.mFakeTaskView.setBackgroundColor(getFakeTaskViewColor());
        }
        this.mFakeTaskView.setAlpha(1.0f);
        this.mFakePreviousTaskView.setVisibility(4);
        this.mFakePreviousTaskView.setAlpha(1.0f);
        this.mFakePreviousTaskView.setToSingleRowLayout(false);
        this.mShowTasks = false;
        this.mShowPreviousTasks = false;
        this.mRunningWindowAnim = null;
    }

    @Override // com.android.quickstep.interaction.NavBarGestureHandler.NavBarGestureAttemptCallback
    public void setNavBarGestureProgress(Float f4) {
        if (isGestureCompleted()) {
            return;
        }
        TutorialController.TutorialType tutorialType = this.mTutorialType;
        if (tutorialType == TutorialController.TutorialType.HOME_NAVIGATION_COMPLETE || tutorialType == TutorialController.TutorialType.OVERVIEW_NAVIGATION_COMPLETE) {
            this.mFakeTaskView.setVisibility(4);
            this.mFakePreviousTaskView.setVisibility(4);
            return;
        }
        this.mShowTasks = true;
        this.mFakeTaskView.setVisibility(0);
        if (this.mShowPreviousTasks) {
            this.mFakePreviousTaskView.setVisibility(0);
        }
        if (this.mRunningWindowAnim != null || f4 == null) {
            return;
        }
        this.mTaskViewSwipeUpAnimation.updateDisplacement(f4.floatValue());
    }

    public void fadeOutFakeTaskView(boolean z4, final boolean z5, final boolean z6, final ValueAnimator.AnimatorUpdateListener animatorUpdateListener, final Runnable runnable) {
        cancelRunningAnimation();
        PendingAnimation pendingAnimation = new PendingAnimation(300L);
        if (z4) {
            pendingAnimation.setFloat(this.mTaskViewSwipeUpAnimation.getCurrentShift(), AnimatedFloat.VALUE, 1.0f, y0.e.f12957u);
            pendingAnimation.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.interaction.SwipeUpGestureTutorialController.3
                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator, boolean z7) {
                    PendingAnimation pendingAnimation2 = new PendingAnimation(300L);
                    pendingAnimation2.setFloat(SwipeUpGestureTutorialController.this.mTaskViewSwipeUpAnimation.getCurrentShift(), AnimatedFloat.VALUE, 0.0f, y0.e.f12957u);
                    if (z6) {
                        pendingAnimation2.addListener(SwipeUpGestureTutorialController.this.mResetTaskView);
                    }
                    Runnable runnable2 = runnable;
                    if (runnable2 != null) {
                        pendingAnimation2.addListener(AnimatorListeners.forSuccessCallback(runnable2));
                    }
                    ValueAnimator.AnimatorUpdateListener animatorUpdateListener2 = animatorUpdateListener;
                    if (animatorUpdateListener2 != null) {
                        pendingAnimation2.addOnFrameListener(animatorUpdateListener2);
                    }
                    AnimatorSet buildAnim = pendingAnimation2.buildAnim();
                    if (z5 && SwipeUpGestureTutorialController.this.mTutorialFragment.isLargeScreen()) {
                        buildAnim.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.interaction.SwipeUpGestureTutorialController.3.1
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationStart(Animator animator2) {
                                super.onAnimationStart(animator2);
                                AnimatorSet createAnimationToMultiRowLayout = SwipeUpGestureTutorialController.this.mFakePreviousTaskView.createAnimationToMultiRowLayout();
                                if (createAnimationToMultiRowLayout != null) {
                                    createAnimationToMultiRowLayout.setDuration(300L).start();
                                }
                            }
                        });
                    }
                    buildAnim.setStartDelay(100L);
                    buildAnim.start();
                    SwipeUpGestureTutorialController.this.mRunningWindowAnim = SwipeUpAnimationLogic.RunningWindowAnim.wrap(buildAnim);
                }
            });
        } else {
            pendingAnimation.setFloat(this.mTaskViewSwipeUpAnimation.getCurrentShift(), AnimatedFloat.VALUE, 0.0f, y0.e.f12957u);
            if (z6) {
                pendingAnimation.addListener(this.mResetTaskView);
            }
            if (runnable != null) {
                pendingAnimation.addListener(AnimatorListeners.forSuccessCallback(runnable));
            }
        }
        AnimatorSet buildAnim = pendingAnimation.buildAnim();
        hideFakeTaskbar(false);
        buildAnim.start();
        this.mRunningWindowAnim = SwipeUpAnimationLogic.RunningWindowAnim.wrap(buildAnim);
    }

    public void resetFakeTaskView(boolean z4, boolean z5) {
        this.mFakeTaskView.setVisibility(0);
        PendingAnimation pendingAnimation = new PendingAnimation(300L);
        AnimatedFloat currentShift = this.mTaskViewSwipeUpAnimation.getCurrentShift();
        FloatProperty floatProperty = AnimatedFloat.VALUE;
        Interpolator interpolator = y0.e.f12957u;
        pendingAnimation.setFloat(currentShift, floatProperty, 0.0f, interpolator);
        pendingAnimation.setViewAlpha(this.mFakeTaskView, 1.0f, interpolator);
        pendingAnimation.addListener(this.mResetTaskView);
        AnimatorSet buildAnim = pendingAnimation.buildAnim();
        if (z5) {
            showFakeTaskbar(z4);
        }
        buildAnim.start();
        this.mRunningWindowAnim = SwipeUpAnimationLogic.RunningWindowAnim.wrap(buildAnim);
    }
}
