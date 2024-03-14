package io.grpc.internal;

import io.grpc.ChannelLogger$ChannelLogLevel;
import io.grpc.ConnectivityState;
/* loaded from: classes.dex */
public final class T0 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f9994d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ C1048s1 f9995e;

    public /* synthetic */ T0(C1048s1 c1048s1, int i4) {
        this.f9994d = i4;
        this.f9995e = c1048s1;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i4 = this.f9994d;
        ChannelLogger$ChannelLogLevel channelLogger$ChannelLogLevel = ChannelLogger$ChannelLogLevel.INFO;
        boolean z4 = true;
        switch (i4) {
            case 0:
                this.f9995e.l(true);
                return;
            case 1:
                this.f9995e.f10309S.a(channelLogger$ChannelLogLevel, "Entering SHUTDOWN state");
                this.f9995e.f10345w.a(ConnectivityState.SHUTDOWN);
                return;
            case 2:
                C1048s1 c1048s1 = this.f9995e;
                if (c1048s1.f10302L) {
                    return;
                }
                c1048s1.f10302L = true;
                C1048s1.j(c1048s1);
                return;
            case 3:
                C1048s1 c1048s12 = this.f9995e;
                c1048s12.f10325f0 = null;
                c1048s12.f10340r.d();
                if (c1048s12.f10291A) {
                    c1048s12.f10348z.b();
                    return;
                }
                return;
            default:
                C1048s1 c1048s13 = this.f9995e;
                c1048s13.q(true);
                O o4 = c1048s13.f10299I;
                o4.h(null);
                c1048s13.f10309S.a(channelLogger$ChannelLogLevel, "Entering IDLE state");
                c1048s13.f10345w.a(ConnectivityState.IDLE);
                Object[] objArr = {c1048s13.f10297G, o4};
                C0999e1 c0999e1 = c1048s13.f10323e0;
                c0999e1.getClass();
                int i5 = 0;
                while (true) {
                    if (i5 < 2) {
                        if (!c0999e1.f10376a.contains(objArr[i5])) {
                            i5++;
                        }
                    } else {
                        z4 = false;
                    }
                }
                if (z4) {
                    c1048s13.m();
                    return;
                }
                return;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ T0(C1048s1 c1048s1) {
        this(c1048s1, 4);
        this.f9994d = 4;
    }
}
