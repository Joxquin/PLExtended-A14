package X2;

import java.lang.Thread;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes.dex */
public final class P0 implements Executor {

    /* renamed from: d  reason: collision with root package name */
    public final Thread.UncaughtExceptionHandler f2156d;

    /* renamed from: e  reason: collision with root package name */
    public final Queue f2157e = new ConcurrentLinkedQueue();

    /* renamed from: f  reason: collision with root package name */
    public final AtomicReference f2158f = new AtomicReference();

    public P0(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.f2156d = uncaughtExceptionHandler;
    }

    public final void a() {
        while (this.f2158f.compareAndSet(null, Thread.currentThread())) {
            while (true) {
                try {
                    Runnable runnable = (Runnable) ((ConcurrentLinkedQueue) this.f2157e).poll();
                    if (runnable != null) {
                        runnable.run();
                    } else {
                        this.f2158f.set(null);
                        if (((ConcurrentLinkedQueue) this.f2157e).isEmpty()) {
                            return;
                        }
                    }
                } catch (Throwable th) {
                    this.f2158f.set(null);
                    throw th;
                }
            }
        }
    }

    public final void b(Runnable runnable) {
        Queue queue = this.f2157e;
        O2.m.h(runnable, "runnable is null");
        ((ConcurrentLinkedQueue) queue).add(runnable);
    }

    public final O0 c(Runnable runnable, long j4, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        N0 n02 = new N0(runnable);
        return new O0(n02, scheduledExecutorService.schedule(new M0(this, n02, runnable), j4, timeUnit));
    }

    public final void d() {
        O2.m.k("Not called from the SynchronizationContext", Thread.currentThread() == this.f2158f.get());
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        b(runnable);
        a();
    }
}
