package com.android.launcher3.util;

import com.android.launcher3.logging.StatsLogManager;
/* loaded from: classes.dex */
public final class PendingSplitSelectInfo {
    private final StatsLogManager.EventEnum mSource;
    private final int mStagePosition;
    private final int mStagedTaskId;

    public PendingSplitSelectInfo(int i4, int i5, StatsLogManager.EventEnum eventEnum) {
        this.mStagedTaskId = i4;
        this.mStagePosition = i5;
        this.mSource = eventEnum;
    }

    public final StatsLogManager.EventEnum getSource() {
        return this.mSource;
    }

    public final int getStagePosition() {
        return this.mStagePosition;
    }

    public final int getStagedTaskId() {
        return this.mStagedTaskId;
    }
}
