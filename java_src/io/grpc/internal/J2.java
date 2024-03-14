package io.grpc.internal;

import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public final class J2 implements K2 {
    @Override // io.grpc.internal.K2
    public final long a() {
        return TimeUnit.MILLISECONDS.toNanos(System.currentTimeMillis());
    }
}
