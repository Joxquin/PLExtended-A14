package l;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: l.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ThreadFactoryC1262b implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    public final AtomicInteger f11527a = new AtomicInteger(0);

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread thread = new Thread(runnable);
        thread.setName("arch_disk_io_" + this.f11527a.getAndIncrement());
        return thread;
    }
}
