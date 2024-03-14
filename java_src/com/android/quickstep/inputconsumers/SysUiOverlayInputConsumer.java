package com.android.quickstep.inputconsumers;

import android.app.ActivityManager;
import android.content.Context;
import android.graphics.PointF;
import android.os.RemoteException;
import android.util.Log;
import android.view.MotionEvent;
import com.android.launcher3.testing.TestLogging;
import com.android.quickstep.InputConsumer;
import com.android.quickstep.RecentsAnimationDeviceState;
import com.android.quickstep.util.TriggerSwipeUpTouchTracker;
import com.android.systemui.shared.system.InputMonitorCompat;
/* loaded from: classes.dex */
public class SysUiOverlayInputConsumer implements InputConsumer, TriggerSwipeUpTouchTracker.OnSwipeUpListener {
    private static final String SYSTEM_DIALOG_REASON_GESTURE_NAV = "gestureNav";
    private static final String TAG = "SysUiOverlayInputConsumer";
    private final Context mContext;
    private final InputMonitorCompat mInputMonitor;
    private final TriggerSwipeUpTouchTracker mTriggerSwipeUpTracker;

    public SysUiOverlayInputConsumer(Context context, RecentsAnimationDeviceState recentsAnimationDeviceState, InputMonitorCompat inputMonitorCompat) {
        this.mContext = context;
        this.mInputMonitor = inputMonitorCompat;
        this.mTriggerSwipeUpTracker = new TriggerSwipeUpTouchTracker(context, true, recentsAnimationDeviceState.getNavBarPosition(), new Runnable() { // from class: com.android.quickstep.inputconsumers.i
            @Override // java.lang.Runnable
            public final void run() {
                SysUiOverlayInputConsumer.this.onInterceptTouch();
            }
        }, this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onInterceptTouch() {
        if (this.mInputMonitor != null) {
            TestLogging.recordEvent("Pilfer", "pilferPointers");
            this.mInputMonitor.pilferPointers();
        }
    }

    @Override // com.android.quickstep.InputConsumer
    public boolean allowInterceptByParent() {
        return !this.mTriggerSwipeUpTracker.interceptedTouch();
    }

    @Override // com.android.quickstep.InputConsumer
    public int getType() {
        return 1024;
    }

    @Override // com.android.quickstep.InputConsumer
    public void onMotionEvent(MotionEvent motionEvent) {
        this.mTriggerSwipeUpTracker.onMotionEvent(motionEvent);
    }

    @Override // com.android.quickstep.util.TriggerSwipeUpTouchTracker.OnSwipeUpListener
    public void onSwipeUp(boolean z4, PointF pointF) {
        try {
            ActivityManager.getService().closeSystemDialogs(SYSTEM_DIALOG_REASON_GESTURE_NAV);
        } catch (RemoteException e4) {
            Log.e(TAG, "Exception calling closeSystemDialogs " + e4.getMessage());
        }
    }

    @Override // com.android.quickstep.util.TriggerSwipeUpTouchTracker.OnSwipeUpListener
    public void onSwipeUpCancelled() {
    }
}
