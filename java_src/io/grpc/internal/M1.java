package io.grpc.internal;

import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public final class M1 extends X2.V {

    /* renamed from: a  reason: collision with root package name */
    public final X2.Y f9945a;

    /* renamed from: b  reason: collision with root package name */
    public final AtomicBoolean f9946b = new AtomicBoolean(false);

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ N1 f9947c;

    public M1(N1 n12, X2.Y y4) {
        this.f9947c = n12;
        O2.m.h(y4, "subchannel");
        this.f9945a = y4;
    }

    @Override // X2.V
    public final X2.W e() {
        if (this.f9946b.compareAndSet(false, true)) {
            this.f9947c.f9957b.c().execute(new L1(this));
        }
        return X2.W.f2169e;
    }
}
