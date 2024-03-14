package com.android.quickstep.fallback;

import android.view.MotionEvent;
import com.android.launcher3.uioverrides.touchcontrollers.TaskViewTouchController;
import com.android.quickstep.RecentsActivity;
import java.io.PrintWriter;
/* loaded from: classes.dex */
public class RecentsTaskController extends TaskViewTouchController {
    public RecentsTaskController(RecentsActivity recentsActivity) {
        super(recentsActivity);
    }

    @Override // com.android.launcher3.util.TouchController
    public /* bridge */ /* synthetic */ void dump(String str, PrintWriter printWriter) {
    }

    @Override // com.android.launcher3.uioverrides.touchcontrollers.TaskViewTouchController
    public boolean isRecentsInteractive() {
        return ((RecentsActivity) this.mActivity).hasWindowFocus() || ((RecentsState) ((RecentsActivity) this.mActivity).getStateManager().getState()).hasLiveTile();
    }

    @Override // com.android.launcher3.uioverrides.touchcontrollers.TaskViewTouchController
    public boolean isRecentsModal() {
        return false;
    }

    @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    public boolean onDrag(float f4, MotionEvent motionEvent) {
        return onDrag(f4);
    }

    @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    public boolean onDrag(float f4, float f5, MotionEvent motionEvent) {
        return onDrag(f4, motionEvent);
    }
}
