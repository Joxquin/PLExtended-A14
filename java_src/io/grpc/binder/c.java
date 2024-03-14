package io.grpc.binder;

import android.content.Context;
import io.grpc.internal.C1061x;
import io.grpc.internal.G0;
import io.grpc.internal.H1;
import io.grpc.internal.H2;
import io.grpc.internal.InterfaceC1064y;
import io.grpc.internal.InterfaceC1067z;
import java.net.SocketAddress;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes.dex */
public final class c implements InterfaceC1064y {

    /* renamed from: d  reason: collision with root package name */
    public final Context f9699d;

    /* renamed from: e  reason: collision with root package name */
    public final Executor f9700e;

    /* renamed from: f  reason: collision with root package name */
    public final H1 f9701f;

    /* renamed from: g  reason: collision with root package name */
    public final H1 f9702g;

    /* renamed from: h  reason: collision with root package name */
    public final h f9703h;

    /* renamed from: i  reason: collision with root package name */
    public final e f9704i;

    /* renamed from: j  reason: collision with root package name */
    public final a f9705j;

    /* renamed from: k  reason: collision with root package name */
    public ScheduledExecutorService f9706k;

    /* renamed from: l  reason: collision with root package name */
    public Executor f9707l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f9708m;

    public c(Context context, Executor executor, H2 h22, H2 h23, h hVar, a aVar, e eVar) {
        this.f9699d = context;
        this.f9700e = executor;
        this.f9701f = h22;
        this.f9702g = h23;
        this.f9703h = hVar;
        this.f9705j = aVar;
        this.f9704i = eVar;
        this.f9706k = (ScheduledExecutorService) h22.a();
        this.f9707l = (Executor) h23.a();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f9708m = true;
        this.f9701f.b(this.f9706k);
        this.f9706k = null;
        this.f9702g.b(this.f9707l);
        this.f9707l = null;
    }

    @Override // io.grpc.internal.InterfaceC1064y
    public final ScheduledExecutorService s() {
        return this.f9706k;
    }

    @Override // io.grpc.internal.InterfaceC1064y
    public final InterfaceC1067z w(SocketAddress socketAddress, C1061x c1061x, G0 g02) {
        if (this.f9708m) {
            throw new IllegalStateException("The transport factory is closed.");
        }
        return new io.grpc.binder.internal.b(this.f9699d, (AndroidComponentAddress) socketAddress, this.f9705j, this.f9700e, this.f9701f, this.f9702g, this.f9703h, this.f9704i, c1061x.f10393b);
    }
}
