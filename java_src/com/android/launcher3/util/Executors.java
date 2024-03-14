package com.android.launcher3.util;

import android.os.HandlerThread;
import android.os.Looper;
import android.os.Process;
import com.android.launcher3.util.Executors;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes.dex */
public final class Executors {
    public static final LooperExecutor MAIN_EXECUTOR;
    public static final LooperExecutor MODEL_EXECUTOR;
    private static final Map PACKAGE_EXECUTORS;
    public static final ThreadPoolExecutor THREAD_POOL_EXECUTOR;
    public static final LooperExecutor UI_HELPER_EXECUTOR;
    public static final ExecutorService VIEW_PREINFLATION_EXECUTOR;

    /* loaded from: classes.dex */
    public final class SimpleThreadFactory implements ThreadFactory {
        private final String mNamePrefix;
        private final AtomicInteger mCount = new AtomicInteger(0);
        private final int mPriority = 10;

        public SimpleThreadFactory(String str) {
            this.mNamePrefix = str;
        }

        public static /* synthetic */ void a(SimpleThreadFactory simpleThreadFactory, Runnable runnable) {
            Process.setThreadPriority(simpleThreadFactory.mPriority);
            runnable.run();
        }

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(final Runnable runnable) {
            Runnable runnable2 = new Runnable() { // from class: com.android.launcher3.util.h
                @Override // java.lang.Runnable
                public final void run() {
                    Executors.SimpleThreadFactory.a(Executors.SimpleThreadFactory.this, runnable);
                }
            };
            return new Thread(runnable2, this.mNamePrefix + this.mCount.incrementAndGet());
        }
    }

    static {
        int max = Math.max(Runtime.getRuntime().availableProcessors(), 2);
        PACKAGE_EXECUTORS = new ConcurrentHashMap();
        THREAD_POOL_EXECUTOR = new ThreadPoolExecutor(max, max, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue());
        MAIN_EXECUTOR = new LooperExecutor(Looper.getMainLooper());
        UI_HELPER_EXECUTOR = new LooperExecutor(createAndStartNewLooper(-2, "UiThreadHelper"));
        VIEW_PREINFLATION_EXECUTOR = java.util.concurrent.Executors.newSingleThreadExecutor();
        MODEL_EXECUTOR = new LooperExecutor(createAndStartNewLooper(0, "launcher-loader"));
    }

    public static Looper createAndStartNewLooper(int i4, String str) {
        HandlerThread handlerThread = new HandlerThread(str, i4);
        handlerThread.start();
        return handlerThread.getLooper();
    }

    public static LooperExecutor getPackageExecutor(String str) {
        return (LooperExecutor) ((ConcurrentHashMap) PACKAGE_EXECUTORS).computeIfAbsent(str, new C0474g());
    }
}
