package com.android.quickstep.inputconsumers;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.graphics.PointF;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import com.android.launcher3.Utilities;
import com.android.launcher3.testing.TestLogging;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.TraceHelper;
import com.android.quickstep.AbsSwipeUpHandler;
import com.android.quickstep.BaseActivityInterface;
import com.android.quickstep.GestureState;
import com.android.quickstep.InputConsumer;
import com.android.quickstep.RecentsAnimationCallbacks;
import com.android.quickstep.RecentsAnimationController;
import com.android.quickstep.RecentsAnimationDeviceState;
import com.android.quickstep.RecentsAnimationTargets;
import com.android.quickstep.RotationTouchHelper;
import com.android.quickstep.TaskAnimationManager;
import com.android.quickstep.util.ActiveGestureLog;
import com.android.quickstep.util.CachedEventDispatcher;
import com.android.quickstep.util.MotionPauseDetector;
import com.android.quickstep.util.NavBarPosition;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.InputChannelCompat;
import com.android.systemui.shared.system.InputMonitorCompat;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public class OtherActivityInputConsumer extends ContextWrapper implements InputConsumer {
    public static final String DOWN_EVT = "OtherActivityInputConsumer.DOWN";
    public static final int OVERVIEW_MIN_DEGREES = 15;
    private static final String UP_EVT = "OtherActivityInputConsumer.UP";
    private RecentsAnimationCallbacks mActiveCallbacks;
    private int mActivePointerId;
    private final BaseActivityInterface mActivityInterface;
    private final FinishImmediatelyHandler mCleanupHandler;
    private final RecentsAnimationDeviceState mDeviceState;
    private final boolean mDisableHorizontalSwipe;
    private final PointF mDownPos;
    private final GestureState mGestureState;
    private final AbsSwipeUpHandler.Factory mHandlerFactory;
    private final InputChannelCompat.InputEventReceiver mInputEventReceiver;
    private final InputMonitorCompat mInputMonitorCompat;
    private AbsSwipeUpHandler mInteractionHandler;
    private final boolean mIsDeferredDownTarget;
    private final PointF mLastPos;
    private final MotionPauseDetector mMotionPauseDetector;
    private final float mMotionPauseMinDisplacement;
    private final NavBarPosition mNavBarPosition;
    private final Consumer mOnCompleteCallback;
    private boolean mPassedPilferInputSlop;
    private boolean mPassedSlopOnThisGesture;
    private boolean mPassedWindowMoveSlop;
    private final CachedEventDispatcher mRecentsViewDispatcher;
    private final RotationTouchHelper mRotationTouchHelper;
    private final float mSquaredTouchSlop;
    private float mStartDisplacement;
    private final TaskAnimationManager mTaskAnimationManager;
    private final float mTouchSlop;
    private VelocityTracker mVelocityTracker;

    /* loaded from: classes.dex */
    public class FinishImmediatelyHandler implements RecentsAnimationCallbacks.RecentsAnimationListener {
        private FinishImmediatelyHandler() {
        }

        public /* synthetic */ FinishImmediatelyHandler(int i4) {
            this();
        }

        @Override // com.android.quickstep.RecentsAnimationCallbacks.RecentsAnimationListener
        public void onRecentsAnimationStart(RecentsAnimationController recentsAnimationController, RecentsAnimationTargets recentsAnimationTargets) {
            Utilities.postAsyncCallback(Executors.MAIN_EXECUTOR.getHandler(), new e(0, recentsAnimationController));
        }
    }

    public OtherActivityInputConsumer(Context context, RecentsAnimationDeviceState recentsAnimationDeviceState, TaskAnimationManager taskAnimationManager, GestureState gestureState, boolean z4, Consumer consumer, InputMonitorCompat inputMonitorCompat, InputChannelCompat.InputEventReceiver inputEventReceiver, boolean z5, AbsSwipeUpHandler.Factory factory) {
        super(context);
        this.mRecentsViewDispatcher = new CachedEventDispatcher();
        boolean z6 = false;
        this.mCleanupHandler = new FinishImmediatelyHandler(0);
        this.mDownPos = new PointF();
        this.mLastPos = new PointF();
        this.mActivePointerId = -1;
        this.mDeviceState = recentsAnimationDeviceState;
        NavBarPosition navBarPosition = recentsAnimationDeviceState.getNavBarPosition();
        this.mNavBarPosition = navBarPosition;
        this.mTaskAnimationManager = taskAnimationManager;
        this.mGestureState = gestureState;
        this.mHandlerFactory = factory;
        this.mActivityInterface = gestureState.getActivityInterface();
        this.mMotionPauseDetector = new MotionPauseDetector(context, false, (navBarPosition.isLeftEdge() || navBarPosition.isRightEdge()) ? 0 : 1);
        this.mMotionPauseMinDisplacement = context.getResources().getDimension(R.dimen.motion_pause_detector_min_displacement_from_app);
        this.mOnCompleteCallback = consumer;
        this.mVelocityTracker = VelocityTracker.obtain();
        this.mInputMonitorCompat = inputMonitorCompat;
        this.mInputEventReceiver = inputEventReceiver;
        boolean isRecentsAnimationRunning = taskAnimationManager.isRecentsAnimationRunning();
        this.mIsDeferredDownTarget = !isRecentsAnimationRunning && z4;
        this.mTouchSlop = ViewConfiguration.get(this).getScaledTouchSlop();
        this.mSquaredTouchSlop = recentsAnimationDeviceState.getSquaredTouchSlop();
        this.mPassedWindowMoveSlop = isRecentsAnimationRunning;
        this.mPassedPilferInputSlop = isRecentsAnimationRunning;
        if (!isRecentsAnimationRunning && z5) {
            z6 = true;
        }
        this.mDisableHorizontalSwipe = z6;
        this.mRotationTouchHelper = recentsAnimationDeviceState.getRotationTouchHelper();
    }

    private void cleanupAfterGesture() {
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.mVelocityTracker = null;
        }
        this.mMotionPauseDetector.clear();
    }

    private void finishTouchTracking(MotionEvent motionEvent) {
        AbsSwipeUpHandler absSwipeUpHandler;
        TraceHelper.INSTANCE.beginSection(UP_EVT);
        boolean z4 = motionEvent.getActionMasked() == 3;
        if (!this.mPassedWindowMoveSlop || (absSwipeUpHandler = this.mInteractionHandler) == null) {
            if (this.mActiveCallbacks != null && this.mInteractionHandler != null) {
                if (this.mTaskAnimationManager.isRecentsAnimationRunning()) {
                    this.mTaskAnimationManager.finishRunningRecentsAnimation(false, z4);
                } else {
                    this.mActiveCallbacks.addListener(this.mCleanupHandler);
                }
            }
            onConsumerAboutToBeSwitched();
            onInteractionGestureFinished();
        } else if (z4) {
            absSwipeUpHandler.onGestureCancelled();
        } else {
            this.mVelocityTracker.computeCurrentVelocity(1);
            float xVelocity = this.mVelocityTracker.getXVelocity(this.mActivePointerId);
            float yVelocity = this.mVelocityTracker.getYVelocity(this.mActivePointerId);
            float f4 = this.mNavBarPosition.isRightEdge() ? xVelocity : this.mNavBarPosition.isLeftEdge() ? -xVelocity : yVelocity;
            this.mInteractionHandler.updateDisplacement(getDisplacement(motionEvent) - this.mStartDisplacement);
            this.mInteractionHandler.onGestureEnded(f4, new PointF(xVelocity, yVelocity));
        }
        cleanupAfterGesture();
        TraceHelper.INSTANCE.endSection();
    }

    private void forceCancelGesture(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        motionEvent.setAction(3);
        finishTouchTracking(motionEvent);
        motionEvent.setAction(action);
    }

    private float getDisplacement(MotionEvent motionEvent) {
        float y4;
        float f4;
        if (this.mNavBarPosition.isRightEdge()) {
            y4 = motionEvent.getX();
            f4 = this.mDownPos.x;
        } else if (this.mNavBarPosition.isLeftEdge()) {
            return this.mDownPos.x - motionEvent.getX();
        } else {
            y4 = motionEvent.getY();
            f4 = this.mDownPos.y;
        }
        return y4 - f4;
    }

    private void notifyGestureStarted(boolean z4) {
        if (this.mInteractionHandler == null) {
            return;
        }
        TestLogging.recordEvent("Pilfer", "pilferPointers");
        this.mInputMonitorCompat.pilferPointers();
        this.mInputEventReceiver.setBatchingEnabled(true);
        this.mInteractionHandler.onGestureStarted(z4);
    }

    public void onInteractionGestureFinished() {
        removeListener();
        this.mInteractionHandler = null;
        cleanupAfterGesture();
        this.mOnCompleteCallback.accept(this);
    }

    private void removeListener() {
        AbsSwipeUpHandler absSwipeUpHandler;
        RecentsAnimationCallbacks recentsAnimationCallbacks = this.mActiveCallbacks;
        if (recentsAnimationCallbacks == null || (absSwipeUpHandler = this.mInteractionHandler) == null) {
            return;
        }
        recentsAnimationCallbacks.removeListener(absSwipeUpHandler);
    }

    private void startTouchTrackingForWindowAnimation(long j4) {
        AbsSwipeUpHandler newHandler = this.mHandlerFactory.newHandler(this.mGestureState, j4);
        this.mInteractionHandler = newHandler;
        newHandler.setGestureEndCallback(new e(1, this));
        this.mMotionPauseDetector.setOnMotionPauseListener(this.mInteractionHandler.getMotionPauseListener());
        this.mInteractionHandler.initWhenReady();
        if (!this.mTaskAnimationManager.isRecentsAnimationRunning()) {
            Intent intent = new Intent(this.mInteractionHandler.getLaunchIntent());
            intent.putExtra(ActiveGestureLog.INTENT_EXTRA_LOG_TRACE_ID, this.mGestureState.getGestureId());
            this.mActiveCallbacks = this.mTaskAnimationManager.startRecentsAnimation(this.mGestureState, intent, this.mInteractionHandler);
            return;
        }
        RecentsAnimationCallbacks continueRecentsAnimation = this.mTaskAnimationManager.continueRecentsAnimation(this.mGestureState);
        this.mActiveCallbacks = continueRecentsAnimation;
        continueRecentsAnimation.removeListener(this.mCleanupHandler);
        this.mActiveCallbacks.addListener(this.mInteractionHandler);
        this.mTaskAnimationManager.notifyRecentsAnimationState(this.mInteractionHandler);
        notifyGestureStarted(true);
    }

    @Override // com.android.quickstep.InputConsumer
    public boolean allowInterceptByParent() {
        return !this.mPassedPilferInputSlop;
    }

    @Override // com.android.quickstep.InputConsumer
    public int getType() {
        return 4;
    }

    @Override // com.android.quickstep.InputConsumer
    public boolean isConsumerDetachedFromGesture() {
        return true;
    }

    @Override // com.android.quickstep.InputConsumer
    public void notifyOrientationSetup() {
        this.mRotationTouchHelper.onStartGesture();
    }

    @Override // com.android.quickstep.InputConsumer
    public void onConsumerAboutToBeSwitched() {
        if (this.mInteractionHandler != null) {
            removeListener();
            this.mInteractionHandler.onConsumerAboutToBeSwitched();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:274:0x01fe  */
    /* JADX WARN: Removed duplicated region for block: B:302:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v28 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r7v14 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v9 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v6 */
    @Override // com.android.quickstep.InputConsumer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMotionEvent(android.view.MotionEvent r14) {
        /*
            Method dump skipped, instructions count: 640
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.quickstep.inputconsumers.OtherActivityInputConsumer.onMotionEvent(android.view.MotionEvent):void");
    }
}
