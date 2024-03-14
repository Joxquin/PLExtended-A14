package io.grpc.internal;

import X2.AbstractC0114f0;
import X2.AbstractC0123k;
import X2.C0115g;
import java.util.concurrent.Executor;
import java.util.logging.Logger;
/* loaded from: classes.dex */
public final class I1 extends AbstractC0114f0 implements X2.P {

    /* renamed from: d  reason: collision with root package name */
    public volatile boolean f9915d;

    static {
        Logger.getLogger(I1.class.getName());
    }

    @Override // X2.AbstractC0117h
    public final String a() {
        return null;
    }

    @Override // X2.P
    public final X2.Q e() {
        return null;
    }

    @Override // X2.AbstractC0117h
    public final AbstractC0123k g(X2.u0 u0Var, C0115g c0115g) {
        Executor executor = c0115g.f2192b;
        if (executor == null) {
            executor = null;
        }
        return new C1049t(u0Var, executor, c0115g, null, null, null);
    }

    @Override // X2.AbstractC0114f0
    public final boolean h() {
        return this.f9915d;
    }

    @Override // X2.AbstractC0114f0
    public final AbstractC0114f0 i() {
        this.f9915d = true;
        X2.L0.f2135n.f("OobChannel.shutdown() called");
        throw null;
    }

    public final String toString() {
        O2.j.b(this);
        throw null;
    }
}
