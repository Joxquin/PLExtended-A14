package com.android.launcher3.taskbar.bubbles;

import android.graphics.PointF;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import com.android.launcher3.taskbar.TaskbarActivityContext;
/* loaded from: classes.dex */
public final class BubbleDragController {
    private final TaskbarActivityContext mActivity;
    private BubbleBarViewController mBubbleBarViewController;
    private BubbleDismissController mBubbleDismissController;

    /* loaded from: classes.dex */
    public abstract class BubbleTouchListener implements View.OnTouchListener {
        private BubbleDragAnimator mAnimator;
        private c mLongClickRunnable;
        private final PointF mTouchDownLocation = new PointF();
        private final PointF mViewInitialPosition = new PointF();
        private final VelocityTracker mVelocityTracker = VelocityTracker.obtain();
        private final long mPressToDragTimeout = ViewConfiguration.getLongPressTimeout() / 2;
        private State mState = State.IDLE;
        private int mTouchSlop = -1;

        /* loaded from: classes.dex */
        public enum State {
            IDLE,
            TOUCHED,
            DRAGGING,
            CANCELLED
        }

        public BubbleTouchListener() {
            BubbleDragController.this = r3;
        }

        public static /* synthetic */ void a(BubbleTouchListener bubbleTouchListener, View view) {
            BubbleDragController.this.mActivity.setTaskbarWindowFullscreen(false);
            bubbleTouchListener.cleanUp(view);
            bubbleTouchListener.onDragEnd();
        }

        public static void b(BubbleTouchListener bubbleTouchListener, View view) {
            bubbleTouchListener.mState = State.DRAGGING;
            bubbleTouchListener.onDragStart();
            BubbleDragController.this.mActivity.setTaskbarWindowFullscreen(true);
            BubbleDragAnimator bubbleDragAnimator = new BubbleDragAnimator(view);
            bubbleTouchListener.mAnimator = bubbleDragAnimator;
            bubbleDragAnimator.animateFocused();
            BubbleDragController.this.mBubbleDismissController.setupDismissView(view, bubbleTouchListener.mAnimator);
            BubbleDragController.this.mBubbleDismissController.showDismissView();
        }

        private void cleanUp(View view) {
            cleanUpLongClickHandler(view);
            this.mVelocityTracker.clear();
            this.mState = State.IDLE;
        }

        private void cleanUpLongClickHandler(View view) {
            if (this.mLongClickRunnable == null || view.getHandler() == null) {
                return;
            }
            view.getHandler().removeCallbacks(this.mLongClickRunnable);
            this.mLongClickRunnable = null;
        }

        private void stopDragging(View view, MotionEvent motionEvent) {
            c cVar = new c(this, view, 1);
            if (BubbleDragController.this.mBubbleDismissController.handleTouchEvent(motionEvent)) {
                this.mAnimator.animateDismiss(this.mViewInitialPosition, cVar);
            } else {
                onDragRelease();
                BubbleDragAnimator bubbleDragAnimator = this.mAnimator;
                PointF pointF = this.mViewInitialPosition;
                this.mVelocityTracker.computeCurrentVelocity(1000);
                bubbleDragAnimator.animateToInitialState(pointF, new PointF(this.mVelocityTracker.getXVelocity(), this.mVelocityTracker.getYVelocity()), cVar);
            }
            BubbleDragController.this.mBubbleDismissController.hideDismissView();
        }

        public abstract void onDragEnd();

        public void onDragRelease() {
        }

        public abstract void onDragStart();

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            float rawX = motionEvent.getRawX() - motionEvent.getX();
            float rawY = motionEvent.getRawY() - motionEvent.getY();
            motionEvent.offsetLocation(rawX, rawY);
            this.mVelocityTracker.addMovement(motionEvent);
            motionEvent.offsetLocation(-rawX, -rawY);
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked != 0) {
                if (actionMasked == 1) {
                    int ordinal = this.mState.ordinal();
                    if (ordinal == 1) {
                        view.performClick();
                        cleanUp(view);
                    } else if (ordinal != 2) {
                        cleanUp(view);
                    } else {
                        stopDragging(view, motionEvent);
                    }
                } else if (actionMasked == 2) {
                    float rawX2 = motionEvent.getRawX() - this.mTouchDownLocation.x;
                    float rawY2 = motionEvent.getRawY() - this.mTouchDownLocation.y;
                    int ordinal2 = this.mState.ordinal();
                    if (ordinal2 == 1) {
                        if (Math.hypot((double) rawX2, (double) rawY2) > ((double) this.mTouchSlop)) {
                            this.mState = State.CANCELLED;
                            cleanUpLongClickHandler(view);
                        }
                    } else if (ordinal2 == 2 && !BubbleDragController.this.mBubbleDismissController.handleTouchEvent(motionEvent)) {
                        view.setTranslationX(this.mViewInitialPosition.x + rawX2);
                        view.setTranslationY(this.mViewInitialPosition.y + rawY2);
                    }
                } else if (actionMasked == 3) {
                    if (this.mState == State.DRAGGING) {
                        stopDragging(view, motionEvent);
                    } else {
                        cleanUp(view);
                    }
                }
                return true;
            }
            return onTouchDown(view, motionEvent);
        }

        public boolean onTouchDown(View view, MotionEvent motionEvent) {
            this.mState = State.TOUCHED;
            this.mTouchSlop = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
            this.mTouchDownLocation.set(motionEvent.getRawX(), motionEvent.getRawY());
            this.mViewInitialPosition.set(view.getTranslationX(), view.getTranslationY());
            cleanUpLongClickHandler(view);
            this.mLongClickRunnable = new c(this, view, 0);
            view.getHandler().postDelayed(this.mLongClickRunnable, this.mPressToDragTimeout);
            return true;
        }
    }

    public BubbleDragController(TaskbarActivityContext taskbarActivityContext) {
        this.mActivity = taskbarActivityContext;
    }

    public final void init(BubbleControllers bubbleControllers) {
        this.mBubbleBarViewController = bubbleControllers.bubbleBarViewController;
        this.mBubbleDismissController = bubbleControllers.bubbleDismissController;
    }
}
