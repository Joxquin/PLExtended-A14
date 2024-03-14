package io.grpc.internal;

import X2.AbstractC0111e;
import java.net.SocketAddress;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* renamed from: io.grpc.internal.j  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1017j implements InterfaceC1064y {

    /* renamed from: d  reason: collision with root package name */
    public final InterfaceC1064y f10145d;

    /* renamed from: e  reason: collision with root package name */
    public final AbstractC0111e f10146e;

    /* renamed from: f  reason: collision with root package name */
    public final Executor f10147f;

    public C1017j(InterfaceC1064y interfaceC1064y, AbstractC0111e abstractC0111e, Executor executor) {
        O2.m.h(interfaceC1064y, "delegate");
        this.f10145d = interfaceC1064y;
        this.f10146e = abstractC0111e;
        this.f10147f = executor;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f10145d.close();
    }

    @Override // io.grpc.internal.InterfaceC1064y
    public final ScheduledExecutorService s() {
        return this.f10145d.s();
    }

    @Override // io.grpc.internal.InterfaceC1064y
    public final InterfaceC1067z w(SocketAddress socketAddress, C1061x c1061x, G0 g02) {
        return new C1013i(this, this.f10145d.w(socketAddress, c1061x, g02), c1061x.f10392a);
    }
}
