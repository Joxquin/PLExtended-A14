package io.grpc.internal;

import java.util.Locale;
import java.util.concurrent.TimeUnit;
/* renamed from: io.grpc.internal.s  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC1046s implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final long f10278d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ C1049t f10279e;

    public RunnableC1046s(C1049t c1049t, long j4) {
        this.f10279e = c1049t;
        this.f10278d = j4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1053u0 c1053u0 = new C1053u0();
        this.f10279e.f10366j.k(c1053u0);
        long abs = Math.abs(this.f10278d);
        TimeUnit timeUnit = TimeUnit.SECONDS;
        long nanos = abs / timeUnit.toNanos(1L);
        long abs2 = Math.abs(this.f10278d) % timeUnit.toNanos(1L);
        StringBuilder sb = new StringBuilder("deadline exceeded after ");
        if (this.f10278d < 0) {
            sb.append('-');
        }
        sb.append(nanos);
        sb.append(String.format(Locale.US, ".%09d", Long.valueOf(abs2)));
        sb.append("s. ");
        sb.append(c1053u0);
        this.f10279e.f10366j.g(X2.L0.f2129h.a(sb.toString()));
    }
}
