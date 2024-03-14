package io.grpc.internal;

import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes.dex */
public final class y2 implements Executor, Runnable {

    /* renamed from: g  reason: collision with root package name */
    public static final Logger f10439g = Logger.getLogger(y2.class.getName());

    /* renamed from: h  reason: collision with root package name */
    public static final v2 f10440h;

    /* renamed from: d  reason: collision with root package name */
    public final Executor f10441d;

    /* renamed from: e  reason: collision with root package name */
    public final Queue f10442e = new ConcurrentLinkedQueue();

    /* renamed from: f  reason: collision with root package name */
    public volatile int f10443f = 0;

    static {
        v2 x2Var;
        try {
            x2Var = new w2(AtomicIntegerFieldUpdater.newUpdater(y2.class, "f"));
        } catch (Throwable th) {
            f10439g.log(Level.SEVERE, "FieldUpdaterAtomicHelper failed", th);
            x2Var = new x2();
        }
        f10440h = x2Var;
    }

    public y2(Executor executor) {
        O2.m.h(executor, "'executor' must not be null.");
        this.f10441d = executor;
    }

    public final void a(Runnable runnable) {
        if (f10440h.a(this)) {
            try {
                this.f10441d.execute(this);
            } catch (Throwable th) {
                if (runnable != null) {
                    ((ConcurrentLinkedQueue) this.f10442e).remove(runnable);
                }
                f10440h.b(this);
                throw th;
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        Queue queue = this.f10442e;
        O2.m.h(runnable, "'r' must not be null.");
        ((ConcurrentLinkedQueue) queue).add(runnable);
        a(runnable);
    }

    @Override // java.lang.Runnable
    public final void run() {
        Runnable runnable;
        try {
            Executor executor = this.f10441d;
            while (executor == this.f10441d && (runnable = (Runnable) ((ConcurrentLinkedQueue) this.f10442e).poll()) != null) {
                try {
                    runnable.run();
                } catch (RuntimeException e4) {
                    Logger logger = f10439g;
                    Level level = Level.SEVERE;
                    logger.log(level, "Exception while executing runnable " + runnable, (Throwable) e4);
                }
            }
            f10440h.b(this);
            if (((ConcurrentLinkedQueue) this.f10442e).isEmpty()) {
                return;
            }
            a(null);
        } catch (Throwable th) {
            f10440h.b(this);
            throw th;
        }
    }
}
