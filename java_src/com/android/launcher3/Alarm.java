package com.android.launcher3;

import android.os.Handler;
import android.os.SystemClock;
/* loaded from: classes.dex */
public final class Alarm implements Runnable {
    private OnAlarmListener mAlarmListener;
    private long mAlarmTriggerTime;
    private long mLastSetTimeout;
    private boolean mWaitingForCallback;
    private boolean mAlarmPending = false;
    private Handler mHandler = new Handler();

    public final boolean alarmPending() {
        return this.mAlarmPending;
    }

    public final void cancelAlarm() {
        this.mAlarmPending = false;
    }

    public final long getLastSetTimeout() {
        return this.mLastSetTimeout;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.mWaitingForCallback = false;
        if (this.mAlarmPending) {
            long uptimeMillis = SystemClock.uptimeMillis();
            long j4 = this.mAlarmTriggerTime;
            if (j4 > uptimeMillis) {
                this.mHandler.postDelayed(this, Math.max(0L, j4 - uptimeMillis));
                this.mWaitingForCallback = true;
                return;
            }
            this.mAlarmPending = false;
            OnAlarmListener onAlarmListener = this.mAlarmListener;
            if (onAlarmListener != null) {
                onAlarmListener.onAlarm(this);
            }
        }
    }

    public final void setAlarm(long j4) {
        long uptimeMillis = SystemClock.uptimeMillis();
        this.mAlarmPending = true;
        long j5 = this.mAlarmTriggerTime;
        long j6 = uptimeMillis + j4;
        this.mAlarmTriggerTime = j6;
        this.mLastSetTimeout = j4;
        if (this.mWaitingForCallback && j5 > j6) {
            this.mHandler.removeCallbacks(this);
            this.mWaitingForCallback = false;
        }
        if (this.mWaitingForCallback) {
            return;
        }
        this.mHandler.postDelayed(this, this.mAlarmTriggerTime - uptimeMillis);
        this.mWaitingForCallback = true;
    }

    public final void setOnAlarmListener(OnAlarmListener onAlarmListener) {
        this.mAlarmListener = onAlarmListener;
    }
}
