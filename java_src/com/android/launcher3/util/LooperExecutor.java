package com.android.launcher3.util;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Process;
import java.util.List;
import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public final class LooperExecutor extends AbstractExecutorService {
    private final Handler mHandler;

    public LooperExecutor(Looper looper) {
        this.mHandler = new Handler(looper);
    }

    @Override // java.util.concurrent.ExecutorService
    @Deprecated
    public final boolean awaitTermination(long j4, TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        if (this.mHandler.getLooper() == Looper.myLooper()) {
            runnable.run();
        } else {
            this.mHandler.post(runnable);
        }
    }

    public final Handler getHandler() {
        return this.mHandler;
    }

    public final Looper getLooper() {
        return this.mHandler.getLooper();
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean isShutdown() {
        return false;
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean isTerminated() {
        return false;
    }

    public final void post(Runnable runnable) {
        this.mHandler.post(runnable);
    }

    public final void setThreadPriority(int i4) {
        Process.setThreadPriority(((HandlerThread) this.mHandler.getLooper().getThread()).getThreadId(), i4);
    }

    @Override // java.util.concurrent.ExecutorService
    @Deprecated
    public final void shutdown() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.ExecutorService
    @Deprecated
    public final List shutdownNow() {
        throw new UnsupportedOperationException();
    }
}
