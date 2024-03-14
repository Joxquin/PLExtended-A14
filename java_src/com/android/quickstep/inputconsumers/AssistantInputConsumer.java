package com.android.quickstep.inputconsumers;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.PointF;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import com.android.launcher3.Utilities;
import com.android.launcher3.statemanager.StatefulActivity;
import com.android.quickstep.BaseActivityInterface;
import com.android.quickstep.GestureState;
import com.android.quickstep.InputConsumer;
import com.android.quickstep.RecentsAnimationDeviceState;
import com.android.quickstep.SystemUiProxy;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.InputMonitorCompat;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public class AssistantInputConsumer extends DelegateInputConsumer {
    private static final String OPA_BUNDLE_TRIGGER = "triggered_by";
    private static final int OPA_BUNDLE_TRIGGER_DIAG_SWIPE_GESTURE = 83;
    private static final long RETRACT_ANIMATION_DURATION_MS = 300;
    private static final String TAG = "AssistantInputConsumer";
    private int mActivePointerId;
    private BaseActivityInterface mActivityInterface;
    private final int mAngleThreshold;
    private final Context mContext;
    private float mDistance;
    private final PointF mDownPos;
    private final float mDragDistThreshold;
    private long mDragTime;
    private final float mFlingDistThreshold;
    private final Consumer mGestureDetector;
    private final PointF mLastPos;
    private float mLastProgress;
    private boolean mLaunchedAssistant;
    private boolean mPassedSlop;
    private final float mSquaredSlop;
    private final PointF mStartDragPos;
    private float mTimeFraction;
    private final long mTimeThreshold;

    /* loaded from: classes.dex */
    class AssistantGestureListener extends GestureDetector.SimpleOnGestureListener {
        public /* synthetic */ AssistantGestureListener(AssistantInputConsumer assistantInputConsumer, int i4) {
            this();
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f4, float f5) {
            if (!AssistantInputConsumer.this.isValidAssistantGestureAngle(f4, -f5) || AssistantInputConsumer.this.mDistance < AssistantInputConsumer.this.mFlingDistThreshold || AssistantInputConsumer.this.mLaunchedAssistant) {
                return true;
            }
            AssistantInputConsumer assistantInputConsumer = AssistantInputConsumer.this;
            if (assistantInputConsumer.mState != 2) {
                assistantInputConsumer.mLastProgress = 1.0f;
                ((SystemUiProxy) SystemUiProxy.INSTANCE.get(AssistantInputConsumer.this.mContext)).onAssistantGestureCompletion((float) Math.sqrt((f5 * f5) + (f4 * f4)));
                AssistantInputConsumer.this.startAssistantInternal();
                return true;
            }
            return true;
        }

        private AssistantGestureListener() {
        }
    }

    public AssistantInputConsumer(Context context, GestureState gestureState, InputConsumer inputConsumer, InputMonitorCompat inputMonitorCompat, RecentsAnimationDeviceState recentsAnimationDeviceState, MotionEvent motionEvent) {
        super(inputConsumer, inputMonitorCompat);
        Consumer consumer;
        this.mDownPos = new PointF();
        this.mLastPos = new PointF();
        this.mStartDragPos = new PointF();
        this.mActivePointerId = -1;
        Resources resources = context.getResources();
        this.mContext = context;
        this.mDragDistThreshold = resources.getDimension(R.dimen.gestures_assistant_drag_threshold);
        this.mFlingDistThreshold = resources.getDimension(R.dimen.gestures_assistant_fling_threshold);
        this.mTimeThreshold = resources.getInteger(R.integer.assistant_gesture_min_time_threshold);
        this.mAngleThreshold = resources.getInteger(R.integer.assistant_gesture_corner_deg_threshold);
        float scaledTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        this.mSquaredSlop = scaledTouchSlop * scaledTouchSlop;
        this.mActivityInterface = gestureState.getActivityInterface();
        if (recentsAnimationDeviceState.isAssistantGestureIsConstrained() || recentsAnimationDeviceState.isInDeferredGestureRegion(motionEvent)) {
            consumer = new a();
        } else {
            final GestureDetector gestureDetector = new GestureDetector(context, new AssistantGestureListener(this, 0));
            consumer = new Consumer() { // from class: com.android.quickstep.inputconsumers.b
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    gestureDetector.onTouchEvent((MotionEvent) obj);
                }
            };
        }
        this.mGestureDetector = consumer;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isValidAssistantGestureAngle(float f4, float f5) {
        float degrees = (float) Math.toDegrees(Math.atan2(f5, f4));
        if (degrees > 90.0f) {
            degrees = 180.0f - degrees;
        }
        return degrees > ((float) this.mAngleThreshold) && degrees < 90.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$new$0(MotionEvent motionEvent) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onMotionEvent$1(ValueAnimator valueAnimator) {
        ((SystemUiProxy) SystemUiProxy.INSTANCE.get(this.mContext)).onAssistantProgress(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startAssistantInternal() {
        StatefulActivity createdActivity = this.mActivityInterface.getCreatedActivity();
        if (createdActivity != null) {
            createdActivity.getRootView().performHapticFeedback(13, 1);
        }
        Bundle bundle = new Bundle();
        bundle.putInt(OPA_BUNDLE_TRIGGER, 83);
        bundle.putInt("invocation_type", 1);
        ((SystemUiProxy) SystemUiProxy.INSTANCE.get(this.mContext)).startAssistant(bundle);
        this.mLaunchedAssistant = true;
    }

    private void updateAssistantProgress() {
        if (this.mLaunchedAssistant) {
            return;
        }
        float min = Math.min((this.mDistance * 1.0f) / this.mDragDistThreshold, 1.0f);
        float f4 = this.mTimeFraction;
        this.mLastProgress = min * f4;
        if (this.mDistance < this.mDragDistThreshold || f4 < 1.0f) {
            ((SystemUiProxy) SystemUiProxy.INSTANCE.get(this.mContext)).onAssistantProgress(this.mLastProgress);
            return;
        }
        ((SystemUiProxy) SystemUiProxy.INSTANCE.get(this.mContext)).onAssistantGestureCompletion(0.0f);
        startAssistantInternal();
    }

    @Override // com.android.quickstep.inputconsumers.DelegateInputConsumer
    public String getDelegatorName() {
        return TAG;
    }

    @Override // com.android.quickstep.InputConsumer
    public int getType() {
        return this.mDelegate.getType() | 8;
    }

    @Override // com.android.quickstep.InputConsumer
    public void onMotionEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked != 3) {
                        if (actionMasked != 5) {
                            if (actionMasked == 6) {
                                int actionIndex = motionEvent.getActionIndex();
                                if (motionEvent.getPointerId(actionIndex) == this.mActivePointerId) {
                                    int i4 = actionIndex == 0 ? 1 : 0;
                                    this.mDownPos.set(motionEvent.getX(i4) - (this.mLastPos.x - this.mDownPos.x), motionEvent.getY(i4) - (this.mLastPos.y - this.mDownPos.y));
                                    this.mLastPos.set(motionEvent.getX(i4), motionEvent.getY(i4));
                                    this.mActivePointerId = motionEvent.getPointerId(i4);
                                }
                            }
                        } else if (this.mState != 1) {
                            this.mState = 2;
                        }
                    }
                } else if (this.mState != 2) {
                    if (this.mDelegate.allowInterceptByParent()) {
                        int findPointerIndex = motionEvent.findPointerIndex(this.mActivePointerId);
                        if (findPointerIndex != -1) {
                            this.mLastPos.set(motionEvent.getX(findPointerIndex), motionEvent.getY(findPointerIndex));
                            if (this.mPassedSlop) {
                                PointF pointF = this.mLastPos;
                                float f4 = pointF.x;
                                PointF pointF2 = this.mStartDragPos;
                                float hypot = (float) Math.hypot(f4 - pointF2.x, pointF.y - pointF2.y);
                                this.mDistance = hypot;
                                if (hypot >= 0.0f) {
                                    this.mTimeFraction = Math.min((((float) (SystemClock.uptimeMillis() - this.mDragTime)) * 1.0f) / ((float) this.mTimeThreshold), 1.0f);
                                    updateAssistantProgress();
                                }
                            } else {
                                PointF pointF3 = this.mLastPos;
                                float f5 = pointF3.x;
                                PointF pointF4 = this.mDownPos;
                                float f6 = f5 - pointF4.x;
                                float f7 = pointF3.y;
                                float f8 = f7 - pointF4.y;
                                String[] strArr = Utilities.EMPTY_STRING_ARRAY;
                                if ((f8 * f8) + (f6 * f6) > this.mSquaredSlop) {
                                    this.mPassedSlop = true;
                                    this.mStartDragPos.set(f5, f7);
                                    this.mDragTime = SystemClock.uptimeMillis();
                                    PointF pointF5 = this.mDownPos;
                                    float f9 = pointF5.x;
                                    PointF pointF6 = this.mLastPos;
                                    if (isValidAssistantGestureAngle(f9 - pointF6.x, pointF5.y - pointF6.y)) {
                                        setActive(motionEvent);
                                    } else {
                                        this.mState = 2;
                                    }
                                }
                            }
                        }
                    } else {
                        this.mState = 2;
                    }
                }
            }
            if (this.mState != 2 && !this.mLaunchedAssistant) {
                ValueAnimator duration = ValueAnimator.ofFloat(this.mLastProgress, 0.0f).setDuration(300L);
                duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.quickstep.inputconsumers.c
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        AssistantInputConsumer.this.lambda$onMotionEvent$1(valueAnimator);
                    }
                });
                duration.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.inputconsumers.AssistantInputConsumer.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        super.onAnimationEnd(animator);
                        ((SystemUiProxy) SystemUiProxy.INSTANCE.get(AssistantInputConsumer.this.mContext)).onAssistantProgress(0.0f);
                    }
                });
                duration.setInterpolator(y0.e.f12929C);
                duration.start();
            }
            this.mPassedSlop = false;
            this.mState = 0;
        } else {
            this.mActivePointerId = motionEvent.getPointerId(0);
            this.mDownPos.set(motionEvent.getX(), motionEvent.getY());
            this.mLastPos.set(this.mDownPos);
            this.mTimeFraction = 0.0f;
        }
        this.mGestureDetector.accept(motionEvent);
        if (this.mState != 1) {
            this.mDelegate.onMotionEvent(motionEvent);
        }
    }
}
