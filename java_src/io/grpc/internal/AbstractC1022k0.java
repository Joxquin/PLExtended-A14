package io.grpc.internal;

import X2.AbstractC0114f0;
import X2.AbstractC0123k;
import X2.C0115g;
/* renamed from: io.grpc.internal.k0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1022k0 extends AbstractC0114f0 {

    /* renamed from: d  reason: collision with root package name */
    public final AbstractC0114f0 f10155d;

    public AbstractC1022k0(C1048s1 c1048s1) {
        this.f10155d = c1048s1;
    }

    @Override // X2.AbstractC0117h
    public final String a() {
        return this.f10155d.a();
    }

    @Override // X2.AbstractC0117h
    public final AbstractC0123k g(X2.u0 u0Var, C0115g c0115g) {
        return this.f10155d.g(u0Var, c0115g);
    }

    @Override // X2.AbstractC0114f0
    public final boolean h() {
        return this.f10155d.h();
    }

    public final String toString() {
        O2.i b4 = O2.j.b(this);
        b4.a(this.f10155d, "delegate");
        return b4.toString();
    }
}
