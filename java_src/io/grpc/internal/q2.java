package io.grpc.internal;

import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes.dex */
public final class q2 {

    /* renamed from: a  reason: collision with root package name */
    public final int f10229a;

    /* renamed from: b  reason: collision with root package name */
    public final int f10230b;

    /* renamed from: c  reason: collision with root package name */
    public final int f10231c;

    /* renamed from: d  reason: collision with root package name */
    public final AtomicInteger f10232d;

    public q2(float f4, float f5) {
        AtomicInteger atomicInteger = new AtomicInteger();
        this.f10232d = atomicInteger;
        this.f10231c = (int) (f5 * 1000.0f);
        int i4 = (int) (f4 * 1000.0f);
        this.f10229a = i4;
        this.f10230b = i4 / 2;
        atomicInteger.set(i4);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof q2) {
            q2 q2Var = (q2) obj;
            return this.f10229a == q2Var.f10229a && this.f10231c == q2Var.f10231c;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f10229a), Integer.valueOf(this.f10231c)});
    }
}
