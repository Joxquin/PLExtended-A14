package X2;

import java.util.concurrent.ScheduledFuture;
/* loaded from: classes.dex */
public final class O0 {

    /* renamed from: a  reason: collision with root package name */
    public final N0 f2154a;

    /* renamed from: b  reason: collision with root package name */
    public final ScheduledFuture f2155b;

    public O0(N0 n02, ScheduledFuture scheduledFuture) {
        this.f2154a = n02;
        O2.m.h(scheduledFuture, "future");
        this.f2155b = scheduledFuture;
    }

    public final void a() {
        this.f2154a.f2151e = true;
        this.f2155b.cancel(false);
    }
}
