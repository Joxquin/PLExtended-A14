package com.android.launcher3.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewGroup;
import com.android.launcher3.AbstractFloatingView;
/* loaded from: classes.dex */
public final class ListenerView extends AbstractFloatingView {
    private Runnable mCloseListener;

    public ListenerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setVisibility(8);
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public final boolean canInterceptEventsInSystemGestureRegion() {
        return true;
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public final void handleClose(boolean z4) {
        if (this.mIsOpen) {
            Runnable runnable = this.mCloseListener;
            if (runnable != null) {
                runnable.run();
            } else if (getParent() instanceof ViewGroup) {
                ((ViewGroup) getParent()).removeView(this);
            }
        }
        this.mIsOpen = false;
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public final boolean isOfType(int i4) {
        return (i4 & 256) != 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mIsOpen = true;
    }

    @Override // com.android.launcher3.util.TouchController
    public final boolean onControllerInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            handleClose(false);
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mIsOpen = false;
    }

    public final void setListener(Runnable runnable) {
        this.mCloseListener = runnable;
    }
}
