package com.android.launcher3.util;

import android.os.Looper;
import android.os.MessageQueue;
/* loaded from: classes.dex */
public final class LooperIdleLock implements MessageQueue.IdleHandler {
    private boolean mIsLocked = true;
    private final Object mLock;
    private Looper mLooper;

    public LooperIdleLock(Object obj, Looper looper) {
        this.mLock = obj;
        this.mLooper = looper;
        looper.getQueue().addIdleHandler(this);
    }

    public final boolean awaitLocked() {
        if (this.mIsLocked) {
            try {
                this.mLock.wait(1000L);
            } catch (InterruptedException unused) {
            }
        }
        return this.mIsLocked;
    }

    @Override // android.os.MessageQueue.IdleHandler
    public final boolean queueIdle() {
        synchronized (this.mLock) {
            this.mIsLocked = false;
            this.mLock.notify();
        }
        this.mLooper.getQueue().removeIdleHandler(this);
        return false;
    }
}
