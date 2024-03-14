package com.android.quickstep.inputconsumers;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.PointF;
import android.view.MotionEvent;
import android.view.RemoteAnimationTarget;
import android.view.VelocityTracker;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.AnimatedFloat;
import com.android.launcher3.testing.TestLogging;
import com.android.launcher3.util.DisplayController;
import com.android.quickstep.GestureState;
import com.android.quickstep.InputConsumer;
import com.android.quickstep.MultiStateCallback;
import com.android.quickstep.OverviewComponentObserver;
import com.android.quickstep.RecentsAnimationCallbacks;
import com.android.quickstep.RecentsAnimationController;
import com.android.quickstep.RecentsAnimationDeviceState;
import com.android.quickstep.RecentsAnimationTargets;
import com.android.quickstep.RemoteAnimationTargets;
import com.android.quickstep.TaskAnimationManager;
import com.android.quickstep.util.ActiveGestureLog;
import com.android.quickstep.util.SurfaceTransaction;
import com.android.quickstep.util.TransformParams;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.ActivityManagerWrapper;
import com.android.systemui.shared.system.InputMonitorCompat;
import java.util.HashMap;
/* loaded from: classes.dex */
public class DeviceLockedInputConsumer implements InputConsumer, RecentsAnimationCallbacks.RecentsAnimationListener, TransformParams.BuilderProxy {
    private static final String[] STATE_NAMES = null;
    private final Context mContext;
    private final RecentsAnimationDeviceState mDeviceState;
    private final Point mDisplaySize;
    private final GestureState mGestureState;
    private final InputMonitorCompat mInputMonitorCompat;
    private final float mMaxTranslationY;
    private RecentsAnimationController mRecentsAnimationController;
    private final MultiStateCallback mStateCallback;
    private final TaskAnimationManager mTaskAnimationManager;
    private final float mTouchSlopSquared;
    private VelocityTracker mVelocityTracker;
    private static final int STATE_TARGET_RECEIVED = getFlagForIndex(0, "STATE_TARGET_RECEIVED");
    private static final int STATE_HANDLER_INVALIDATED = getFlagForIndex(1, "STATE_HANDLER_INVALIDATED");
    private final PointF mTouchDown = new PointF();
    private final Matrix mMatrix = new Matrix();
    private final AnimatedFloat mProgress = new AnimatedFloat(new Runnable(this) { // from class: com.android.quickstep.inputconsumers.d

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ DeviceLockedInputConsumer f5652e;

        {
            this.f5652e = this;
        }

        @Override // java.lang.Runnable
        public final void run() {
            switch (r2) {
                case 0:
                    this.f5652e.applyTransform();
                    return;
                default:
                    this.f5652e.endRemoteAnimation();
                    return;
            }
        }
    });
    private boolean mThresholdCrossed = false;
    private boolean mHomeLaunched = false;
    private boolean mCancelWhenRecentsStart = false;
    private boolean mDismissTask = false;
    private final TransformParams mTransformParams = new TransformParams();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class DeviceLockedReleaseCheck extends RemoteAnimationTargets.ReleaseCheck {
        public /* synthetic */ DeviceLockedReleaseCheck(Animator animator, int i4) {
            this(animator);
        }

        private DeviceLockedReleaseCheck(Animator animator) {
            setCanRelease(true);
            animator.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.inputconsumers.DeviceLockedInputConsumer.DeviceLockedReleaseCheck.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator2) {
                    super.onAnimationEnd(animator2);
                    DeviceLockedReleaseCheck.this.setCanRelease(true);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator2) {
                    super.onAnimationStart(animator2);
                    DeviceLockedReleaseCheck.this.setCanRelease(false);
                }
            });
        }
    }

    public DeviceLockedInputConsumer(Context context, RecentsAnimationDeviceState recentsAnimationDeviceState, TaskAnimationManager taskAnimationManager, GestureState gestureState, InputMonitorCompat inputMonitorCompat) {
        this.mContext = context;
        this.mDeviceState = recentsAnimationDeviceState;
        this.mTaskAnimationManager = taskAnimationManager;
        this.mGestureState = gestureState;
        this.mTouchSlopSquared = recentsAnimationDeviceState.getSquaredTouchSlop();
        this.mInputMonitorCompat = inputMonitorCompat;
        this.mMaxTranslationY = context.getResources().getDimensionPixelSize(R.dimen.device_locked_y_offset);
        this.mDisplaySize = ((DisplayController) DisplayController.INSTANCE.get(context)).getInfo().currentSize;
        MultiStateCallback multiStateCallback = new MultiStateCallback(STATE_NAMES);
        this.mStateCallback = multiStateCallback;
        multiStateCallback.runOnceAtState(STATE_TARGET_RECEIVED | STATE_HANDLER_INVALIDATED, new Runnable(this) { // from class: com.android.quickstep.inputconsumers.d

            /* renamed from: e  reason: collision with root package name */
            public final /* synthetic */ DeviceLockedInputConsumer f5652e;

            {
                this.f5652e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (r2) {
                    case 0:
                        this.f5652e.applyTransform();
                        return;
                    default:
                        this.f5652e.endRemoteAnimation();
                        return;
                }
            }
        });
        this.mVelocityTracker = VelocityTracker.obtain();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyTransform() {
        this.mTransformParams.setProgress(this.mProgress.value);
        if (this.mTransformParams.getTargetSet() != null) {
            TransformParams transformParams = this.mTransformParams;
            transformParams.applySurfaceParams(transformParams.createSurfaceParams(this));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void endRemoteAnimation() {
        if (this.mHomeLaunched) {
            ActivityManagerWrapper.getInstance().cancelRecentsAnimation(false);
            return;
        }
        RecentsAnimationController recentsAnimationController = this.mRecentsAnimationController;
        if (recentsAnimationController != null) {
            recentsAnimationController.finishController(false, null, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishRecentsAnimationForShell(boolean z4) {
        this.mCancelWhenRecentsStart = false;
        this.mTaskAnimationManager.finishRunningRecentsAnimation(z4);
        if (z4) {
            this.mHomeLaunched = true;
        }
    }

    private void finishTouchTracking(MotionEvent motionEvent) {
        if (this.mThresholdCrossed) {
            final boolean z4 = true;
            if (motionEvent.getAction() == 1) {
                this.mVelocityTracker.computeCurrentVelocity(1);
                float yVelocity = this.mVelocityTracker.getYVelocity();
                if (Math.abs(yVelocity) <= this.mContext.getResources().getDimension(R.dimen.quickstep_fling_threshold_speed) ? this.mProgress.value < 0.3f : yVelocity >= 0.0f) {
                    z4 = false;
                }
                AnimatedFloat animatedFloat = this.mProgress;
                ObjectAnimator animateToValue = animatedFloat.animateToValue(animatedFloat.value, 0.0f);
                animateToValue.setDuration(100L);
                animateToValue.setInterpolator(y0.e.f12957u);
                animateToValue.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.inputconsumers.DeviceLockedInputConsumer.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        if (TaskAnimationManager.ENABLE_SHELL_TRANSITIONS) {
                            if (DeviceLockedInputConsumer.this.mTaskAnimationManager.getCurrentCallbacks() != null) {
                                if (DeviceLockedInputConsumer.this.mRecentsAnimationController != null) {
                                    DeviceLockedInputConsumer.this.finishRecentsAnimationForShell(z4);
                                } else {
                                    DeviceLockedInputConsumer.this.mCancelWhenRecentsStart = true;
                                    DeviceLockedInputConsumer.this.mDismissTask = z4;
                                }
                            }
                        } else if (z4) {
                            OverviewComponentObserver.startHomeIntentSafely(DeviceLockedInputConsumer.this.mContext, DeviceLockedInputConsumer.this.mGestureState.getHomeIntent(), null);
                            DeviceLockedInputConsumer.this.mHomeLaunched = true;
                        }
                        DeviceLockedInputConsumer.this.mStateCallback.lambda$setStateOnUiThread$1(DeviceLockedInputConsumer.STATE_HANDLER_INVALIDATED);
                    }
                });
                RemoteAnimationTargets targetSet = this.mTransformParams.getTargetSet();
                if (targetSet != null) {
                    targetSet.addReleaseCheck(new DeviceLockedReleaseCheck(animateToValue, 0));
                }
                animateToValue.start();
                this.mVelocityTracker.recycle();
                this.mVelocityTracker = null;
            }
        }
        this.mStateCallback.lambda$setStateOnUiThread$1(STATE_HANDLER_INVALIDATED);
        this.mVelocityTracker.recycle();
        this.mVelocityTracker = null;
    }

    private static int getFlagForIndex(int i4, String str) {
        return 1 << i4;
    }

    private void startRecentsTransition() {
        this.mThresholdCrossed = true;
        this.mHomeLaunched = false;
        TestLogging.recordEvent("Pilfer", "pilferPointers");
        this.mInputMonitorCompat.pilferPointers();
        this.mTaskAnimationManager.startRecentsAnimation(this.mGestureState, this.mGestureState.getHomeIntent().putExtra(ActiveGestureLog.INTENT_EXTRA_LOG_TRACE_ID, this.mGestureState.getGestureId()), this);
    }

    @Override // com.android.quickstep.InputConsumer
    public boolean allowInterceptByParent() {
        return !this.mThresholdCrossed;
    }

    @Override // com.android.quickstep.InputConsumer
    public int getType() {
        return 16;
    }

    @Override // com.android.quickstep.util.TransformParams.BuilderProxy
    public void onBuildTargetParams(SurfaceTransaction.SurfaceProperties surfaceProperties, RemoteAnimationTarget remoteAnimationTarget, TransformParams transformParams) {
        this.mMatrix.setTranslate(0.0f, this.mProgress.value * this.mMaxTranslationY);
        surfaceProperties.setMatrix(this.mMatrix);
    }

    @Override // com.android.quickstep.InputConsumer
    public void onConsumerAboutToBeSwitched() {
        this.mStateCallback.lambda$setStateOnUiThread$1(STATE_HANDLER_INVALIDATED);
    }

    @Override // com.android.quickstep.InputConsumer
    public void onMotionEvent(MotionEvent motionEvent) {
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker == null) {
            return;
        }
        velocityTracker.addMovement(motionEvent);
        float x4 = motionEvent.getX();
        float y4 = motionEvent.getY();
        int action = motionEvent.getAction();
        if (action == 0) {
            this.mTouchDown.set(x4, y4);
            return;
        }
        if (action != 1) {
            if (action == 2) {
                if (this.mThresholdCrossed) {
                    this.mProgress.updateValue(Math.max(this.mTouchDown.y - y4, 0.0f) / this.mDisplaySize.y);
                    return;
                }
                PointF pointF = this.mTouchDown;
                float f4 = x4 - pointF.x;
                float f5 = y4 - pointF.y;
                String[] strArr = Utilities.EMPTY_STRING_ARRAY;
                if ((f5 * f5) + (f4 * f4) > this.mTouchSlopSquared) {
                    startRecentsTransition();
                    return;
                }
                return;
            } else if (action != 3) {
                if (action == 5 && !this.mThresholdCrossed) {
                    if (this.mDeviceState.getRotationTouchHelper().isInSwipeUpTouchRegion(motionEvent, motionEvent.getActionIndex())) {
                        return;
                    }
                    int action2 = motionEvent.getAction();
                    motionEvent.setAction(3);
                    finishTouchTracking(motionEvent);
                    motionEvent.setAction(action2);
                    return;
                }
                return;
            }
        }
        finishTouchTracking(motionEvent);
    }

    @Override // com.android.quickstep.RecentsAnimationCallbacks.RecentsAnimationListener
    public void onRecentsAnimationCanceled(HashMap hashMap) {
        this.mRecentsAnimationController = null;
        this.mTransformParams.setTargetSet(null);
        this.mCancelWhenRecentsStart = false;
    }

    @Override // com.android.quickstep.RecentsAnimationCallbacks.RecentsAnimationListener
    public void onRecentsAnimationStart(RecentsAnimationController recentsAnimationController, RecentsAnimationTargets recentsAnimationTargets) {
        this.mRecentsAnimationController = recentsAnimationController;
        this.mTransformParams.setTargetSet(recentsAnimationTargets);
        applyTransform();
        this.mStateCallback.lambda$setStateOnUiThread$1(STATE_TARGET_RECEIVED);
        if (this.mCancelWhenRecentsStart) {
            finishRecentsAnimationForShell(this.mDismissTask);
        }
    }
}
