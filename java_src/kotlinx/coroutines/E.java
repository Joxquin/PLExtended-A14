package kotlinx.coroutines;

import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.LockSupport;
/* loaded from: classes.dex */
public final class E extends Q implements Runnable {
    private static volatile Thread _thread;
    private static volatile int debugStatus;

    /* renamed from: l  reason: collision with root package name */
    public static final E f11302l;

    /* renamed from: m  reason: collision with root package name */
    public static final long f11303m;

    static {
        Long l4;
        E e4 = new E();
        f11302l = e4;
        e4.F(false);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        try {
            l4 = Long.getLong("kotlinx.coroutines.DefaultExecutor.keepAlive", 1000L);
        } catch (SecurityException unused) {
            l4 = 1000L;
        }
        kotlin.jvm.internal.h.d(l4, "try {\n            java.l…T_KEEP_ALIVE_MS\n        }");
        f11303m = timeUnit.toNanos(l4.longValue());
    }

    @Override // kotlinx.coroutines.Q
    public final void I(Runnable task) {
        kotlin.jvm.internal.h.e(task, "task");
        if (debugStatus == 4) {
            throw new RejectedExecutionException("DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details");
        }
        super.I(task);
    }

    @Override // kotlinx.coroutines.Q
    public final Thread K() {
        Thread thread = _thread;
        if (thread == null) {
            synchronized (this) {
                thread = _thread;
                if (thread == null) {
                    thread = new Thread(this, "kotlinx.coroutines.DefaultExecutor");
                    _thread = thread;
                    thread.setDaemon(true);
                    thread.start();
                }
            }
        }
        return thread;
    }

    @Override // kotlinx.coroutines.Q
    public final void N(long j4, O o4) {
        throw new RejectedExecutionException("DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details");
    }

    public final synchronized void O() {
        int i4 = debugStatus;
        if (i4 == 2 || i4 == 3) {
            debugStatus = 3;
            this.f11318i.d(null);
            this.f11319j.d(null);
            notifyAll();
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z4;
        s0.f11512a.set(this);
        try {
            synchronized (this) {
                int i4 = debugStatus;
                if (i4 == 2 || i4 == 3) {
                    z4 = false;
                } else {
                    debugStatus = 1;
                    notifyAll();
                    z4 = true;
                }
            }
            if (!z4) {
                _thread = null;
                O();
                if (L()) {
                    return;
                }
                K();
                return;
            }
            long j4 = Long.MAX_VALUE;
            while (true) {
                Thread.interrupted();
                long M3 = M();
                if (M3 == Long.MAX_VALUE) {
                    long nanoTime = System.nanoTime();
                    if (j4 == Long.MAX_VALUE) {
                        j4 = f11303m + nanoTime;
                    }
                    long j5 = j4 - nanoTime;
                    if (j5 <= 0) {
                        _thread = null;
                        O();
                        if (L()) {
                            return;
                        }
                        K();
                        return;
                    } else if (M3 > j5) {
                        M3 = j5;
                    }
                } else {
                    j4 = Long.MAX_VALUE;
                }
                if (M3 > 0) {
                    int i5 = debugStatus;
                    if (i5 == 2 || i5 == 3) {
                        _thread = null;
                        O();
                        if (L()) {
                            return;
                        }
                        K();
                        return;
                    }
                    LockSupport.parkNanos(this, M3);
                }
            }
        } catch (Throwable th) {
            _thread = null;
            O();
            if (!L()) {
                K();
            }
            throw th;
        }
    }

    @Override // kotlinx.coroutines.Q, kotlinx.coroutines.N
    public final void shutdown() {
        debugStatus = 4;
        super.shutdown();
    }
}
