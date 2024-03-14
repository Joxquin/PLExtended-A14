package com.android.launcher3.uioverrides.touchcontrollers;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.os.SystemClock;
import android.os.VibrationEffect;
import android.util.IntProperty;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Interpolator;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.AnimatorPlaybackController;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.touch.BaseSwipeDetector;
import com.android.launcher3.touch.PagedOrientationHandler;
import com.android.launcher3.touch.SingleAxisSwipeDetector;
import com.android.launcher3.util.DisplayController;
import com.android.launcher3.util.FlingBlockCheck;
import com.android.launcher3.util.TouchController;
import com.android.launcher3.util.VibratorWrapper;
import com.android.launcher3.views.BaseDragLayer;
import com.android.quickstep.util.VibrationConstants;
import com.android.quickstep.views.RecentsView;
import com.android.quickstep.views.TaskThumbnailView;
import com.android.quickstep.views.TaskView;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public abstract class TaskViewTouchController extends AnimatorListenerAdapter implements TouchController, SingleAxisSwipeDetector.Listener {
    private static final float ANIMATION_PROGRESS_FRACTION_MIDPOINT = 0.5f;
    private static final long MAX_TASK_DISMISS_ANIMATION_DURATION = 600;
    private static final long MIN_TASK_DISMISS_ANIMATION_DURATION = 300;
    public static final VibrationEffect TASK_DISMISS_VIBRATION_FALLBACK;
    public static final int TASK_DISMISS_VIBRATION_PRIMITIVE;
    public static final float TASK_DISMISS_VIBRATION_PRIMITIVE_SCALE = 1.0f;
    protected final BaseDraggingActivity mActivity;
    private boolean mAllowGoingDown;
    private boolean mAllowGoingUp;
    private AnimatorPlaybackController mCurrentAnimation;
    private boolean mCurrentAnimationIsGoingUp;
    private final SingleAxisSwipeDetector mDetector;
    private float mDisplacementShift;
    private float mEndDisplacement;
    private final boolean mIsRtl;
    private boolean mNoIntercept;
    private float mProgressMultiplier;
    private final RecentsView mRecentsView;
    private TaskView mTaskBeingDragged;
    private final int[] mTempCords = new int[2];
    private FlingBlockCheck mFlingBlockCheck = new FlingBlockCheck();
    private Float mOverrideVelocity = null;
    private boolean mIsDismissHapticRunning = false;

    static {
        TASK_DISMISS_VIBRATION_PRIMITIVE = Utilities.ATLEAST_R ? 7 : -1;
        TASK_DISMISS_VIBRATION_FALLBACK = VibrationConstants.EFFECT_TEXTURE_TICK;
    }

    public TaskViewTouchController(BaseDraggingActivity baseDraggingActivity) {
        this.mActivity = baseDraggingActivity;
        RecentsView recentsView = (RecentsView) baseDraggingActivity.getOverviewPanel();
        this.mRecentsView = recentsView;
        this.mIsRtl = Utilities.isRtl(baseDraggingActivity.getResources());
        this.mDetector = new SingleAxisSwipeDetector(baseDraggingActivity, this, recentsView.getPagedOrientationHandler().getUpDownSwipeDirection());
    }

    private boolean canInterceptTouch(MotionEvent motionEvent) {
        if ((motionEvent.getEdgeFlags() & 256) != 0) {
            AnimatorPlaybackController animatorPlaybackController = this.mCurrentAnimation;
            if (animatorPlaybackController != null) {
                animatorPlaybackController.getAnimationPlayer().end();
            }
            return false;
        }
        AnimatorPlaybackController animatorPlaybackController2 = this.mCurrentAnimation;
        if (animatorPlaybackController2 != null) {
            animatorPlaybackController2.forceFinishIfCloseToEnd();
        }
        if (this.mCurrentAnimation != null) {
            return true;
        }
        if (AbstractFloatingView.getTopOpenViewWithType(this.mActivity, AbstractFloatingView.TYPE_ACCESSIBLE) != null) {
            return false;
        }
        return isRecentsInteractive();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearState() {
        this.mDetector.finishedScrolling();
        this.mDetector.setDetectableScrollConditions(0, false);
        this.mTaskBeingDragged = null;
        this.mCurrentAnimation = null;
        this.mIsDismissHapticRunning = false;
    }

    private void reInitAnimationController(boolean z4) {
        int secondaryDimension;
        Interpolator interpolator;
        PendingAnimation pendingAnimation;
        AnimatorPlaybackController animatorPlaybackController = this.mCurrentAnimation;
        if (animatorPlaybackController == null || this.mCurrentAnimationIsGoingUp != z4) {
            if (!z4 || this.mAllowGoingUp) {
                if (z4 || this.mAllowGoingDown) {
                    if (animatorPlaybackController != null) {
                        animatorPlaybackController.setPlayFraction(0.0f);
                        this.mCurrentAnimation.getTarget().removeListener(this);
                        this.mCurrentAnimation.dispatchOnCancel();
                    }
                    PagedOrientationHandler pagedOrientationHandler = this.mRecentsView.getPagedOrientationHandler();
                    this.mCurrentAnimationIsGoingUp = z4;
                    BaseDragLayer dragLayer = this.mActivity.getDragLayer();
                    long secondaryDimension2 = pagedOrientationHandler.getSecondaryDimension(dragLayer) * 2;
                    int taskDragDisplacementFactor = pagedOrientationHandler.getTaskDragDisplacementFactor(this.mIsRtl);
                    int secondaryDimension3 = pagedOrientationHandler.getSecondaryDimension(this.mTaskBeingDragged);
                    if (z4) {
                        interpolator = y0.e.f12949m;
                        pendingAnimation = new PendingAnimation(secondaryDimension2);
                        this.mRecentsView.createTaskDismissAnimation(pendingAnimation, this.mTaskBeingDragged, true, true, secondaryDimension2, false);
                        this.mEndDisplacement = -secondaryDimension3;
                    } else {
                        interpolator = y0.e.f12933G;
                        PendingAnimation createTaskLaunchAnimation = this.mRecentsView.createTaskLaunchAnimation(this.mTaskBeingDragged, secondaryDimension2, interpolator);
                        TaskThumbnailView thumbnail = this.mTaskBeingDragged.getThumbnail();
                        this.mTempCords[1] = pagedOrientationHandler.getSecondaryDimension(thumbnail);
                        dragLayer.getDescendantCoordRelativeToSelf((View) thumbnail, this.mTempCords);
                        this.mEndDisplacement = secondaryDimension - this.mTempCords[1];
                        pendingAnimation = createTaskLaunchAnimation;
                    }
                    this.mEndDisplacement *= taskDragDisplacementFactor;
                    AnimatorPlaybackController createPlaybackController = pendingAnimation.createPlaybackController();
                    this.mCurrentAnimation = createPlaybackController;
                    createPlaybackController.getTarget().setInterpolator(interpolator);
                    onUserControlledAnimationCreated(this.mCurrentAnimation);
                    this.mCurrentAnimation.getTarget().addListener(this);
                    this.mCurrentAnimation.dispatchOnStart();
                    this.mProgressMultiplier = 1.0f / this.mEndDisplacement;
                }
            }
        }
    }

    public abstract boolean isRecentsInteractive();

    public abstract boolean isRecentsModal();

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        AnimatorPlaybackController animatorPlaybackController = this.mCurrentAnimation;
        if (animatorPlaybackController == null || animator != animatorPlaybackController.getTarget()) {
            return;
        }
        clearState();
    }

    @Override // com.android.launcher3.util.TouchController
    public boolean onControllerInterceptTouchEvent(MotionEvent motionEvent) {
        int i4 = 3;
        boolean z4 = true;
        if ((motionEvent.getAction() == 1 || motionEvent.getAction() == 3) && this.mCurrentAnimation == null) {
            clearState();
        }
        if (motionEvent.getAction() == 0) {
            boolean z5 = !canInterceptTouch(motionEvent);
            this.mNoIntercept = z5;
            if (z5) {
                return false;
            }
            if (this.mCurrentAnimation == null) {
                this.mTaskBeingDragged = null;
                int i5 = 0;
                while (true) {
                    if (i5 >= this.mRecentsView.getTaskViewCount()) {
                        break;
                    }
                    TaskView taskViewAt = this.mRecentsView.getTaskViewAt(i5);
                    if (!this.mRecentsView.isTaskViewVisible(taskViewAt) || !this.mActivity.getDragLayer().isEventOverView(taskViewAt, motionEvent)) {
                        i5++;
                    } else if (isRecentsModal()) {
                        this.mTaskBeingDragged = null;
                    } else {
                        this.mTaskBeingDragged = taskViewAt;
                        int upDirection = this.mRecentsView.getPagedOrientationHandler().getUpDirection(this.mIsRtl);
                        this.mAllowGoingUp = true;
                        boolean z6 = i5 == this.mRecentsView.getCurrentPage() && DisplayController.getNavigationMode(this.mActivity).hasGestures && (!this.mRecentsView.showAsGrid() || this.mTaskBeingDragged.isFocusedTask()) && this.mRecentsView.isTaskInExpectedScrollPosition(i5);
                        this.mAllowGoingDown = z6;
                        if (!z6) {
                            i4 = upDirection;
                        }
                    }
                }
                i4 = 0;
                if (this.mTaskBeingDragged == null) {
                    this.mNoIntercept = true;
                    return false;
                }
                z4 = false;
            }
            this.mDetector.setDetectableScrollConditions(i4, z4);
        }
        if (this.mNoIntercept) {
            return false;
        }
        onControllerTouchEvent(motionEvent);
        return this.mDetector.isDraggingOrSettling();
    }

    @Override // com.android.launcher3.util.TouchController
    public boolean onControllerTouchEvent(MotionEvent motionEvent) {
        this.mDetector.onTouchEvent(motionEvent);
        return true;
    }

    @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    public boolean onDrag(float f4) {
        PagedOrientationHandler pagedOrientationHandler = this.mRecentsView.getPagedOrientationHandler();
        float f5 = f4 + this.mDisplacementShift;
        boolean isGoingUp = f5 == 0.0f ? this.mCurrentAnimationIsGoingUp : pagedOrientationHandler.isGoingUp(f5, this.mIsRtl);
        if (isGoingUp != this.mCurrentAnimationIsGoingUp) {
            reInitAnimationController(isGoingUp);
            this.mFlingBlockCheck.blockFling();
        } else {
            this.mFlingBlockCheck.onEvent();
        }
        if (!isGoingUp) {
            this.mCurrentAnimation.setPlayFraction(Utilities.boundToRange(f5 * this.mProgressMultiplier, 0.0f, 1.0f));
            return true;
        } else if (this.mCurrentAnimation.getProgressFraction() < ANIMATION_PROGRESS_FRACTION_MIDPOINT) {
            this.mCurrentAnimation.setPlayFraction(Utilities.boundToRange((f5 * this.mProgressMultiplier) / 2.0f, 0.0f, 1.0f));
            return true;
        } else {
            this.mOverrideVelocity = Float.valueOf(-this.mTaskBeingDragged.getResources().getDimension(this.mRecentsView.showAsGrid() ? this.mTaskBeingDragged.isFocusedTask() ? R.dimen.default_task_dismiss_drag_velocity_grid_focus_task : R.dimen.default_task_dismiss_drag_velocity_grid : R.dimen.default_task_dismiss_drag_velocity));
            long uptimeMillis = SystemClock.uptimeMillis();
            MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 1, 0.0f, 0.0f, 0);
            this.mDetector.onTouchEvent(obtain);
            obtain.recycle();
            return true;
        }
    }

    @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    public void onDragEnd(float f4) {
        PagedOrientationHandler pagedOrientationHandler;
        Float f5 = this.mOverrideVelocity;
        if (f5 != null) {
            f4 = f5.floatValue();
            this.mOverrideVelocity = null;
        }
        float dimension = this.mTaskBeingDragged.getResources().getDimension(R.dimen.max_task_dismiss_drag_velocity);
        float boundToRange = Utilities.boundToRange(f4, -dimension, dimension);
        boolean isFling = this.mDetector.isFling(boundToRange);
        boolean z4 = false;
        boolean z5 = isFling && this.mFlingBlockCheck.isBlocked();
        if (z5) {
            isFling = false;
        }
        boolean isGoingUp = this.mRecentsView.getPagedOrientationHandler().isGoingUp(boundToRange, this.mIsRtl);
        float progressFraction = this.mCurrentAnimation.getProgressFraction();
        float interpolatedProgress = this.mCurrentAnimation.getInterpolatedProgress();
        if (!isFling ? interpolatedProgress > ANIMATION_PROGRESS_FRACTION_MIDPOINT : isGoingUp == this.mCurrentAnimationIsGoingUp) {
            z4 = true;
        }
        if (z4) {
            progressFraction = 1.0f - progressFraction;
        }
        long calculateDuration = BaseSwipeDetector.calculateDuration(boundToRange, progressFraction);
        if (z5 && !z4) {
            IntProperty intProperty = LauncherAnimUtils.DRAWABLE_ALPHA;
            calculateDuration *= (int) Utilities.boundToRange(Math.abs(boundToRange) / 2.0f, 2.0f, 6.0f);
        }
        long max = Math.max(300L, Math.min(calculateDuration, (long) MAX_TASK_DISMISS_ANIMATION_DURATION));
        this.mCurrentAnimation.setEndAction(new Runnable() { // from class: com.android.launcher3.uioverrides.touchcontrollers.i
            @Override // java.lang.Runnable
            public final void run() {
                TaskViewTouchController.this.clearState();
            }
        });
        this.mCurrentAnimation.startWithVelocity(this.mActivity, z4, boundToRange * pagedOrientationHandler.getSecondaryTranslationDirectionFactor(), this.mEndDisplacement, max);
        if (isGoingUp && z4 && !this.mIsDismissHapticRunning) {
            ((VibratorWrapper) VibratorWrapper.INSTANCE.get(this.mActivity)).vibrate(TASK_DISMISS_VIBRATION_PRIMITIVE, 1.0f, TASK_DISMISS_VIBRATION_FALLBACK);
            this.mIsDismissHapticRunning = true;
        }
    }

    @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    public void onDragStart(boolean z4, float f4) {
        PagedOrientationHandler pagedOrientationHandler = this.mRecentsView.getPagedOrientationHandler();
        AnimatorPlaybackController animatorPlaybackController = this.mCurrentAnimation;
        if (animatorPlaybackController == null) {
            reInitAnimationController(pagedOrientationHandler.isGoingUp(f4, this.mIsRtl));
            this.mDisplacementShift = 0.0f;
        } else {
            this.mDisplacementShift = animatorPlaybackController.getProgressFraction() / this.mProgressMultiplier;
            this.mCurrentAnimation.pause();
        }
        this.mFlingBlockCheck.unblockFling();
        this.mOverrideVelocity = null;
    }

    public void onUserControlledAnimationCreated(AnimatorPlaybackController animatorPlaybackController) {
    }
}
