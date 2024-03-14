package com.android.quickstep;

import com.android.quickstep.MultiStateCallback;
import com.android.quickstep.util.ActiveGestureErrorDetector;
/* loaded from: classes.dex */
public final /* synthetic */ class U implements MultiStateCallback.TrackedEventsMapper {
    @Override // com.android.quickstep.MultiStateCallback.TrackedEventsMapper
    public final ActiveGestureErrorDetector.GestureEvent getTrackedEventForState(int i4) {
        ActiveGestureErrorDetector.GestureEvent lambda$new$0;
        lambda$new$0 = MultiStateCallback.lambda$new$0(i4);
        return lambda$new$0;
    }
}
