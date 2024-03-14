package io.grpc.binder.internal;

import X2.C0120i0;
import X2.E;
import X2.H;
import X2.InterfaceC0142x;
import X2.L0;
import X2.r0;
import io.grpc.StatusException;
import io.grpc.internal.C1044r0;
import io.grpc.internal.C1053u0;
import io.grpc.internal.InterfaceC1052u;
import io.grpc.internal.InterfaceC1055v;
import java.io.InputStream;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public final class f implements InterfaceC1052u {

    /* renamed from: a  reason: collision with root package name */
    public final d f9791a;

    /* renamed from: b  reason: collision with root package name */
    public final g f9792b;

    public f(d dVar, g gVar) {
        this.f9791a = dVar;
        this.f9792b = gVar;
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void a(int i4) {
        synchronized (this.f9791a) {
            d dVar = this.f9791a;
            dVar.f9788p += i4;
            dVar.d();
        }
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void b(int i4) {
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void c(InterfaceC1055v interfaceC1055v) {
        synchronized (this.f9791a) {
            try {
                d dVar = this.f9791a;
                g gVar = this.f9792b;
                dVar.f9776d = gVar;
                dVar.f9777e = gVar.f9795c;
                dVar.f9778f = interfaceC1055v;
                if (!(dVar.f9786n == Inbound$State.CLOSED)) {
                    dVar.m(Inbound$State.INITIALIZED);
                }
            } finally {
            }
        }
        if (!this.f9792b.f9793a.f9767m.f2333c) {
            interfaceC1055v.a();
        }
        try {
            synchronized (this.f9792b) {
                g gVar2 = this.f9792b;
                gVar2.f9797e = true;
                gVar2.d();
            }
        } catch (StatusException e4) {
            synchronized (this.f9791a) {
                d dVar2 = this.f9791a;
                L0 a4 = e4.a();
                dVar2.b(a4, a4, false);
            }
        }
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void d(E e4) {
        synchronized (this.f9792b) {
            g gVar = this.f9792b;
            gVar.getClass();
            C0120i0 c0120i0 = C1044r0.f10235b;
            r0 r0Var = gVar.f9805m;
            r0Var.a(c0120i0);
            r0Var.d(c0120i0, Long.valueOf(Math.max(0L, e4.c(TimeUnit.NANOSECONDS))));
        }
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final boolean e() {
        return !this.f9792b.f9793a.f9767m.f2333c;
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void f(H h4) {
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void flush() {
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void g(L0 l02) {
        synchronized (this.f9791a) {
            d dVar = this.f9791a;
            dVar.getClass();
            dVar.b(L0.f2127f, l02, false);
        }
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void h(int i4) {
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void i(InputStream inputStream) {
        try {
            synchronized (this.f9792b) {
                this.f9792b.a(inputStream);
                this.f9792b.d();
            }
        } catch (StatusException e4) {
            synchronized (this.f9791a) {
                d dVar = this.f9791a;
                L0 a4 = e4.a();
                dVar.b(a4, a4, false);
            }
        }
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void j(String str) {
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void k(C1053u0 c1053u0) {
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void l() {
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void m() {
        try {
            synchronized (this.f9792b) {
                g gVar = this.f9792b;
                gVar.f9800h = true;
                gVar.d();
            }
        } catch (StatusException e4) {
            synchronized (this.f9791a) {
                d dVar = this.f9791a;
                L0 a4 = e4.a();
                dVar.b(a4, a4, false);
            }
        }
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void n(boolean z4) {
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void o(InterfaceC0142x interfaceC0142x) {
    }

    public final String toString() {
        return "MultiMessageClientStream[" + this.f9791a + "/" + this.f9792b + "]";
    }
}
