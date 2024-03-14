package com.android.launcher3.icons.cache;

import M0.b;
import android.os.Handler;
import com.android.launcher3.icons.cache.HandlerRunnable;
import com.android.launcher3.util.LooperExecutor;
import java.util.concurrent.Executor;
import java.util.function.Consumer;
import java.util.function.Supplier;
/* loaded from: classes.dex */
public final class HandlerRunnable implements Runnable {
    private final Consumer mCallback;
    private final Executor mCallbackExecutor;
    private boolean mCanceled;
    private final Runnable mEndRunnable;
    private boolean mEnded;
    private final Supplier mTask;
    private final Handler mWorkerHandler;

    public HandlerRunnable(Handler handler, Supplier supplier, LooperExecutor looperExecutor, Consumer consumer) {
        this(handler, supplier, looperExecutor, consumer, new b());
    }

    public static void a(HandlerRunnable handlerRunnable, Object obj) {
        if (!handlerRunnable.mCanceled) {
            handlerRunnable.mCallback.accept(obj);
        }
        if (handlerRunnable.mEnded) {
            return;
        }
        handlerRunnable.mEnded = true;
        handlerRunnable.mEndRunnable.run();
    }

    public static void b(HandlerRunnable handlerRunnable) {
        if (handlerRunnable.mEnded) {
            return;
        }
        handlerRunnable.mEnded = true;
        handlerRunnable.mEndRunnable.run();
    }

    public final void cancel() {
        this.mWorkerHandler.removeCallbacks(this);
        this.mCanceled = true;
        this.mCallbackExecutor.execute(new Runnable() { // from class: M0.c
            @Override // java.lang.Runnable
            public final void run() {
                HandlerRunnable.b(HandlerRunnable.this);
            }
        });
    }

    @Override // java.lang.Runnable
    public final void run() {
        final Object obj = this.mTask.get();
        this.mCallbackExecutor.execute(new Runnable() { // from class: M0.d
            @Override // java.lang.Runnable
            public final void run() {
                HandlerRunnable.a(HandlerRunnable.this, obj);
            }
        });
    }

    public HandlerRunnable(Handler handler, Supplier supplier, LooperExecutor looperExecutor, Consumer consumer, Runnable runnable) {
        this.mEnded = false;
        this.mCanceled = false;
        this.mWorkerHandler = handler;
        this.mTask = supplier;
        this.mCallbackExecutor = looperExecutor;
        this.mCallback = consumer;
        this.mEndRunnable = runnable;
    }
}
