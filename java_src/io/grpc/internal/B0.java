package io.grpc.internal;

import X2.InterfaceC0142x;
import java.io.InputStream;
/* loaded from: classes.dex */
public final class B0 implements InterfaceC1052u {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ InterfaceC1052u f9832a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C0 f9833b;

    public B0(C0 c02, InterfaceC1052u interfaceC1052u) {
        this.f9833b = c02;
        this.f9832a = interfaceC1052u;
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void a(int i4) {
        this.f9832a.a(i4);
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void b(int i4) {
        this.f9832a.b(i4);
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void c(InterfaceC1055v interfaceC1055v) {
        C1021k c1021k = this.f9833b.f9837e;
        c1021k.f10152b.a();
        c1021k.f10151a.a();
        this.f9832a.c(new A0(this, interfaceC1055v));
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void d(X2.E e4) {
        this.f9832a.d(e4);
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final boolean e() {
        return this.f9832a.e();
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void f(X2.H h4) {
        this.f9832a.f(h4);
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void flush() {
        this.f9832a.flush();
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void g(X2.L0 l02) {
        this.f9832a.g(l02);
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void h(int i4) {
        this.f9832a.h(i4);
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void i(InputStream inputStream) {
        this.f9832a.i(inputStream);
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void j(String str) {
        this.f9832a.j(str);
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void k(C1053u0 c1053u0) {
        this.f9832a.k(c1053u0);
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void l() {
        this.f9832a.l();
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void m() {
        this.f9832a.m();
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void n(boolean z4) {
        this.f9832a.n(z4);
    }

    @Override // io.grpc.internal.InterfaceC1052u
    public final void o(InterfaceC0142x interfaceC0142x) {
        this.f9832a.o(interfaceC0142x);
    }

    /* renamed from: p */
    public final String toString() {
        O2.i b4 = O2.j.b(this);
        b4.a(this.f9832a, "delegate");
        return b4.toString();
    }
}
