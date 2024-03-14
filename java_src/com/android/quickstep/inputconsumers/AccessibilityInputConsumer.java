package com.android.quickstep.inputconsumers;

import android.content.Context;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import com.android.quickstep.GestureState;
import com.android.quickstep.InputConsumer;
import com.android.quickstep.RecentsAnimationDeviceState;
import com.android.quickstep.util.MotionPauseDetector;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.InputMonitorCompat;
/* loaded from: classes.dex */
public class AccessibilityInputConsumer extends DelegateInputConsumer {
    private static final String TAG = "A11yInputConsumer";
    private int mActivePointerId;
    private final Context mContext;
    private final RecentsAnimationDeviceState mDeviceState;
    private float mDownY;
    private final GestureState mGestureState;
    private final float mMinFlingVelocity;
    private final float mMinGestureDistance;
    private final MotionPauseDetector mMotionPauseDetector;
    private float mTotalY;
    private final VelocityTracker mVelocityTracker;

    public AccessibilityInputConsumer(Context context, RecentsAnimationDeviceState recentsAnimationDeviceState, GestureState gestureState, InputConsumer inputConsumer, InputMonitorCompat inputMonitorCompat) {
        super(inputConsumer, inputMonitorCompat);
        this.mActivePointerId = -1;
        this.mContext = context;
        this.mVelocityTracker = VelocityTracker.obtain();
        this.mMinGestureDistance = context.getResources().getDimension(R.dimen.accessibility_gesture_min_swipe_distance);
        this.mMinFlingVelocity = ViewConfiguration.get(context).getScaledMinimumFlingVelocity();
        this.mDeviceState = recentsAnimationDeviceState;
        this.mGestureState = gestureState;
        this.mMotionPauseDetector = new MotionPauseDetector(context);
    }

    @Override // com.android.quickstep.inputconsumers.DelegateInputConsumer
    public String getDelegatorName() {
        return "AccessibilityInputConsumer";
    }

    @Override // com.android.quickstep.InputConsumer
    public int getType() {
        return this.mDelegate.getType() | 32;
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:55:? A[RETURN, SYNTHETIC] */
    @Override // com.android.quickstep.InputConsumer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMotionEvent(android.view.MotionEvent r6) {
        /*
            Method dump skipped, instructions count: 261
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.quickstep.inputconsumers.AccessibilityInputConsumer.onMotionEvent(android.view.MotionEvent):void");
    }
}
