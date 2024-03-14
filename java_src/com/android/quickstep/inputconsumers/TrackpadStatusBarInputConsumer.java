package com.android.quickstep.inputconsumers;

import android.content.Context;
import android.graphics.PointF;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import com.android.quickstep.InputConsumer;
import com.android.quickstep.SystemUiProxy;
import com.android.systemui.shared.system.InputMonitorCompat;
/* loaded from: classes.dex */
public class TrackpadStatusBarInputConsumer extends DelegateInputConsumer {
    private final PointF mDown;
    private boolean mHasPassedTouchSlop;
    private final SystemUiProxy mSystemUiProxy;
    private final float mTouchSlop;

    public TrackpadStatusBarInputConsumer(Context context, InputConsumer inputConsumer, InputMonitorCompat inputMonitorCompat) {
        super(inputConsumer, inputMonitorCompat);
        this.mDown = new PointF();
        this.mSystemUiProxy = (SystemUiProxy) SystemUiProxy.INSTANCE.get(context);
        this.mTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop() * 2;
    }

    private void dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.mSystemUiProxy.isActive()) {
            this.mSystemUiProxy.onStatusBarTrackpadEvent(motionEvent);
        }
    }

    @Override // com.android.quickstep.inputconsumers.DelegateInputConsumer
    public String getDelegatorName() {
        return "TrackpadStatusBarInputConsumer";
    }

    @Override // com.android.quickstep.InputConsumer
    public int getType() {
        return this.mDelegate.getType() | 8192;
    }

    @Override // com.android.quickstep.InputConsumer
    public void onMotionEvent(MotionEvent motionEvent) {
        if (this.mState == 1) {
            dispatchTouchEvent(motionEvent);
            return;
        }
        this.mDelegate.onMotionEvent(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.mDown.set(motionEvent.getX(), motionEvent.getY());
            this.mHasPassedTouchSlop = false;
        } else if (actionMasked == 2 && !this.mHasPassedTouchSlop) {
            float y4 = motionEvent.getY() - this.mDown.y;
            if (Math.abs(y4) > this.mTouchSlop) {
                this.mHasPassedTouchSlop = true;
                if (y4 > 0.0f) {
                    setActive(motionEvent);
                    motionEvent.setAction(0);
                    dispatchTouchEvent(motionEvent);
                }
            }
        }
    }
}
