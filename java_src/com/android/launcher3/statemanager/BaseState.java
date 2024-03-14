package com.android.launcher3.statemanager;

import android.content.Context;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.uioverrides.states.SplitScreenSelectState;
/* loaded from: classes.dex */
public interface BaseState {
    default boolean displayOverviewTasksAsGrid(DeviceProfile deviceProfile) {
        return false;
    }

    BaseState getHistoryForState(BaseState baseState);

    int getTransitionDuration(Context context, boolean z4);

    boolean hasFlag(int i4);

    default boolean shouldDisableRestore() {
        return hasFlag(2);
    }

    default boolean shouldPreserveDataStateOnReapply() {
        return this instanceof SplitScreenSelectState;
    }

    default boolean showTaskThumbnailSplash() {
        return false;
    }
}
