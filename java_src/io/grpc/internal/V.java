package io.grpc.internal;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class V implements InterfaceC1055v {

    /* renamed from: a  reason: collision with root package name */
    public final InterfaceC1055v f10010a;

    /* renamed from: b  reason: collision with root package name */
    public volatile boolean f10011b;

    /* renamed from: c  reason: collision with root package name */
    public List f10012c = new ArrayList();

    public V(InterfaceC1055v interfaceC1055v) {
        this.f10010a = interfaceC1055v;
    }

    @Override // io.grpc.internal.InterfaceC1055v
    public final void a() {
        if (this.f10011b) {
            this.f10010a.a();
        } else {
            e(new Q(4, this));
        }
    }

    @Override // io.grpc.internal.InterfaceC1055v
    public final void b(X2.r0 r0Var) {
        e(new S(7, this, r0Var));
    }

    @Override // io.grpc.internal.InterfaceC1055v
    public final void c(io.grpc.binder.internal.e eVar) {
        if (this.f10011b) {
            this.f10010a.c(eVar);
        } else {
            e(new S(6, this, eVar));
        }
    }

    @Override // io.grpc.internal.InterfaceC1055v
    public final void d(X2.L0 l02, ClientStreamListener$RpcProgress clientStreamListener$RpcProgress, X2.r0 r0Var) {
        e(new U(this, l02, clientStreamListener$RpcProgress, r0Var));
    }

    public final void e(Runnable runnable) {
        synchronized (this) {
            if (this.f10011b) {
                runnable.run();
            } else {
                this.f10012c.add(runnable);
            }
        }
    }
}
