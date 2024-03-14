package com.android.quickstep.inputconsumers;

import android.media.session.MediaSessionManager;
import android.view.KeyEvent;
import android.view.MotionEvent;
import com.android.launcher3.statemanager.StatefulActivity;
import com.android.launcher3.testing.TestLogging;
import com.android.launcher3.views.BaseDragLayer;
import com.android.quickstep.BaseActivityInterface;
import com.android.quickstep.GestureState;
import com.android.quickstep.InputConsumer;
import com.android.quickstep.TaskUtils;
import com.android.systemui.shared.system.ActivityManagerWrapper;
import com.android.systemui.shared.system.InputMonitorCompat;
/* loaded from: classes.dex */
public class OverviewInputConsumer implements InputConsumer {
    private final StatefulActivity mActivity;
    private final BaseActivityInterface mActivityInterface;
    private boolean mHasSetTouchModeForFirstDPadEvent;
    private final InputMonitorCompat mInputMonitor;
    private final int[] mLocationOnScreen;
    private final boolean mStartingInActivityBounds;
    private final BaseDragLayer mTarget;
    private boolean mTargetHandledTouch;

    public OverviewInputConsumer(GestureState gestureState, StatefulActivity statefulActivity, InputMonitorCompat inputMonitorCompat, boolean z4) {
        int[] iArr = new int[2];
        this.mLocationOnScreen = iArr;
        this.mActivity = statefulActivity;
        this.mInputMonitor = inputMonitorCompat;
        this.mStartingInActivityBounds = z4;
        this.mActivityInterface = gestureState.getActivityInterface();
        BaseDragLayer dragLayer = statefulActivity.getDragLayer();
        this.mTarget = dragLayer;
        dragLayer.getLocationOnScreen(iArr);
    }

    @Override // com.android.quickstep.InputConsumer
    public boolean allowInterceptByParent() {
        return !this.mTargetHandledTouch;
    }

    @Override // com.android.quickstep.InputConsumer
    public int getType() {
        return 2;
    }

    @Override // com.android.quickstep.InputConsumer
    public void onHoverEvent(MotionEvent motionEvent) {
        this.mActivity.dispatchGenericMotionEvent(motionEvent);
    }

    @Override // com.android.quickstep.InputConsumer
    public void onKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 21 || keyCode == 22) {
            if (!this.mHasSetTouchModeForFirstDPadEvent) {
                this.mHasSetTouchModeForFirstDPadEvent = true;
                this.mActivity.getRootView().getViewRootImpl().touchModeChanged(false);
            }
        } else if (keyCode == 24 || keyCode == 25 || keyCode == 164) {
            ((MediaSessionManager) this.mActivity.getSystemService(MediaSessionManager.class)).dispatchVolumeKeyEventAsSystemService(keyEvent, Integer.MIN_VALUE);
        }
        this.mActivity.dispatchKeyEvent(keyEvent);
    }

    @Override // com.android.quickstep.InputConsumer
    public void onMotionEvent(MotionEvent motionEvent) {
        int edgeFlags = motionEvent.getEdgeFlags();
        if (!this.mStartingInActivityBounds) {
            motionEvent.setEdgeFlags(edgeFlags | 256);
        }
        int[] iArr = this.mLocationOnScreen;
        motionEvent.offsetLocation(-iArr[0], -iArr[1]);
        boolean proxyTouchEvent = this.mTarget.proxyTouchEvent(motionEvent, this.mStartingInActivityBounds);
        int[] iArr2 = this.mLocationOnScreen;
        motionEvent.offsetLocation(iArr2[0], iArr2[1]);
        motionEvent.setEdgeFlags(edgeFlags);
        if (!this.mTargetHandledTouch && proxyTouchEvent) {
            this.mTargetHandledTouch = true;
            if (!this.mStartingInActivityBounds) {
                this.mActivityInterface.closeOverlay();
                TaskUtils.closeSystemWindowsAsync(ActivityManagerWrapper.CLOSE_SYSTEM_WINDOWS_REASON_RECENTS);
            }
            if (this.mInputMonitor != null) {
                TestLogging.recordEvent("Pilfer", "pilferPointers");
                this.mInputMonitor.pilferPointers();
            }
        }
        if (this.mHasSetTouchModeForFirstDPadEvent) {
            this.mActivity.getRootView().clearFocus();
        }
    }
}
