package io.grpc.internal;

import io.grpc.ChannelLogger$ChannelLogLevel;
import io.grpc.ConnectivityState;
import java.util.HashSet;
/* renamed from: io.grpc.internal.w0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC1059w0 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f10389d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ H0 f10390e;

    public /* synthetic */ RunnableC1059w0(H0 h02, int i4) {
        this.f10389d = i4;
        this.f10390e = h02;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i4 = this.f10389d;
        ConnectivityState connectivityState = ConnectivityState.CONNECTING;
        ChannelLogger$ChannelLogLevel channelLogger$ChannelLogLevel = ChannelLogger$ChannelLogLevel.INFO;
        switch (i4) {
            case 0:
                H0 h02 = this.f10390e;
                h02.f9906s = null;
                h02.f9900m.a(channelLogger$ChannelLogLevel, "CONNECTING after backoff");
                H0.g(this.f10390e, connectivityState);
                H0.h(this.f10390e);
                return;
            case 1:
                if (this.f10390e.f9913z.f2251a == ConnectivityState.IDLE) {
                    this.f10390e.f9900m.a(channelLogger$ChannelLogLevel, "CONNECTING as requested");
                    H0.g(this.f10390e, connectivityState);
                    H0.h(this.f10390e);
                    return;
                }
                return;
            default:
                this.f10390e.f9900m.a(channelLogger$ChannelLogLevel, "Terminated");
                H0 h03 = this.f10390e;
                U0 u02 = h03.f9895h;
                ((HashSet) ((C1043q1) u02.f10007b).f10228k.f10295E).remove(h03);
                X2.M.b(((C1043q1) u02.f10007b).f10228k.f10310T.f2142b, h03);
                C1048s1.k(((C1043q1) u02.f10007b).f10228k);
                return;
        }
    }
}
