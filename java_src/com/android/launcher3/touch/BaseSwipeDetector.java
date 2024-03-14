package com.android.launcher3.touch;

import android.content.Context;
import android.graphics.PointF;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import com.android.systemui.shared.R;
import java.util.LinkedList;
import java.util.Queue;
/* loaded from: classes.dex */
public abstract class BaseSwipeDetector {
    private static final PointF sTempPoint = new PointF();
    protected boolean mIgnoreSlopWhenSettling;
    protected final boolean mIsRtl;
    private boolean mIsSettingState;
    protected final float mMaxVelocity;
    private final float mReleaseVelocity;
    protected final float mTouchSlop;
    private VelocityTracker mVelocityTracker;
    private final PointF mDownPos = new PointF();
    private final PointF mLastPos = new PointF();
    private final Queue mSetStateQueue = new LinkedList();
    private int mActivePointerId = -1;
    private PointF mLastDisplacement = new PointF();
    private PointF mDisplacement = new PointF();
    protected PointF mSubtractDisplacement = new PointF();
    ScrollState mState = ScrollState.IDLE;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public enum ScrollState {
        IDLE,
        DRAGGING,
        SETTLING
    }

    public BaseSwipeDetector(Context context, ViewConfiguration viewConfiguration, boolean z4) {
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        this.mMaxVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        this.mIsRtl = z4;
        this.mReleaseVelocity = context.getResources().getDimensionPixelSize(R.dimen.base_swift_detector_fling_release_velocity);
    }

    public static long calculateDuration(float f4, float f5) {
        return Math.max(100.0f, (1200.0f / Math.max(2.0f, Math.abs(f4 * 0.5f))) * Math.max(0.2f, f5));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setState(final ScrollState scrollState) {
        boolean z4 = this.mIsSettingState;
        Queue queue = this.mSetStateQueue;
        if (z4) {
            ((LinkedList) queue).add(new Runnable() { // from class: com.android.launcher3.touch.d
                @Override // java.lang.Runnable
                public final void run() {
                    BaseSwipeDetector.this.setState(scrollState);
                }
            });
            return;
        }
        this.mIsSettingState = true;
        ScrollState scrollState2 = ScrollState.DRAGGING;
        ScrollState scrollState3 = ScrollState.SETTLING;
        if (scrollState == scrollState2) {
            if (this.mState == scrollState3 && this.mIgnoreSlopWhenSettling) {
                this.mSubtractDisplacement.set(0.0f, 0.0f);
            } else {
                PointF pointF = this.mSubtractDisplacement;
                PointF pointF2 = this.mDisplacement;
                int i4 = (pointF2.x > 0.0f ? 1 : (pointF2.x == 0.0f ? 0 : -1));
                float f4 = this.mTouchSlop;
                pointF.x = i4 > 0 ? f4 : -f4;
                if (pointF2.y <= 0.0f) {
                    f4 = -f4;
                }
                pointF.y = f4;
            }
            ScrollState scrollState4 = this.mState;
            if (scrollState4 == ScrollState.IDLE) {
                reportDragStartInternal(false);
            } else if (scrollState4 == scrollState3) {
                reportDragStartInternal(true);
            }
        }
        if (scrollState == scrollState3) {
            this.mVelocityTracker.computeCurrentVelocity(1000, this.mMaxVelocity);
            PointF pointF3 = new PointF(this.mVelocityTracker.getXVelocity() / 1000.0f, this.mVelocityTracker.getYVelocity() / 1000.0f);
            if (this.mIsRtl) {
                pointF3.x = -pointF3.x;
            }
            reportDragEndInternal(pointF3);
        }
        this.mState = scrollState;
        this.mIsSettingState = false;
        if (queue.isEmpty()) {
            return;
        }
        ((Runnable) ((LinkedList) queue).remove()).run();
    }

    public final void finishedScrolling() {
        setState(ScrollState.IDLE);
    }

    public final boolean isDraggingOrSettling() {
        ScrollState scrollState = this.mState;
        return scrollState == ScrollState.DRAGGING || scrollState == ScrollState.SETTLING;
    }

    public final boolean isDraggingState() {
        return this.mState == ScrollState.DRAGGING;
    }

    public final boolean isFling(float f4) {
        return Math.abs(f4) > this.mReleaseVelocity;
    }

    public final boolean isIdleState() {
        return this.mState == ScrollState.IDLE;
    }

    public final void onTouchEvent(MotionEvent motionEvent) {
        PointF pointF;
        PointF pointF2;
        VelocityTracker velocityTracker;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0 && (velocityTracker = this.mVelocityTracker) != null) {
            velocityTracker.clear();
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        ScrollState scrollState = ScrollState.SETTLING;
        ScrollState scrollState2 = ScrollState.DRAGGING;
        PointF pointF3 = this.mLastPos;
        PointF pointF4 = this.mDownPos;
        if (actionMasked == 0) {
            this.mActivePointerId = motionEvent.getPointerId(0);
            pointF4.set(motionEvent.getX(), motionEvent.getY());
            pointF3.set(pointF4);
            this.mLastDisplacement.set(0.0f, 0.0f);
            this.mDisplacement.set(0.0f, 0.0f);
            if (this.mState == scrollState && this.mIgnoreSlopWhenSettling) {
                setState(scrollState2);
                return;
            }
            return;
        }
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                int findPointerIndex = motionEvent.findPointerIndex(this.mActivePointerId);
                if (findPointerIndex == -1) {
                    return;
                }
                this.mDisplacement.set(motionEvent.getX(findPointerIndex) - pointF4.x, motionEvent.getY(findPointerIndex) - pointF4.y);
                if (this.mIsRtl) {
                    PointF pointF5 = this.mDisplacement;
                    pointF5.x = -pointF5.x;
                }
                if (this.mState != scrollState2 && shouldScrollStart(this.mDisplacement)) {
                    setState(scrollState2);
                }
                if (this.mState == scrollState2 && (pointF = this.mDisplacement) != (pointF2 = this.mLastDisplacement)) {
                    pointF2.set(pointF);
                    PointF pointF6 = sTempPoint;
                    PointF pointF7 = this.mDisplacement;
                    float f4 = pointF7.x;
                    PointF pointF8 = this.mSubtractDisplacement;
                    pointF6.set(f4 - pointF8.x, pointF7.y - pointF8.y);
                    reportDraggingInternal(pointF6, motionEvent);
                }
                pointF3.set(motionEvent.getX(findPointerIndex), motionEvent.getY(findPointerIndex));
                return;
            } else if (actionMasked != 3) {
                if (actionMasked != 6) {
                    return;
                }
                int actionIndex = motionEvent.getActionIndex();
                if (motionEvent.getPointerId(actionIndex) == this.mActivePointerId) {
                    int i4 = actionIndex == 0 ? 1 : 0;
                    pointF4.set(motionEvent.getX(i4) - (pointF3.x - pointF4.x), motionEvent.getY(i4) - (pointF3.y - pointF4.y));
                    pointF3.set(motionEvent.getX(i4), motionEvent.getY(i4));
                    this.mActivePointerId = motionEvent.getPointerId(i4);
                    return;
                }
                return;
            }
        }
        if (this.mState == scrollState2) {
            setState(scrollState);
        }
        this.mVelocityTracker.recycle();
        this.mVelocityTracker = null;
    }

    public abstract void reportDragEndInternal(PointF pointF);

    public abstract void reportDragStartInternal(boolean z4);

    public abstract void reportDraggingInternal(PointF pointF, MotionEvent motionEvent);

    public abstract boolean shouldScrollStart(PointF pointF);
}
