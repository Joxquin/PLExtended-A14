package io.grpc.internal;

import io.grpc.ConnectivityState;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: io.grpc.internal.y0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC1065y0 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f10429d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ X2.L0 f10430e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ H0 f10431f;

    public /* synthetic */ RunnableC1065y0(H0 h02, X2.L0 l02, int i4) {
        this.f10429d = i4;
        this.f10431f = h02;
        this.f10430e = l02;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f10429d) {
            case 0:
                ConnectivityState connectivityState = this.f10431f.f9913z.f2251a;
                ConnectivityState connectivityState2 = ConnectivityState.SHUTDOWN;
                if (connectivityState == connectivityState2) {
                    return;
                }
                H0 h02 = this.f10431f;
                h02.f9890A = this.f10430e;
                E1 e12 = h02.f9912y;
                H0 h03 = this.f10431f;
                InterfaceC1067z interfaceC1067z = h03.f9911x;
                h03.f9912y = null;
                H0 h04 = this.f10431f;
                h04.f9911x = null;
                H0.g(h04, connectivityState2);
                this.f10431f.f9902o.a();
                if (((ArrayList) this.f10431f.f9909v).isEmpty()) {
                    H0 h05 = this.f10431f;
                    h05.getClass();
                    h05.f9901n.execute(new RunnableC1059w0(h05, 2));
                }
                H0 h06 = this.f10431f;
                h06.f9901n.d();
                X2.O0 o02 = h06.f9906s;
                if (o02 != null) {
                    o02.a();
                    h06.f9906s = null;
                    h06.f9904q = null;
                }
                X2.O0 o03 = this.f10431f.f9907t;
                if (o03 != null) {
                    o03.a();
                    this.f10431f.f9908u.f(this.f10430e);
                    H0 h07 = this.f10431f;
                    h07.f9907t = null;
                    h07.f9908u = null;
                }
                if (e12 != null) {
                    e12.f(this.f10430e);
                }
                if (interfaceC1067z != null) {
                    interfaceC1067z.f(this.f10430e);
                    return;
                }
                return;
            default:
                Iterator it = new ArrayList(this.f10431f.f9909v).iterator();
                while (it.hasNext()) {
                    ((E1) it.next()).d(this.f10430e);
                }
                return;
        }
    }
}
