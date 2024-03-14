package io.grpc.internal;

import X2.C0107c;
import io.grpc.HttpConnectProxiedSocketAddress;
import java.util.Arrays;
/* renamed from: io.grpc.internal.x  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1061x {

    /* renamed from: a  reason: collision with root package name */
    public String f10392a = "unknown-authority";

    /* renamed from: b  reason: collision with root package name */
    public C0107c f10393b = C0107c.f2181b;

    /* renamed from: c  reason: collision with root package name */
    public String f10394c;

    /* renamed from: d  reason: collision with root package name */
    public HttpConnectProxiedSocketAddress f10395d;

    public final boolean equals(Object obj) {
        if (obj instanceof C1061x) {
            C1061x c1061x = (C1061x) obj;
            return this.f10392a.equals(c1061x.f10392a) && this.f10393b.equals(c1061x.f10393b) && O2.k.a(this.f10394c, c1061x.f10394c) && O2.k.a(this.f10395d, c1061x.f10395d);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f10392a, this.f10393b, this.f10394c, this.f10395d});
    }
}
