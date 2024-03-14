package io.grpc.internal;

import io.grpc.ChannelLogger$ChannelLogLevel;
import io.grpc.ConnectivityState;
/* renamed from: io.grpc.internal.f1  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC1003f1 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ X2.V f10107d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ ConnectivityState f10108e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ C1007g1 f10109f;

    public RunnableC1003f1(C1007g1 c1007g1, X2.V v4, ConnectivityState connectivityState) {
        this.f10109f = c1007g1;
        this.f10107d = v4;
        this.f10108e = connectivityState;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1007g1 c1007g1 = this.f10109f;
        C1048s1 c1048s1 = c1007g1.f10118c;
        if (c1007g1 != c1048s1.f10292B) {
            return;
        }
        X2.V v4 = this.f10107d;
        c1048s1.f10293C = v4;
        c1048s1.f10299I.h(v4);
        ConnectivityState connectivityState = this.f10108e;
        if (connectivityState != ConnectivityState.SHUTDOWN) {
            this.f10109f.f10118c.f10309S.b(ChannelLogger$ChannelLogLevel.INFO, "Entering {0} state with picker: {1}", connectivityState, this.f10107d);
            this.f10109f.f10118c.f10345w.a(this.f10108e);
        }
    }
}
