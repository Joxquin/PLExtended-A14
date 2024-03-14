package io.grpc.internal;

import X2.AbstractC0133p;
import X2.C0107c;
import X2.C0115g;
import X2.C0135q;
/* renamed from: io.grpc.internal.p0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1039p0 implements InterfaceC1058w {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ AbstractC0133p f10203d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ InterfaceC1058w f10204e;

    public C1039p0(AbstractC0133p abstractC0133p, InterfaceC1058w interfaceC1058w) {
        this.f10203d = abstractC0133p;
        this.f10204e = interfaceC1058w;
    }

    @Override // io.grpc.internal.InterfaceC1058w
    public final InterfaceC1052u c(X2.u0 u0Var, X2.r0 r0Var, C0115g c0115g, X2.r[] rVarArr) {
        C0107c c0107c = C0107c.f2181b;
        C0115g c0115g2 = C0115g.f2190k;
        O2.m.h(c0115g, "callOptions cannot be null");
        C0135q c0135q = new C0135q(c0107c, c0115g, 0, false);
        AbstractC0133p abstractC0133p = this.f10203d;
        X2.r a4 = abstractC0133p instanceof C0992c2 ? abstractC0133p.a() : new C1042q0(abstractC0133p, c0135q, r0Var);
        O2.m.k("lb tracer already assigned", rVarArr[rVarArr.length - 1] == C1044r0.f10243j);
        rVarArr[rVarArr.length - 1] = a4;
        return this.f10204e.c(u0Var, r0Var, c0115g, rVarArr);
    }

    @Override // X2.P
    public final X2.Q e() {
        return this.f10204e.e();
    }
}
