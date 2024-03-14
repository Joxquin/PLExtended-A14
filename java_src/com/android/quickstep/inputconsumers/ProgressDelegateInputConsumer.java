package com.android.quickstep.inputconsumers;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Point;
import android.view.MotionEvent;
import com.android.launcher3.anim.AnimatedFloat;
import com.android.launcher3.anim.AnimatorListeners;
import com.android.launcher3.testing.TestLogging;
import com.android.launcher3.touch.BaseSwipeDetector;
import com.android.launcher3.touch.SingleAxisSwipeDetector;
import com.android.launcher3.util.DisplayController;
import com.android.quickstep.GestureState;
import com.android.quickstep.InputConsumer;
import com.android.quickstep.MultiStateCallback;
import com.android.quickstep.OverviewComponentObserver;
import com.android.quickstep.RecentsAnimationCallbacks;
import com.android.quickstep.RecentsAnimationController;
import com.android.quickstep.RecentsAnimationTargets;
import com.android.quickstep.TaskAnimationManager;
import com.android.quickstep.util.ActiveGestureLog;
import com.android.systemui.shared.system.InputMonitorCompat;
import java.util.HashMap;
/* loaded from: classes.dex */
public class ProgressDelegateInputConsumer implements InputConsumer, RecentsAnimationCallbacks.RecentsAnimationListener, SingleAxisSwipeDetector.Listener {
    private static final String[] STATE_NAMES = null;
    private static final float SWIPE_DISTANCE_THRESHOLD = 0.2f;
    private final Context mContext;
    private final Point mDisplaySize;
    private boolean mDragStarted = false;
    private Boolean mFlingEndsOnHome;
    private final GestureState mGestureState;
    private final InputMonitorCompat mInputMonitorCompat;
    private final AnimatedFloat mProgress;
    private RecentsAnimationController mRecentsAnimationController;
    private final MultiStateCallback mStateCallback;
    private final SingleAxisSwipeDetector mSwipeDetector;
    private final TaskAnimationManager mTaskAnimationManager;
    private static final int STATE_TARGET_RECEIVED = getFlagForIndex(0, "STATE_TARGET_RECEIVED");
    private static final int STATE_HANDLER_INVALIDATED = getFlagForIndex(1, "STATE_HANDLER_INVALIDATED");
    private static final int STATE_FLING_FINISHED = getFlagForIndex(2, "STATE_FLING_FINISHED");

    public ProgressDelegateInputConsumer(Context context, TaskAnimationManager taskAnimationManager, GestureState gestureState, InputMonitorCompat inputMonitorCompat, AnimatedFloat animatedFloat) {
        this.mContext = context;
        this.mTaskAnimationManager = taskAnimationManager;
        this.mGestureState = gestureState;
        this.mInputMonitorCompat = inputMonitorCompat;
        this.mProgress = animatedFloat;
        this.mDisplaySize = ((DisplayController) DisplayController.INSTANCE.get(context)).getInfo().currentSize;
        MultiStateCallback multiStateCallback = new MultiStateCallback(STATE_NAMES);
        this.mStateCallback = multiStateCallback;
        int i4 = STATE_TARGET_RECEIVED;
        multiStateCallback.runOnceAtState(STATE_HANDLER_INVALIDATED | i4, new g(this, 0));
        multiStateCallback.runOnceAtState(i4 | STATE_FLING_FINISHED, new g(this, 1));
        SingleAxisSwipeDetector singleAxisSwipeDetector = new SingleAxisSwipeDetector(context, this, SingleAxisSwipeDetector.VERTICAL);
        this.mSwipeDetector = singleAxisSwipeDetector;
        singleAxisSwipeDetector.setDetectableScrollConditions(1, false);
    }

    public void endRemoteAnimation() {
        onDragEnd(Float.MIN_VALUE);
    }

    private static int getFlagForIndex(int i4, String str) {
        return 1 << i4;
    }

    public /* synthetic */ void lambda$onDragEnd$0() {
        this.mStateCallback.lambda$setStateOnUiThread$1(STATE_FLING_FINISHED);
    }

    public void onFlingFinished() {
        Boolean bool = this.mFlingEndsOnHome;
        boolean booleanValue = bool == null ? true : bool.booleanValue();
        RecentsAnimationController recentsAnimationController = this.mRecentsAnimationController;
        if (recentsAnimationController != null) {
            recentsAnimationController.finishController(booleanValue, null, false);
        } else if (booleanValue) {
            OverviewComponentObserver.startHomeIntentSafely(this.mContext, null);
        }
    }

    @Override // com.android.quickstep.InputConsumer
    public boolean allowInterceptByParent() {
        return !this.mDragStarted;
    }

    @Override // com.android.quickstep.InputConsumer
    public int getType() {
        return 512;
    }

    @Override // com.android.quickstep.InputConsumer
    public void onConsumerAboutToBeSwitched() {
        this.mStateCallback.lambda$setStateOnUiThread$1(STATE_HANDLER_INVALIDATED);
    }

    @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    public boolean onDrag(float f4) {
        int i4 = this.mDisplaySize.y;
        if (i4 > 0) {
            this.mProgress.updateValue(f4 / (-i4));
            return true;
        }
        return true;
    }

    @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    public void onDragEnd(float f4) {
        boolean z4 = !this.mSwipeDetector.isFling(f4) ? this.mProgress.value <= SWIPE_DISTANCE_THRESHOLD : f4 >= 0.0f;
        float f5 = z4 ? 1.0f : 0.0f;
        long calculateDuration = BaseSwipeDetector.calculateDuration(f4, f5 - this.mProgress.value);
        this.mFlingEndsOnHome = Boolean.valueOf(z4);
        ObjectAnimator animateToValue = this.mProgress.animateToValue(f5);
        animateToValue.setDuration(calculateDuration).setInterpolator(y0.e.c(f4));
        animateToValue.addListener(AnimatorListeners.forSuccessCallback(new g(this, 2)));
        animateToValue.start();
    }

    @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    public void onDragStart(boolean z4, float f4) {
        this.mDragStarted = true;
        TestLogging.recordEvent("Pilfer", "pilferPointers");
        this.mInputMonitorCompat.pilferPointers();
        this.mTaskAnimationManager.startRecentsAnimation(this.mGestureState, this.mGestureState.getHomeIntent().putExtra(ActiveGestureLog.INTENT_EXTRA_LOG_TRACE_ID, this.mGestureState.getGestureId()), this);
    }

    @Override // com.android.quickstep.InputConsumer
    public void onMotionEvent(MotionEvent motionEvent) {
        if (this.mFlingEndsOnHome == null) {
            this.mSwipeDetector.onTouchEvent(motionEvent);
        }
    }

    @Override // com.android.quickstep.RecentsAnimationCallbacks.RecentsAnimationListener
    public void onRecentsAnimationCanceled(HashMap hashMap) {
        this.mRecentsAnimationController = null;
    }

    @Override // com.android.quickstep.RecentsAnimationCallbacks.RecentsAnimationListener
    public void onRecentsAnimationStart(RecentsAnimationController recentsAnimationController, RecentsAnimationTargets recentsAnimationTargets) {
        this.mRecentsAnimationController = recentsAnimationController;
        this.mStateCallback.lambda$setStateOnUiThread$1(STATE_TARGET_RECEIVED);
    }

    @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    public boolean onDrag(float f4, MotionEvent motionEvent) {
        return onDrag(f4);
    }

    @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    public boolean onDrag(float f4, float f5, MotionEvent motionEvent) {
        return onDrag(f4, motionEvent);
    }
}
