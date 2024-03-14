package com.android.launcher3;

import android.view.MotionEvent;
import com.android.launcher3.config.FeatureFlags;
/* loaded from: classes.dex */
public final class MotionEventsUtils {
    public static boolean isTrackpadMotionEvent(MotionEvent motionEvent) {
        return (FeatureFlags.ENABLE_TRACKPAD_GESTURE.get() && motionEvent.getClassification() == 3) || isTrackpadMultiFingerSwipe(motionEvent);
    }

    public static boolean isTrackpadMultiFingerSwipe(MotionEvent motionEvent) {
        return FeatureFlags.ENABLE_TRACKPAD_GESTURE.get() && motionEvent.getClassification() == 4;
    }
}
