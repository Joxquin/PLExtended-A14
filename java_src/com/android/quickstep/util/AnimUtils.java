package com.android.quickstep.util;
/* loaded from: classes.dex */
public class AnimUtils {
    public static SplitAnimationTimings getDeviceOverviewToSplitTimings(boolean z4) {
        return z4 ? SplitAnimationTimings.TABLET_OVERVIEW_TO_SPLIT : SplitAnimationTimings.PHONE_OVERVIEW_TO_SPLIT;
    }

    public static SplitAnimationTimings getDeviceSplitToConfirmTimings(boolean z4) {
        return z4 ? SplitAnimationTimings.TABLET_SPLIT_TO_CONFIRM : SplitAnimationTimings.PHONE_SPLIT_TO_CONFIRM;
    }
}
