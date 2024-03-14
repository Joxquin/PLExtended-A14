package io.grpc.internal;

import X2.AbstractC0119i;
import io.grpc.ChannelLogger$ChannelLogLevel;
/* loaded from: classes.dex */
public final class F0 implements D1 {

    /* renamed from: a  reason: collision with root package name */
    public final InterfaceC1067z f9870a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f9871b = false;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ H0 f9872c;

    public F0(H0 h02, C0 c02) {
        this.f9872c = h02;
        this.f9870a = c02;
    }

    @Override // io.grpc.internal.D1
    public final void a() {
        O2.m.k("transportShutdown() must be called before transportTerminated().", this.f9871b);
        H0 h02 = this.f9872c;
        AbstractC0119i abstractC0119i = h02.f9900m;
        ChannelLogger$ChannelLogLevel channelLogger$ChannelLogLevel = ChannelLogger$ChannelLogLevel.INFO;
        InterfaceC1067z interfaceC1067z = this.f9870a;
        abstractC0119i.b(channelLogger$ChannelLogLevel, "{0} Terminated", interfaceC1067z.e());
        X2.M.b(h02.f9898k.f2143c, interfaceC1067z);
        RunnableC1068z0 runnableC1068z0 = new RunnableC1068z0(h02, interfaceC1067z, false);
        X2.P0 p02 = h02.f9901n;
        p02.execute(runnableC1068z0);
        p02.execute(new E0(1, this));
    }

    @Override // io.grpc.internal.D1
    public final void b(X2.L0 l02) {
        H0 h02 = this.f9872c;
        h02.f9900m.b(ChannelLogger$ChannelLogLevel.INFO, "{0} SHUTDOWN with {1}", this.f9870a.e(), H0.j(l02));
        this.f9871b = true;
        h02.f9901n.execute(new RunnableC1062x0(1, this, l02));
    }

    @Override // io.grpc.internal.D1
    public final void c(boolean z4) {
        H0 h02 = this.f9872c;
        h02.getClass();
        h02.f9901n.execute(new RunnableC1068z0(h02, this.f9870a, z4));
    }

    @Override // io.grpc.internal.D1
    public final void d() {
        H0 h02 = this.f9872c;
        h02.f9900m.a(ChannelLogger$ChannelLogLevel.INFO, "READY");
        h02.f9901n.execute(new E0(0, this));
    }
}
