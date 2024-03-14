package R2;

import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes.dex */
public final class k implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ThreadFactory f1675a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f1676b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ AtomicLong f1677c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ Boolean f1678d;

    public k(ThreadFactory threadFactory, String str, AtomicLong atomicLong, Boolean bool) {
        this.f1675a = threadFactory;
        this.f1676b = str;
        this.f1677c = atomicLong;
        this.f1678d = bool;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.f1675a.newThread(runnable);
        String str = this.f1676b;
        if (str != null) {
            AtomicLong atomicLong = this.f1677c;
            Objects.requireNonNull(atomicLong);
            newThread.setName(String.format(Locale.ROOT, str, Long.valueOf(atomicLong.getAndIncrement())));
        }
        Boolean bool = this.f1678d;
        if (bool != null) {
            newThread.setDaemon(bool.booleanValue());
        }
        return newThread;
    }
}
