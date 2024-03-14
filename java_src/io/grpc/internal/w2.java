package io.grpc.internal;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
/* loaded from: classes.dex */
public final class w2 extends v2 {

    /* renamed from: a  reason: collision with root package name */
    public final AtomicIntegerFieldUpdater f10391a;

    public w2(AtomicIntegerFieldUpdater atomicIntegerFieldUpdater) {
        this.f10391a = atomicIntegerFieldUpdater;
    }

    @Override // io.grpc.internal.v2
    public final boolean a(y2 y2Var) {
        return this.f10391a.compareAndSet(y2Var, 0, -1);
    }

    @Override // io.grpc.internal.v2
    public final void b(y2 y2Var) {
        this.f10391a.set(y2Var, 0);
    }
}
