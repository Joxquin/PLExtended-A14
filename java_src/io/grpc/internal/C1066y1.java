package io.grpc.internal;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.logging.Level;
import java.util.logging.LogRecord;
import java.util.logging.Logger;
/* renamed from: io.grpc.internal.y1  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1066y1 extends WeakReference {

    /* renamed from: f  reason: collision with root package name */
    public static final boolean f10432f = Boolean.parseBoolean(System.getProperty("io.grpc.ManagedChannel.enableAllocationTracking", "true"));

    /* renamed from: g  reason: collision with root package name */
    public static final RuntimeException f10433g;

    /* renamed from: a  reason: collision with root package name */
    public final ReferenceQueue f10434a;

    /* renamed from: b  reason: collision with root package name */
    public final ConcurrentMap f10435b;

    /* renamed from: c  reason: collision with root package name */
    public final String f10436c;

    /* renamed from: d  reason: collision with root package name */
    public final Reference f10437d;

    /* renamed from: e  reason: collision with root package name */
    public final AtomicBoolean f10438e;

    static {
        RuntimeException runtimeException = new RuntimeException("ManagedChannel allocation site not recorded.  Set -Dio.grpc.ManagedChannel.enableAllocationTracking=true to enable it");
        runtimeException.setStackTrace(new StackTraceElement[0]);
        f10433g = runtimeException;
    }

    public C1066y1(C1069z1 c1069z1, C1048s1 c1048s1, ReferenceQueue referenceQueue, ConcurrentMap concurrentMap) {
        super(c1069z1, referenceQueue);
        this.f10438e = new AtomicBoolean();
        this.f10437d = new SoftReference(f10432f ? new RuntimeException("ManagedChannel allocation site") : f10433g);
        this.f10436c = c1048s1.toString();
        this.f10434a = referenceQueue;
        this.f10435b = concurrentMap;
        ((ConcurrentHashMap) concurrentMap).put(this, this);
        a(referenceQueue);
    }

    public static void a(ReferenceQueue referenceQueue) {
        while (true) {
            C1066y1 c1066y1 = (C1066y1) referenceQueue.poll();
            if (c1066y1 == null) {
                return;
            }
            RuntimeException runtimeException = (RuntimeException) c1066y1.f10437d.get();
            super.clear();
            c1066y1.f10435b.remove(c1066y1);
            c1066y1.f10437d.clear();
            if (!c1066y1.f10438e.get()) {
                Level level = Level.SEVERE;
                Logger logger = C1069z1.f10449h;
                if (logger.isLoggable(level)) {
                    LogRecord logRecord = new LogRecord(level, "*~*~*~ Channel {0} was not shutdown properly!!! ~*~*~*" + System.getProperty("line.separator") + "    Make sure to call shutdown()/shutdownNow() and wait until awaitTermination() returns true.");
                    logRecord.setLoggerName(logger.getName());
                    logRecord.setParameters(new Object[]{c1066y1.f10436c});
                    logRecord.setThrown(runtimeException);
                    logger.log(logRecord);
                }
            }
        }
    }

    @Override // java.lang.ref.Reference
    public final void clear() {
        super.clear();
        this.f10435b.remove(this);
        this.f10437d.clear();
        a(this.f10434a);
    }
}
