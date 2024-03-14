package com.android.quickstep;

import com.android.quickstep.BaseActivityInterface;
import com.android.quickstep.MultiStateCallback;
import com.android.quickstep.util.ActiveGestureErrorDetector;
/* renamed from: com.android.quickstep.m  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0529m implements BaseActivityInterface.AnimationFactory, MultiStateCallback.TrackedEventsMapper {
    @Override // com.android.quickstep.BaseActivityInterface.AnimationFactory
    public final void createActivityInterface(long j4) {
        AbsSwipeUpHandler.lambda$new$0(j4);
    }

    @Override // com.android.quickstep.MultiStateCallback.TrackedEventsMapper
    public final ActiveGestureErrorDetector.GestureEvent getTrackedEventForState(int i4) {
        ActiveGestureErrorDetector.GestureEvent trackedEventForState;
        trackedEventForState = AbsSwipeUpHandler.getTrackedEventForState(i4);
        return trackedEventForState;
    }
}
