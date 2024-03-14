package io.grpc.internal;

import java.net.SocketAddress;
import java.net.URI;
/* renamed from: io.grpc.internal.v1  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1057v1 extends X2.x0 {

    /* renamed from: a  reason: collision with root package name */
    public final SocketAddress f10387a;

    /* renamed from: b  reason: collision with root package name */
    public final String f10388b;

    public C1057v1(SocketAddress socketAddress, String str) {
        this.f10387a = socketAddress;
        this.f10388b = str;
    }

    @Override // X2.x0
    public final String b() {
        return "directaddress";
    }

    @Override // X2.x0
    public final X2.A0 c(URI uri, X2.v0 v0Var) {
        return new C1054u1(this);
    }
}
