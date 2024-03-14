package io.grpc.internal;
/* loaded from: classes.dex */
public final class Z0 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f10045d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f10046e;

    public /* synthetic */ Z0(int i4, Object obj) {
        this.f10045d = i4;
        this.f10046e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f10045d) {
            case 0:
                ((C0987b1) this.f10046e).f10060a.m();
                return;
            case 1:
                C1048s1 c1048s1 = ((C1007g1) this.f10046e).f10118c;
                c1048s1.f10340r.d();
                X2.P0 p02 = c1048s1.f10340r;
                p02.d();
                X2.O0 o02 = c1048s1.f10325f0;
                if (o02 != null) {
                    o02.a();
                    c1048s1.f10325f0 = null;
                    c1048s1.f10327g0 = null;
                }
                p02.d();
                if (c1048s1.f10291A) {
                    c1048s1.f10348z.b();
                    return;
                }
                return;
            default:
                H0 h02 = ((C1043q1) this.f10046e).f10224g;
                X2.L0 l02 = C1048s1.f10287n0;
                h02.getClass();
                h02.f9901n.execute(new RunnableC1065y0(h02, l02, 0));
                return;
        }
    }
}
