package io.grpc.internal;

import X2.InterfaceC0142x;
/* loaded from: classes.dex */
public final class X1 implements InterfaceC1004f2 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f10032a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ r2 f10033b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Object f10034c;

    public /* synthetic */ X1(r2 r2Var, Object obj, int i4) {
        this.f10032a = i4;
        this.f10033b = r2Var;
        this.f10034c = obj;
    }

    @Override // io.grpc.internal.InterfaceC1004f2
    public final void a(p2 p2Var) {
        int i4 = this.f10032a;
        Object obj = this.f10034c;
        switch (i4) {
            case 0:
                p2Var.f10206a.j((String) obj);
                return;
            case 1:
                p2Var.f10206a.o((InterfaceC0142x) obj);
                return;
            case 2:
                p2Var.f10206a.d((X2.E) obj);
                return;
            case 3:
                p2Var.f10206a.f((X2.H) obj);
                return;
            default:
                p2Var.f10206a.i(this.f10033b.f10255a.f2233d.a(obj));
                return;
        }
    }
}
