package io.grpc.internal;

import X2.AbstractC0117h;
import X2.AbstractC0123k;
import X2.C0115g;
import java.util.concurrent.Executor;
import java.util.logging.Logger;
/* renamed from: io.grpc.internal.j1  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1019j1 extends AbstractC0117h {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C1037o1 f10148d;

    public C1019j1(C1037o1 c1037o1) {
        this.f10148d = c1037o1;
    }

    @Override // X2.AbstractC0117h
    public final String a() {
        return this.f10148d.f10195e;
    }

    @Override // X2.AbstractC0117h
    public final AbstractC0123k g(X2.u0 u0Var, C0115g c0115g) {
        C1048s1 c1048s1 = this.f10148d.f10197g;
        Logger logger = C1048s1.f10283j0;
        c1048s1.getClass();
        Executor executor = c0115g.f2192b;
        Executor executor2 = executor == null ? c1048s1.f10334l : executor;
        C1048s1 c1048s12 = this.f10148d.f10197g;
        C1049t c1049t = new C1049t(u0Var, executor2, c0115g, c1048s12.f10329h0, c1048s12.f10304N ? null : this.f10148d.f10197g.f10332j.s(), this.f10148d.f10197g.f10307Q);
        this.f10148d.f10197g.getClass();
        c1049t.f10373q = false;
        C1048s1 c1048s13 = this.f10148d.f10197g;
        c1049t.f10374r = c1048s13.f10341s;
        c1049t.f10375s = c1048s13.f10342t;
        return c1049t;
    }
}
