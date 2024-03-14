package io.grpc.internal;

import X2.AbstractC0121j;
import io.grpc.MethodDescriptor$MethodType;
import io.grpc.Status$Code;
/* renamed from: io.grpc.internal.q  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1041q implements InterfaceC1055v {

    /* renamed from: a  reason: collision with root package name */
    public final AbstractC0121j f10210a;

    /* renamed from: b  reason: collision with root package name */
    public X2.L0 f10211b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ C1049t f10212c;

    public C1041q(C1049t c1049t, AbstractC0121j abstractC0121j) {
        this.f10212c = c1049t;
        O2.m.h(abstractC0121j, "observer");
        this.f10210a = abstractC0121j;
    }

    @Override // io.grpc.internal.InterfaceC1055v
    public final void a() {
        C1049t c1049t = this.f10212c;
        MethodDescriptor$MethodType methodDescriptor$MethodType = c1049t.f10357a.f2230a;
        methodDescriptor$MethodType.getClass();
        if (methodDescriptor$MethodType == MethodDescriptor$MethodType.UNARY || methodDescriptor$MethodType == MethodDescriptor$MethodType.SERVER_STREAMING) {
            return;
        }
        c3.c.a();
        c3.c.f4274a.getClass();
        try {
            c1049t.f10359c.execute(new C1032n(this));
        } finally {
            c3.c.b();
        }
    }

    @Override // io.grpc.internal.InterfaceC1055v
    public final void b(X2.r0 r0Var) {
        C1049t c1049t = this.f10212c;
        c3.d dVar = c1049t.f10358b;
        c3.c.a();
        c3.c.f4274a.getClass();
        try {
            c1049t.f10359c.execute(new C1035o(this, r0Var));
        } finally {
            c3.c.b();
        }
    }

    @Override // io.grpc.internal.InterfaceC1055v
    public final void c(io.grpc.binder.internal.e eVar) {
        C1049t c1049t = this.f10212c;
        c3.d dVar = c1049t.f10358b;
        c3.c.a();
        c3.c.f4274a.getClass();
        try {
            c1049t.f10359c.execute(new C1035o(this, eVar));
        } finally {
            c3.c.b();
        }
    }

    @Override // io.grpc.internal.InterfaceC1055v
    public final void d(X2.L0 l02, ClientStreamListener$RpcProgress clientStreamListener$RpcProgress, X2.r0 r0Var) {
        c3.d dVar = this.f10212c.f10358b;
        c3.c.a();
        try {
            e(l02, r0Var);
        } finally {
            c3.c.b();
        }
    }

    public final void e(X2.L0 l02, X2.r0 r0Var) {
        C1049t c1049t = this.f10212c;
        X2.E e4 = c1049t.f10365i.f2191a;
        c1049t.f10362f.getClass();
        if (e4 == null) {
            e4 = null;
        }
        if (l02.f2137a == Status$Code.CANCELLED && e4 != null && e4.a()) {
            C1053u0 c1053u0 = new C1053u0();
            c1049t.f10366j.k(c1053u0);
            X2.L0 l03 = X2.L0.f2129h;
            l02 = l03.a("ClientCall was cancelled at or after deadline. " + c1053u0);
            r0Var = new X2.r0();
        }
        c3.c.f4274a.getClass();
        c1049t.f10359c.execute(new C1038p(this, l02, r0Var));
    }
}
