package com.android.quickstep.interaction;

import android.content.Context;
import android.graphics.Point;
import android.graphics.PointF;
import android.view.MotionEvent;
import android.view.View;
import com.android.launcher3.testing.shared.ResourceUtils;
import com.android.launcher3.util.DisplayController;
import com.android.launcher3.util.NavigationMode;
import com.android.launcher3.util.VibratorWrapper;
import com.android.quickstep.util.MotionPauseDetector;
import com.android.quickstep.util.NavBarPosition;
import com.android.quickstep.util.TriggerSwipeUpTouchTracker;
/* loaded from: classes.dex */
public class NavBarGestureHandler implements View.OnTouchListener, TriggerSwipeUpTouchTracker.OnSwipeUpListener, MotionPauseDetector.OnMotionPauseListener {
    private static final String LOG_TAG = "NavBarGestureHandler";
    private final int mBottomGestureHeight;
    private final Context mContext;
    private final Point mDisplaySize;
    private final PointF mDownPos;
    private NavBarGestureAttemptCallback mGestureCallback;
    private final PointF mLastPos;
    private final MotionPauseDetector mMotionPauseDetector;
    private final TriggerSwipeUpTouchTracker mSwipeUpTouchTracker;
    private boolean mTouchCameFromNavBar;

    /* loaded from: classes.dex */
    interface NavBarGestureAttemptCallback {
        default void onMotionPaused(boolean z4) {
        }

        void onNavBarGestureAttempted(NavBarGestureResult navBarGestureResult, PointF pointF);

        default void setNavBarGestureProgress(Float f4) {
        }
    }

    /* loaded from: classes.dex */
    enum NavBarGestureResult {
        UNKNOWN,
        HOME_GESTURE_COMPLETED,
        OVERVIEW_GESTURE_COMPLETED,
        HOME_NOT_STARTED_TOO_FAR_FROM_EDGE,
        OVERVIEW_NOT_STARTED_TOO_FAR_FROM_EDGE,
        HOME_OR_OVERVIEW_NOT_STARTED_WRONG_SWIPE_DIRECTION,
        HOME_OR_OVERVIEW_CANCELLED
    }

    public NavBarGestureHandler(Context context) {
        Point point = new Point();
        this.mDisplaySize = point;
        this.mDownPos = new PointF();
        this.mLastPos = new PointF();
        this.mContext = context;
        DisplayController.Info info = ((DisplayController) DisplayController.INSTANCE.get(context)).getInfo();
        Point point2 = info.currentSize;
        point.set(point2.x, point2.y);
        this.mSwipeUpTouchTracker = new TriggerSwipeUpTouchTracker(context, true, new NavBarPosition(NavigationMode.NO_BUTTON, info), null, this);
        this.mMotionPauseDetector = new MotionPauseDetector(context);
        this.mBottomGestureHeight = ResourceUtils.getNavbarSize(context.getResources(), "navigation_bar_gesture_height");
    }

    public boolean onInterceptTouch(MotionEvent motionEvent) {
        return motionEvent.getY() >= ((float) (this.mDisplaySize.y - this.mBottomGestureHeight));
    }

    @Override // com.android.quickstep.util.MotionPauseDetector.OnMotionPauseListener
    public void onMotionPauseChanged(boolean z4) {
        this.mGestureCallback.onMotionPaused(z4);
    }

    @Override // com.android.quickstep.util.MotionPauseDetector.OnMotionPauseListener
    public void onMotionPauseDetected() {
        ((VibratorWrapper) VibratorWrapper.INSTANCE.get(this.mContext)).vibrate(VibratorWrapper.OVERVIEW_HAPTIC);
    }

    @Override // com.android.quickstep.util.TriggerSwipeUpTouchTracker.OnSwipeUpListener
    public void onSwipeUp(boolean z4, PointF pointF) {
        NavBarGestureAttemptCallback navBarGestureAttemptCallback = this.mGestureCallback;
        if (navBarGestureAttemptCallback == null) {
            return;
        }
        if (this.mTouchCameFromNavBar) {
            navBarGestureAttemptCallback.onNavBarGestureAttempted(z4 ? NavBarGestureResult.HOME_GESTURE_COMPLETED : NavBarGestureResult.OVERVIEW_GESTURE_COMPLETED, pointF);
        } else {
            navBarGestureAttemptCallback.onNavBarGestureAttempted(z4 ? NavBarGestureResult.HOME_NOT_STARTED_TOO_FAR_FROM_EDGE : NavBarGestureResult.OVERVIEW_NOT_STARTED_TOO_FAR_FROM_EDGE, pointF);
        }
    }

