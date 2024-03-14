package io.grpc.internal;

import java.util.Random;
import java.util.concurrent.TimeUnit;
/* renamed from: io.grpc.internal.g0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1006g0 {

    /* renamed from: a  reason: collision with root package name */
    public final Random f10111a = new Random();

    /* renamed from: b  reason: collision with root package name */
    public final long f10112b;

    /* renamed from: c  reason: collision with root package name */
    public final double f10113c;

    /* renamed from: d  reason: collision with root package name */
    public final double f10114d;

    /* renamed from: e  reason: collision with root package name */
    public long f10115e;

    public C1006g0() {
        long nanos = TimeUnit.SECONDS.toNanos(1L);
        this.f10112b = TimeUnit.MINUTES.toNanos(2L);
        this.f10113c = 1.6d;
        this.f10114d = 0.2d;
        this.f10115e = nanos;
    }

    public final long a() {
        long j4 = this.f10115e;
        double d4 = j4;
        this.f10115e = Math.min((long) (this.f10113c * d4), this.f10112b);
        double d5 = this.f10114d;
        double d6 = (-d5) * d4;
        double d7 = d5 * d4;
        if (d7 >= d6) {
            return j4 + ((long) ((this.f10111a.nextDouble() * (d7 - d6)) + d6));
        }
        throw new IllegalArgumentException();
    }
}
