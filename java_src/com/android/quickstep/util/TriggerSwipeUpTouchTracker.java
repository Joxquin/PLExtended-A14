package com.android.quickstep.util;

import android.content.Context;
import android.graphics.PointF;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import com.android.launcher3.Utilities;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public class TriggerSwipeUpTouchTracker {
    private final boolean mDisableHorizontalSwipe;
    private final PointF mDownPos = new PointF();
    private boolean mInterceptedTouch;
    private final float mMinFlingVelocity;
    private final NavBarPosition mNavBarPosition;
    private final Runnable mOnInterceptTouch;
    private final OnSwipeUpListener mOnSwipeUp;
    private final float mSquaredTouchSlop;
    private VelocityTracker mVelocityTracker;

    /* loaded from: classes.dex */
    public interface OnSwipeUpListener {
        void onSwipeUp(boolean z4, PointF pointF);

        void onSwipeUpCancelled();
    }

    public TriggerSwipeUpTouchTracker(Context context, boolean z4, NavBarPosition navBarPosition, Runnable runnable, OnSwipeUpListener onSwipeUpListener) {
        this.mSquaredTouchSlop = Utilities.squaredTouchSlop(context);
        this.mMinFlingVelocity = context.getResources().getDimension(R.dimen.quickstep_fling_threshold_speed);
        this.mNavBarPosition = navBarPosition;
        this.mDisableHorizontalSwipe = z4;
        this.mOnInterceptTouch = runnable;
        this.mOnSwipeUp = onSwipeUpListener;
        init();
    }

    private void endTouchTracking() {
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x003a, code lost:
        if (r3 > 0.0f) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x003d, code lost:
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0060, code lost:
        if (((r8 * r8) + (r6 * r6)) >= r7.mSquaredTouchSlop) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void onGestureEnd(android.view.MotionEvent r8) {
        /*
            r7 = this;
            android.view.VelocityTracker r0 = r7.mVelocityTracker
            r1 = 1
            r0.computeCurrentVelocity(r1)
            android.view.VelocityTracker r0 = r7.mVelocityTracker
            float r0 = r0.getXVelocity()
            android.view.VelocityTracker r2 = r7.mVelocityTracker
            float r2 = r2.getYVelocity()
            com.android.quickstep.util.NavBarPosition r3 = r7.mNavBarPosition
            boolean r3 = r3.isRightEdge()
            if (r3 == 0) goto L1c
            float r3 = -r0
            goto L27
        L1c:
            com.android.quickstep.util.NavBarPosition r3 = r7.mNavBarPosition
            boolean r3 = r3.isLeftEdge()
            if (r3 == 0) goto L26
            r3 = r0
            goto L27
        L26:
            float r3 = -r2
        L27:
            float r4 = java.lang.Math.abs(r3)
            float r5 = r7.mMinFlingVelocity
            int r4 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            r5 = 0
            if (r4 < 0) goto L34
            r4 = r1
            goto L35
        L34:
            r4 = r5
        L35:
            r6 = 0
            if (r4 == 0) goto L3f
            int r8 = (r3 > r6 ? 1 : (r3 == r6 ? 0 : -1))
            if (r8 <= 0) goto L3d
            goto L62
        L3d:
            r1 = r5
            goto L62
        L3f:
            boolean r3 = r7.mDisableHorizontalSwipe
            if (r3 == 0) goto L44
            goto L4e
        L44:
            float r3 = r8.getX()
            android.graphics.PointF r6 = r7.mDownPos
            float r6 = r6.x
            float r6 = r3 - r6
        L4e:
            float r8 = r8.getY()
            android.graphics.PointF r3 = r7.mDownPos
            float r3 = r3.y
            float r8 = r8 - r3
            java.lang.String[] r3 = com.android.launcher3.Utilities.EMPTY_STRING_ARRAY
            float r6 = r6 * r6
            float r8 = r8 * r8
            float r8 = r8 + r6
            float r3 = r7.mSquaredTouchSlop
            int r8 = (r8 > r3 ? 1 : (r8 == r3 ? 0 : -1))
            if (r8 < 0) goto L3d
        L62:
            com.android.quickstep.util.TriggerSwipeUpTouchTracker$OnSwipeUpListener r7 = r7.mOnSwipeUp
            if (r7 == 0) goto L74
            if (r1 == 0) goto L71
            android.graphics.PointF r8 = new android.graphics.PointF
            r8.<init>(r0, r2)
            r7.onSwipeUp(r4, r8)
            goto L74
        L71:
            r7.onSwipeUpCancelled()
        L74:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.quickstep.util.TriggerSwipeUpTouchTracker.onGestureEnd(android.view.MotionEvent):void");
    }

    public void init() {
        this.mInterceptedTouch = false;
        this.mVelocityTracker = VelocityTracker.obtain();
    }

    public boolean interceptedTouch() {
        return this.mInterceptedTouch;
    }

    public void onMotionEvent(MotionEvent motionEvent) {
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker == null) {
            return;
        }
        velocityTracker.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.mDownPos.set(motionEvent.getX(), motionEvent.getY());
        } else if (actionMasked == 1) {
            onGestureEnd(motionEvent);
            endTouchTracking();
        } else if (actionMasked != 2) {
            if (actionMasked != 3) {
                return;
            }
            endTouchTracking();
        } else if (this.mInterceptedTouch) {
        } else {
            float x4 = motionEvent.getX() - this.mDownPos.x;
            float y4 = motionEvent.getY() - this.mDownPos.y;
            String[] strArr = Utilities.EMPTY_STRING_ARRAY;
            if ((y4 * y4) + (x4 * x4) >= this.mSquaredTouchSlop) {
                if (this.mDisableHorizontalSwipe && Math.abs(x4) > Math.abs(y4)) {
                    endTouchTracking();
                    return;
                }
                this.mInterceptedTouch = true;
                Runnable runnable = this.mOnInterceptTouch;
                if (runnable != null) {
                    runnable.run();
                }
            }
        }
    }
}
