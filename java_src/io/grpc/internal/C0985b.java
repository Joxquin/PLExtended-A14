package io.grpc.internal;

import X2.AbstractC0104a0;
import X2.AbstractC0108c0;
import X2.C0112e0;
/* renamed from: io.grpc.internal.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0985b {

    /* renamed from: a  reason: collision with root package name */
    public final X2.V f10056a;

    /* renamed from: b  reason: collision with root package name */
    public AbstractC0104a0 f10057b;

    /* renamed from: c  reason: collision with root package name */
    public AbstractC0108c0 f10058c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C1001f f10059d;

    public C0985b(C1001f c1001f, C1007g1 c1007g1) {
        this.f10059d = c1001f;
        this.f10056a = c1007g1;
        C0112e0 c0112e0 = c1001f.f10105a;
        String str = c1001f.f10106b;
        AbstractC0108c0 a4 = c0112e0.a(str);
        this.f10058c = a4;
        if (a4 == null) {
            throw new IllegalStateException(E.c.a("Could not find policy '", str, "'. Make sure its implementation is either registered to LoadBalancerRegistry or included in META-INF/services/io.grpc.LoadBalancerProvider from your jar files."));
        }
        this.f10057b = a4.d(c1007g1);
    }
}
