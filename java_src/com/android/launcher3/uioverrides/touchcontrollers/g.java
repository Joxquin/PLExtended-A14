package com.android.launcher3.uioverrides.touchcontrollers;

import com.android.quickstep.util.MotionPauseDetector;
import com.android.quickstep.views.RecentsView;
/* loaded from: classes.dex */
public final /* synthetic */ class g implements MotionPauseDetector.OnMotionPauseListener, RecentsView.OnEmptyMessageUpdatedListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ NoButtonQuickSwitchTouchController f5260d;

    public /* synthetic */ g(NoButtonQuickSwitchTouchController noButtonQuickSwitchTouchController) {
        this.f5260d = noButtonQuickSwitchTouchController;
    }

    @Override // com.android.quickstep.views.RecentsView.OnEmptyMessageUpdatedListener
    public final void onEmptyMessageUpdated(boolean z4) {
        NoButtonQuickSwitchTouchController.d(this.f5260d, z4);
    }

    @Override // com.android.quickstep.util.MotionPauseDetector.OnMotionPauseListener
    public final void onMotionPauseDetected() {
        NoButtonQuickSwitchTouchController.c(this.f5260d);
    }
}