    @Override // com.android.quickstep.util.TriggerSwipeUpTouchTracker.OnSwipeUpListener
    public void onSwipeUpCancelled() {
        NavBarGestureAttemptCallback navBarGestureAttemptCallback = this.mGestureCallback;
        if (navBarGestureAttemptCallback != null) {
            navBarGestureAttemptCallback.onNavBarGestureAttempted(NavBarGestureResult.HOME_OR_OVERVIEW_CANCELLED, new PointF());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0014, code lost:
        if (r6 != 3) goto L8;
     */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouch(android.view.View r6, android.view.MotionEvent r7) {
        /*
            r5 = this;
            int r6 = r7.getAction()
            com.android.quickstep.util.TriggerSwipeUpTouchTracker r0 = r5.mSwipeUpTouchTracker
            boolean r0 = r0.interceptedTouch()
            r1 = 0
            r2 = 1
            if (r6 == 0) goto L41
            if (r6 == r2) goto L26
            r3 = 2
            if (r6 == r3) goto L18
            r3 = 3
            if (r6 == r3) goto L26
            goto L83
        L18:
            android.graphics.PointF r6 = r5.mLastPos
            float r3 = r7.getX()
            float r4 = r7.getY()
            r6.set(r3, r4)
            goto L83
        L26:
            com.android.quickstep.util.MotionPauseDetector r6 = r5.mMotionPauseDetector
            r6.clear()
            com.android.quickstep.interaction.NavBarGestureHandler$NavBarGestureAttemptCallback r6 = r5.mGestureCallback
            if (r6 == 0) goto L83
            if (r0 != 0) goto L83
            boolean r3 = r5.mTouchCameFromNavBar
            if (r3 == 0) goto L83
            com.android.quickstep.interaction.NavBarGestureHandler$NavBarGestureResult r0 = com.android.quickstep.interaction.NavBarGestureHandler.NavBarGestureResult.HOME_OR_OVERVIEW_NOT_STARTED_WRONG_SWIPE_DIRECTION
            android.graphics.PointF r3 = new android.graphics.PointF
            r3.<init>()
            r6.onNavBarGestureAttempted(r0, r3)
            r0 = r2
            goto L83
        L41:
            android.graphics.PointF r6 = r5.mDownPos
            float r3 = r7.getX()
            float r4 = r7.getY()
            r6.set(r3, r4)
            android.graphics.PointF r6 = r5.mLastPos
            android.graphics.PointF r3 = r5.mDownPos
            r6.set(r3)
            android.graphics.PointF r6 = r5.mDownPos
            float r6 = r6.y
            android.graphics.Point r3 = r5.mDisplaySize
            int r3 = r3.y
            int r4 = r5.mBottomGestureHeight
            int r3 = r3 - r4
            float r3 = (float) r3
            int r6 = (r6 > r3 ? 1 : (r6 == r3 ? 0 : -1))
            if (r6 < 0) goto L67
            r6 = r2
            goto L68
        L67:
            r6 = r1
        L68:
            r5.mTouchCameFromNavBar = r6
            if (r6 != 0) goto L74
            com.android.quickstep.interaction.NavBarGestureHandler$NavBarGestureAttemptCallback r6 = r5.mGestureCallback
            if (r6 == 0) goto L74
            r3 = 0
            r6.setNavBarGestureProgress(r3)
        L74:
            com.android.quickstep.util.TriggerSwipeUpTouchTracker r6 = r5.mSwipeUpTouchTracker
            r6.init()
            com.android.quickstep.util.MotionPauseDetector r6 = r5.mMotionPauseDetector
            r6.clear()
            com.android.quickstep.util.MotionPauseDetector r6 = r5.mMotionPauseDetector
            r6.setOnMotionPauseListener(r5)
        L83:
            boolean r6 = r5.mTouchCameFromNavBar
            if (r6 == 0) goto L9b
            com.android.quickstep.interaction.NavBarGestureHandler$NavBarGestureAttemptCallback r6 = r5.mGestureCallback
            if (r6 == 0) goto L9b
            float r3 = r7.getY()
            android.graphics.PointF r4 = r5.mDownPos
            float r4 = r4.y
            float r3 = r3 - r4
            java.lang.Float r3 = java.lang.Float.valueOf(r3)
            r6.setNavBarGestureProgress(r3)
        L9b:
            com.android.quickstep.util.TriggerSwipeUpTouchTracker r6 = r5.mSwipeUpTouchTracker
            r6.onMotionEvent(r7)
            com.android.quickstep.util.MotionPauseDetector r6 = r5.mMotionPauseDetector
            r6.addPosition(r7)
            com.android.quickstep.util.MotionPauseDetector r6 = r5.mMotionPauseDetector
            android.graphics.PointF r7 = r5.mLastPos
            float r7 = r7.y
            android.graphics.Point r3 = r5.mDisplaySize
            int r3 = r3.y
            int r5 = r5.mBottomGestureHeight
            int r3 = r3 - r5
            float r5 = (float) r3
            int r5 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r5 < 0) goto Lb8
            r1 = r2
        Lb8:
            r6.setDisallowPause(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.quickstep.interaction.NavBarGestureHandler.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    public void registerNavBarGestureAttemptCallback(NavBarGestureAttemptCallback navBarGestureAttemptCallback) {
        this.mGestureCallback = navBarGestureAttemptCallback;
    }

    public void unregisterNavBarGestureAttemptCallback() {
        this.mGestureCallback = null;
    }
}
