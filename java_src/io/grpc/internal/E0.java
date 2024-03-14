package io.grpc.internal;

import io.grpc.ConnectivityState;
import java.util.ArrayList;
/* loaded from: classes.dex */
public final class E0 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f9864d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f9865e;

    public /* synthetic */ E0(int i4, Object obj) {
        this.f9864d = i4;
        this.f9865e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f9864d) {
            case 0:
                F0 f02 = (F0) this.f9865e;
                H0 h02 = f02.f9872c;
                h02.f9904q = null;
                if (h02.f9890A != null) {
                    O2.m.k("Unexpected non-null activeTransport", h02.f9912y == null);
                    F0 f03 = (F0) this.f9865e;
                    f03.f9870a.f(f03.f9872c.f9890A);
                    return;
                }
                InterfaceC1067z interfaceC1067z = h02.f9911x;
                InterfaceC1067z interfaceC1067z2 = f02.f9870a;
                if (interfaceC1067z == interfaceC1067z2) {
                    h02.f9912y = interfaceC1067z2;
                    H0 h03 = ((F0) this.f9865e).f9872c;
                    h03.f9911x = null;
                    H0.g(h03, ConnectivityState.READY);
                    return;
                }
                return;
            case 1:
                F0 f04 = (F0) this.f9865e;
                ((ArrayList) f04.f9872c.f9909v).remove(f04.f9870a);
                if (((F0) this.f9865e).f9872c.f9913z.f2251a == ConnectivityState.SHUTDOWN && ((ArrayList) ((F0) this.f9865e).f9872c.f9909v).isEmpty()) {
                    H0 h04 = ((F0) this.f9865e).f9872c;
                    h04.getClass();
                    h04.f9901n.execute(new RunnableC1059w0(h04, 2));
                    return;
                }
                return;
            default:
                H0 h05 = (H0) ((RunnableC1062x0) this.f9865e).f10398f;
                E1 e12 = h05.f9908u;
                h05.f9907t = null;
                h05.f9908u = null;
                e12.f(X2.L0.f2135n.f("InternalSubchannel closed transport due to address change"));
                return;
        }
    }
}
