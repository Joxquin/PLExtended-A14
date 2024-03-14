package com.android.launcher3.util;

import android.os.SystemClock;
/* loaded from: classes.dex */
public final class FlingBlockCheck {
    private boolean mBlockFling;
    private long mBlockFlingTime;

    public final void blockFling() {
        this.mBlockFling = true;
        this.mBlockFlingTime = SystemClock.uptimeMillis();
    }

    public final boolean isBlocked() {
        return this.mBlockFling;
    }

    public final void onEvent() {
        if (SystemClock.uptimeMillis() - this.mBlockFlingTime >= 200) {
            this.mBlockFling = false;
        }
    }

    public final void unblockFling() {
        this.mBlockFling = false;
        this.mBlockFlingTime = 0L;
    }
}
