package com.android.quickstep.fallback;

import android.graphics.PointF;
import android.view.MotionEvent;
import com.android.launcher3.util.DisplayController;
import com.android.launcher3.util.NavigationMode;
import com.android.launcher3.util.TouchController;
import com.android.quickstep.RecentsActivity;
import com.android.quickstep.util.NavBarPosition;
import com.android.quickstep.util.TriggerSwipeUpTouchTracker;
import java.io.PrintWriter;
/* loaded from: classes.dex */
public class FallbackNavBarTouchController implements TouchController, TriggerSwipeUpTouchTracker.OnSwipeUpListener {
    private final RecentsActivity mActivity;
    private final TriggerSwipeUpTouchTracker mTriggerSwipeUpTracker;

    public FallbackNavBarTouchController(RecentsActivity recentsActivity) {
        this.mActivity = recentsActivity;
        NavigationMode navigationMode = DisplayController.getNavigationMode(recentsActivity);
        if (navigationMode == NavigationMode.NO_BUTTON) {
            this.mTriggerSwipeUpTracker = new TriggerSwipeUpTouchTracker(recentsActivity, true, new NavBarPosition(navigationMode, ((DisplayController) DisplayController.INSTANCE.get(recentsActivity)).getInfo()), null, this);
        } else {
            this.mTriggerSwipeUpTracker = null;
        }
    }

    @Override // com.android.launcher3.util.TouchController
    public /* bridge */ /* synthetic */ void dump(String str, PrintWriter printWriter) {
    }

    @Override // com.android.launcher3.util.TouchController
    public boolean onControllerInterceptTouchEvent(MotionEvent motionEvent) {
        if (!((motionEvent.getEdgeFlags() & 256) != 0) || this.mTriggerSwipeUpTracker == null) {
            return false;
        }
        if (motionEvent.getAction() == 0) {
            this.mTriggerSwipeUpTracker.init();
        }
        onControllerTouchEvent(motionEvent);
        return this.mTriggerSwipeUpTracker.interceptedTouch();
    }

    @Override // com.android.launcher3.util.TouchController
    public boolean onControllerTouchEvent(MotionEvent motionEvent) {
        TriggerSwipeUpTouchTracker triggerSwipeUpTouchTracker = this.mTriggerSwipeUpTracker;
        if (triggerSwipeUpTouchTracker != null) {
            triggerSwipeUpTouchTracker.onMotionEvent(motionEvent);
            return true;
        }
        return false;
    }

    @Override // com.android.quickstep.util.TriggerSwipeUpTouchTracker.OnSwipeUpListener
    public void onSwipeUp(boolean z4, PointF pointF) {
        ((FallbackRecentsView) this.mActivity.getOverviewPanel()).startHome();
    }

    @Override // com.android.quickstep.util.TriggerSwipeUpTouchTracker.OnSwipeUpListener
    public void onSwipeUpCancelled() {
    }
}
