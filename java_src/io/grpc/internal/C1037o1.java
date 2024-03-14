package io.grpc.internal;

import X2.AbstractC0117h;
import X2.AbstractC0123k;
import X2.C0115g;
import java.util.Collection;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Logger;
/* renamed from: io.grpc.internal.o1  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1037o1 extends AbstractC0117h {

    /* renamed from: e  reason: collision with root package name */
    public final String f10195e;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ C1048s1 f10197g;

    /* renamed from: d  reason: collision with root package name */
    public final AtomicReference f10194d = new AtomicReference(C1048s1.f10289p0);

    /* renamed from: f  reason: collision with root package name */
    public final C1019j1 f10196f = new C1019j1(this);

    public C1037o1(C1048s1 c1048s1, String str) {
        this.f10197g = c1048s1;
        O2.m.h(str, "authority");
        this.f10195e = str;
    }

    @Override // X2.AbstractC0117h
    public final String a() {
        return this.f10195e;
    }

    @Override // X2.AbstractC0117h
    public final AbstractC0123k g(X2.u0 u0Var, C0115g c0115g) {
        AtomicReference atomicReference = this.f10194d;
        Object obj = atomicReference.get();
        S0 s02 = C1048s1.f10289p0;
        if (obj != s02) {
            return h(u0Var, c0115g);
        }
        C1048s1 c1048s1 = this.f10197g;
        c1048s1.f10340r.execute(new RunnableC1023k1(this, 2));
        if (atomicReference.get() != s02) {
            return h(u0Var, c0115g);
        }
        if (c1048s1.f10301K.get()) {
            return new C1027l1();
        }
        C1034n1 c1034n1 = new C1034n1(this, X2.C.b(), u0Var, c0115g);
        c1048s1.f10340r.execute(new RunnableC1011h1(2, this, c1034n1));
        return c1034n1;
    }

    public final AbstractC0123k h(X2.u0 u0Var, C0115g c0115g) {
        X2.O o4 = (X2.O) this.f10194d.get();
        C1019j1 c1019j1 = this.f10196f;
        if (o4 == null) {
            return c1019j1.g(u0Var, c0115g);
        }
        if (o4 instanceof B1) {
            C1 c12 = ((B1) o4).f9834b;
            c12.getClass();
            A1 a12 = (A1) c12.f9839b.get(u0Var.f2231b);
            if (a12 == null) {
                a12 = (A1) c12.f9840c.get(u0Var.f2232c);
            }
            if (a12 == null) {
                a12 = c12.f9838a;
            }
            if (a12 != null) {
                c0115g = c0115g.b(A1.f9821g, a12);
            }
            return c1019j1.g(u0Var, c0115g);
        }
        return new C0995d1(o4, c1019j1, this.f10197g.f10334l, u0Var, c0115g);
    }

    public final void i(X2.O o4) {
        Collection<C1034n1> collection;
        AtomicReference atomicReference = this.f10194d;
        X2.O o5 = (X2.O) atomicReference.get();
        atomicReference.set(o4);
        if (o5 != C1048s1.f10289p0 || (collection = this.f10197g.f10296F) == null) {
            return;
        }
        for (C1034n1 c1034n1 : collection) {
            C1048s1 c1048s1 = c1034n1.f10184n.f10197g;
            Logger logger = C1048s1.f10283j0;
            c1048s1.getClass();
            Executor executor = c1034n1.f10183m.f2192b;
            if (executor == null) {
                executor = c1048s1.f10334l;
            }
            executor.execute(new RunnableC1031m1(c1034n1, 0));
        }
    }
}
