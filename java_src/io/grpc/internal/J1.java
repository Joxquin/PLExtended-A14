package io.grpc.internal;

import X2.C0144z;
import io.grpc.ConnectivityState;
/* loaded from: classes.dex */
public final class J1 implements X2.Z {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ X2.Y f9922a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ N1 f9923b;

    public J1(N1 n12, X2.Y y4) {
        this.f9923b = n12;
        this.f9922a = y4;
    }

    @Override // X2.Z
    public final void a(C0144z c0144z) {
        X2.V k12;
        N1 n12 = this.f9923b;
        n12.getClass();
        ConnectivityState connectivityState = ConnectivityState.SHUTDOWN;
        ConnectivityState connectivityState2 = c0144z.f2251a;
        if (connectivityState2 == connectivityState) {
            return;
        }
        ConnectivityState connectivityState3 = ConnectivityState.TRANSIENT_FAILURE;
        X2.V v4 = n12.f9957b;
        if (connectivityState2 == connectivityState3 || connectivityState2 == ConnectivityState.IDLE) {
            v4.f();
        }
        int ordinal = connectivityState2.ordinal();
        if (ordinal != 0) {
            X2.Y y4 = this.f9922a;
            if (ordinal == 1) {
                O2.m.h(y4, "subchannel");
                k12 = new K1(new X2.W(y4, X2.L0.f2126e, false));
            } else if (ordinal == 2) {
                k12 = new K1(X2.W.a(c0144z.f2252b));
            } else if (ordinal != 3) {
                throw new IllegalArgumentException("Unsupported state:" + connectivityState2);
            } else {
                k12 = new M1(n12, y4);
            }
        } else {
            k12 = new K1(X2.W.f2169e);
        }
        v4.g(connectivityState2, k12);
    }
}
