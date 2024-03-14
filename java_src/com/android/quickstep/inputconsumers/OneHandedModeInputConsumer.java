package com.android.quickstep.inputconsumers;

import android.content.Context;
import android.graphics.Point;
import android.graphics.PointF;
import com.android.launcher3.testing.shared.ResourceUtils;
import com.android.launcher3.util.DisplayController;
import com.android.quickstep.InputConsumer;
import com.android.quickstep.RecentsAnimationDeviceState;
import com.android.quickstep.SystemUiProxy;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.InputMonitorCompat;
/* loaded from: classes.dex */
public class OneHandedModeInputConsumer extends DelegateInputConsumer {
    private static final int ANGLE_MAX = 150;
    private static final int ANGLE_MIN = 30;
    private final Context mContext;
    private final RecentsAnimationDeviceState mDeviceState;
    private final Point mDisplaySize;
    private final PointF mDownPos;
    private final float mDragDistThreshold;
    private boolean mIsStopGesture;
    private final PointF mLastPos;
    private final int mNavBarSize;
    private boolean mPassedSlop;
    private final float mSquaredSlop;

    public OneHandedModeInputConsumer(Context context, RecentsAnimationDeviceState recentsAnimationDeviceState, InputConsumer inputConsumer, InputMonitorCompat inputMonitorCompat) {
        super(inputConsumer, inputMonitorCompat);
        this.mDownPos = new PointF();
        this.mLastPos = new PointF();
        this.mContext = context;
        this.mDeviceState = recentsAnimationDeviceState;
        this.mDragDistThreshold = context.getResources().getDimensionPixelSize(R.dimen.gestures_onehanded_drag_threshold);
        this.mSquaredSlop = recentsAnimationDeviceState.getSquaredTouchSlop();
        this.mDisplaySize = ((DisplayController) DisplayController.INSTANCE.get(context)).getInfo().currentSize;
        this.mNavBarSize = ResourceUtils.getNavbarSize(context.getResources(), "navigation_bar_gesture_height");
    }

    private void clearState() {
        this.mPassedSlop = false;
        this.mState = 0;
        this.mIsStopGesture = false;
    }

    private boolean isInSystemGestureRegion(PointF pointF) {
        return this.mDeviceState.isGesturalNavMode() && pointF.y > ((float) (this.mDisplaySize.y - this.mNavBarSize));
    }

    private boolean isValidExitAngle(float f4, float f5) {
        float degrees = (float) Math.toDegrees(Math.atan2(f5, f4));
        return degrees > 30.0f && degrees < 150.0f;
    }

    private boolean isValidStartAngle(float f4, float f5) {
        float degrees = (float) Math.toDegrees(Math.atan2(f5, f4));
        return degrees > -150.0f && degrees < -30.0f;
    }

    private void onStartGestureDetected() {
        if (this.mDeviceState.isSwipeToNotificationEnabled()) {
            ((SystemUiProxy) SystemUiProxy.INSTANCE.get(this.mContext)).expandNotificationPanel();
        } else if (this.mDeviceState.isOneHandedModeActive()) {
        } else {
            ((SystemUiProxy) SystemUiProxy.INSTANCE.get(this.mContext)).startOneHandedMode();
        }
    }

    private void onStopGestureDetected() {
        if (this.mDeviceState.isOneHandedModeEnabled() && this.mDeviceState.isOneHandedModeActive()) {
            ((SystemUiProxy) SystemUiProxy.INSTANCE.get(this.mContext)).stopOneHandedMode();
        }
    }

    @Override // com.android.quickstep.inputconsumers.DelegateInputConsumer
    public String getDelegatorName() {
        return "OneHandedModeInputConsumer";
    }

    @Override // com.android.quickstep.InputConsumer
    public int getType() {
        return this.mDelegate.getType() | 2048;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x006c, code lost:
        if (isValidStartAngle(r3 - r4.x, r0.y - r4.y) == false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0088, code lost:
        if (isValidExitAngle(r3 - r4.x, r0.y - r4.y) != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x008a, code lost:
        r6.mPassedSlop = isInSystemGestureRegion(r6.mLastPos);
        setActive(r7);
     */
    @Override // com.android.quickstep.InputConsumer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMotionEvent(android.view.MotionEvent r7) {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.quickstep.inputconsumers.OneHandedModeInputConsumer.onMotionEvent(android.view.MotionEvent):void");
    }
}
