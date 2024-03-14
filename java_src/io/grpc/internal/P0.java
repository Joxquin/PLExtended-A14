package io.grpc.internal;

import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes.dex */
public final class P0 implements Runnable {

    /* renamed from: e  reason: collision with root package name */
    public static final Logger f9976e = Logger.getLogger(P0.class.getName());

    /* renamed from: d  reason: collision with root package name */
    public final Runnable f9977d;

    public P0(Runnable runnable) {
        this.f9977d = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f9977d.run();
        } catch (Throwable th) {
            Logger logger = f9976e;
            Level level = Level.SEVERE;
            logger.log(level, "Exception while executing runnable " + this.f9977d, th);
            O2.r.a(th);
            throw new AssertionError(th);
        }
    }

    public final String toString() {
        return "LogExceptionRunnable(" + this.f9977d + ")";
    }
}
