package com.android.launcher3;

import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
/* loaded from: classes.dex */
public final class CheckLongPressHelper {
    private boolean mHasPerformedLongPress;
    private boolean mIsInMouseRightClick;
    private final View.OnLongClickListener mListener;
    private float mLongPressTimeoutFactor = 0.75f;
    private RunnableC0406o mPendingCheckForLongPress;
    private final float mSlop;
    private final View mView;

    public CheckLongPressHelper(View view, View.OnLongClickListener onLongClickListener) {
        this.mView = view;
        this.mListener = onLongClickListener;
        this.mSlop = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
    }

    public static /* synthetic */ void b(CheckLongPressHelper checkLongPressHelper, MotionEvent motionEvent) {
        checkLongPressHelper.mView.getRootView().dispatchTouchEvent(motionEvent);
        motionEvent.recycle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void triggerLongPress() {
        View view = this.mView;
        if (view.getParent() == null || !view.hasWindowFocus()) {
            return;
        }
        boolean isPressed = view.isPressed();
        View.OnLongClickListener onLongClickListener = this.mListener;
        if ((isPressed && onLongClickListener == null) || this.mHasPerformedLongPress) {
            return;
        }
        if (onLongClickListener != null ? onLongClickListener.onLongClick(view) : view.performLongClick()) {
            view.setPressed(false);
            this.mHasPerformedLongPress = true;
        }
        RunnableC0406o runnableC0406o = this.mPendingCheckForLongPress;
        if (runnableC0406o != null) {
            view.removeCallbacks(runnableC0406o);
            this.mPendingCheckForLongPress = null;
        }
    }

    public final void cancelLongPress() {
        this.mIsInMouseRightClick = false;
        this.mHasPerformedLongPress = false;
        RunnableC0406o runnableC0406o = this.mPendingCheckForLongPress;
        if (runnableC0406o != null) {
            this.mView.removeCallbacks(runnableC0406o);
            this.mPendingCheckForLongPress = null;
        }
    }

    public final boolean hasPerformedLongPress() {
        return this.mHasPerformedLongPress;
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [com.android.launcher3.o] */
    public final void onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        boolean z4 = false;
        View view = this.mView;
        if (action != 0) {
            if (action != 1) {
                if (action == 2) {
                    if (this.mIsInMouseRightClick || !Utilities.pointInView(view, motionEvent.getX(), motionEvent.getY(), this.mSlop)) {
                        cancelLongPress();
                        return;
                    } else if (this.mPendingCheckForLongPress != null) {
                        if (motionEvent.getToolType(0) == 2 && motionEvent.isButtonPressed(2)) {
                            z4 = true;
                        }
                        if (z4) {
                            triggerLongPress();
                            return;
                        }
                        return;
                    } else {
                        return;
                    }
                } else if (action != 3) {
                    return;
                }
            }
            cancelLongPress();
            return;
        }
        cancelLongPress();
        if (motionEvent.isFromSource(8194) && (motionEvent.getButtonState() & 2) != 0) {
            this.mIsInMouseRightClick = true;
            triggerLongPress();
            Handler handler = view.getHandler();
            if (handler != null) {
                final MotionEvent obtain = MotionEvent.obtain(motionEvent);
                obtain.setAction(1);
                handler.postAtFrontOfQueue(new Runnable() { // from class: com.android.launcher3.n
                    @Override // java.lang.Runnable
                    public final void run() {
                        CheckLongPressHelper.b(CheckLongPressHelper.this, obtain);
                    }
                });
                return;
            }
            return;
        }
        this.mHasPerformedLongPress = false;
        if (this.mPendingCheckForLongPress == null) {
            this.mPendingCheckForLongPress = new Runnable() { // from class: com.android.launcher3.o
                @Override // java.lang.Runnable
                public final void run() {
                    CheckLongPressHelper.this.triggerLongPress();
                }
            };
        }
        view.postDelayed(this.mPendingCheckForLongPress, ViewConfiguration.getLongPressTimeout() * this.mLongPressTimeoutFactor);
        if (motionEvent.getToolType(0) == 2 && motionEvent.isButtonPressed(2)) {
            z4 = true;
        }
        if (z4) {
            triggerLongPress();
        }
    }

    public final void setLongPressTimeoutFactor() {
        this.mLongPressTimeoutFactor = 1.0f;
    }
}
