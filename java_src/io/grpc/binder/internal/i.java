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
public final class i implements InterfaceC1052u {

    /* renamed from: a  reason: collision with root package name */
    public final d f9815a;

    /* renamed from: b  reason: collision with root package name */
    public final g f9816b;

    /* renamed from: c  reason: collision with root package name */
    public InputStream f9817c;

    /* renamed from: d  reason: collision with root package name */
    public E f9818d;

    public i(d dVar, g gVar) {
        this.f9815a = dVar;
        this.f9816b = gVar;
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void a(int i4) {
        synchronized (this.f9815a) {
            d dVar = this.f9815a;
            dVar.f9788p += i4;
            dVar.d();
        }
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void b(int i4) {
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void c(InterfaceC1055v interfaceC1055v) {
        synchronized (this.f9815a) {
            try {
                d dVar = this.f9815a;
                g gVar = this.f9816b;
                dVar.f9776d = gVar;
                dVar.f9777e = gVar.f9795c;
                dVar.f9778f = interfaceC1055v;
                if (!(dVar.f9786n == Inbound$State.CLOSED)) {
                    dVar.m(Inbound$State.INITIALIZED);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (!this.f9816b.f9793a.f9767m.f2333c) {
            interfaceC1055v.a();
        }
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void d(E e4) {
        this.f9818d = e4;
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final boolean e() {
        return !this.f9816b.f9793a.f9767m.f2333c;
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void f(H h4) {
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void flush() {
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void g(L0 l02) {
        synchronized (this.f9815a) {
            d dVar = this.f9815a;
            dVar.getClass();
            dVar.b(L0.f2127f, l02, false);
        }
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void h(int i4) {
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void i(InputStream inputStream) {
        if (this.f9817c == null) {
            this.f9817c = inputStream;
            return;
        }
        synchronized (this.f9815a) {
            d dVar = this.f9815a;
            L0 f4 = L0.f2134m.f("too many messages");
            dVar.b(f4, f4, false);
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
            synchronized (this.f9816b) {
                E e4 = this.f9818d;
                if (e4 != null) {
                    g gVar = this.f9816b;
                    gVar.getClass();
                    C0120i0 c0120i0 = C1044r0.f10235b;
                    r0 r0Var = gVar.f9805m;
                    r0Var.a(c0120i0);
                    r0Var.d(c0120i0, Long.valueOf(Math.max(0L, e4.c(TimeUnit.NANOSECONDS))));
                }
                g gVar2 = this.f9816b;
                gVar2.f9797e = true;
                InputStream inputStream = this.f9817c;
                if (inputStream != null) {
                    gVar2.a(inputStream);
                }
                gVar2.f9800h = true;
                gVar2.d();
            }
        } catch (StatusException e5) {
            synchronized (this.f9815a) {
                d dVar = this.f9815a;
                L0 a4 = e5.a();
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
        return "SingleMessageClientStream[" + this.f9815a + "/" + this.f9816b + "]";
    }
}
