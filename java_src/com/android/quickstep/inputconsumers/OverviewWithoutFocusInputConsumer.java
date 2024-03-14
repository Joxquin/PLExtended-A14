package com.android.quickstep.inputconsumers;

import android.content.Context;
import android.graphics.PointF;
import android.view.MotionEvent;
import com.android.launcher3.BaseActivity;
import com.android.launcher3.logger.LauncherAtom$ContainerInfo;
import com.android.launcher3.logger.LauncherAtom$WorkspaceContainer;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.testing.TestLogging;
import com.android.quickstep.GestureState;
import com.android.quickstep.InputConsumer;
import com.android.quickstep.OverviewComponentObserver;
import com.android.quickstep.RecentsAnimationDeviceState;
import com.android.quickstep.util.TriggerSwipeUpTouchTracker;
import com.android.systemui.shared.system.InputMonitorCompat;
/* loaded from: classes.dex */
public class OverviewWithoutFocusInputConsumer implements InputConsumer, TriggerSwipeUpTouchTracker.OnSwipeUpListener {
    private final Context mContext;
    private final GestureState mGestureState;
    private final InputMonitorCompat mInputMonitor;
    private final TriggerSwipeUpTouchTracker mTriggerSwipeUpTracker;

    public OverviewWithoutFocusInputConsumer(Context context, RecentsAnimationDeviceState recentsAnimationDeviceState, GestureState gestureState, InputMonitorCompat inputMonitorCompat, boolean z4) {
        this.mContext = context;
        this.mGestureState = gestureState;
        this.mInputMonitor = inputMonitorCompat;
        this.mTriggerSwipeUpTracker = new TriggerSwipeUpTouchTracker(context, z4, recentsAnimationDeviceState.getNavBarPosition(), new Runnable() { // from class: com.android.quickstep.inputconsumers.f
            @Override // java.lang.Runnable
            public final void run() {
                OverviewWithoutFocusInputConsumer.this.onInterceptTouch();
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
        return 128;
    }

    @Override // com.android.quickstep.InputConsumer
    public void onMotionEvent(MotionEvent motionEvent) {
        this.mTriggerSwipeUpTracker.onMotionEvent(motionEvent);
    }

    @Override // com.android.quickstep.util.TriggerSwipeUpTouchTracker.OnSwipeUpListener
    public void onSwipeUp(boolean z4, PointF pointF) {
        OverviewComponentObserver.startHomeIntentSafely(this.mContext, this.mGestureState.getHomeIntent(), null);
        BaseActivity fromContext = BaseActivity.fromContext(this.mContext);
        GestureState gestureState = this.mGestureState;
        StatsLogManager.StatsLogger withDstState = fromContext.getStatsLogManager().logger().withSrcState(1).withDstState((gestureState == null || gestureState.getEndTarget() == null) ? 2 : this.mGestureState.getEndTarget().containerType);
        LauncherAtom$ContainerInfo.Builder newBuilder = LauncherAtom$ContainerInfo.newBuilder();
        LauncherAtom$WorkspaceContainer.Builder newBuilder2 = LauncherAtom$WorkspaceContainer.newBuilder();
        newBuilder2.setPageIndex$1(-1);
        newBuilder.setWorkspace(newBuilder2);
        withDstState.withContainerInfo((LauncherAtom$ContainerInfo) newBuilder.build()).log(StatsLogManager.LauncherEvent.LAUNCHER_HOME_GESTURE);
    }

    @Override // com.android.quickstep.util.TriggerSwipeUpTouchTracker.OnSwipeUpListener
    public void onSwipeUpCancelled() {
    }
}
