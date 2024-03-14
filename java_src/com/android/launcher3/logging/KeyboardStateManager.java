package com.android.launcher3.logging;

import android.os.SystemClock;
/* loaded from: classes.dex */
public final class KeyboardStateManager {
    private int mImeShownHeightPx;
    private KeyboardState mKeyboardState = KeyboardState.NO_IME_ACTION;
    private long mUpdatedTime;

    /* loaded from: classes.dex */
    public enum KeyboardState {
        NO_IME_ACTION,
        SHOW,
        HIDE
    }

    public KeyboardStateManager(int i4) {
        this.mImeShownHeightPx = i4;
    }

    public final int getImeShownHeight() {
        return this.mImeShownHeightPx;
    }

    public final KeyboardState getKeyboardState() {
        return this.mKeyboardState;
    }

    public final long getLastUpdatedTime() {
        return this.mUpdatedTime;
    }

    public final void setImeHeight(int i4) {
        if (i4 > 0) {
            this.mImeShownHeightPx = i4;
        }
    }

    public final void setKeyboardState(KeyboardState keyboardState) {
        this.mUpdatedTime = SystemClock.elapsedRealtime();
        this.mKeyboardState = keyboardState;
    }
}
