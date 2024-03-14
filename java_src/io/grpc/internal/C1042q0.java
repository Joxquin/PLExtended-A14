package io.grpc.internal;

import X2.AbstractC0133p;
import X2.C0107c;
import X2.C0115g;
import X2.C0135q;
/* renamed from: io.grpc.internal.q0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1042q0 extends X2.r {

    /* renamed from: a  reason: collision with root package name */
    public final C1030m0 f10213a;

    /* renamed from: b  reason: collision with root package name */
    public volatile X2.r f10214b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ AbstractC0133p f10215c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C0135q f10216d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ X2.r0 f10217e;

    public C1042q0(AbstractC0133p abstractC0133p, C0135q c0135q, X2.r0 r0Var) {
        this.f10215c = abstractC0133p;
        this.f10216d = c0135q;
        this.f10217e = r0Var;
        C1030m0 c1030m0 = new C1030m0();
        this.f10213a = c1030m0;
        this.f10214b = c1030m0;
    }

    @Override // X2.r
    public final void a() {
        this.f10214b.a();
    }

    @Override // X2.r
    public final void b(int i4) {
        this.f10214b.b(i4);
    }

    @Override // X2.r
    public final void c(int i4, long j4, long j5) {
        this.f10214b.c(i4, j4, j5);
    }

    @Override // X2.r
    public final void d(X2.r0 r0Var) {
        this.f10214b.d(r0Var);
    }

    @Override // X2.r
    public final void e(long j4) {
        this.f10214b.e(j4);
    }

    @Override // X2.r
    public final void f(long j4) {
        this.f10214b.f(j4);
    }

    @Override // X2.r
    public final void g() {
        this.f10214b.g();
    }

    @Override // X2.r
    public final void h(int i4) {
        this.f10214b.h(i4);
    }

    @Override // X2.r
    public final void i(int i4, long j4, long j5) {
        this.f10214b.i(i4, j4, j5);
    }

    @Override // X2.r
    public final void j(long j4) {
        this.f10214b.j(j4);
    }

    @Override // X2.r
    public final void k(long j4) {
        this.f10214b.k(j4);
    }

    @Override // X2.r
    public final void l(X2.L0 l02) {
        if (this.f10214b == this.f10213a) {
            synchronized (this) {
                if (this.f10214b == this.f10213a) {
                    this.f10214b = this.f10215c.a();
                }
            }
        }
        this.f10214b.l(l02);
    }

    @Override // X2.r
    public final void m(C0107c c0107c, X2.r0 r0Var) {
        C0135q c0135q = this.f10216d;
        c0135q.getClass();
        C0107c c0107c2 = C0107c.f2181b;
        C0115g c0115g = C0115g.f2190k;
        O2.m.h(c0135q.f2216c, "callOptions cannot be null");
        O2.m.h(c0135q.f2215b, "transportAttrs cannot be null");
        O2.m.h(c0107c, "transportAttrs cannot be null");
        if (this.f10214b == this.f10213a) {
            synchronized (this) {
                if (this.f10214b == this.f10213a) {
                    this.f10214b = this.f10215c.a();
                }
            }
        }
        this.f10214b.m(c0107c, r0Var);
    }

    /* renamed from: n */
    public final String toString() {
        O2.i b4 = O2.j.b(this);
        b4.a(this.f10214b, "delegate");
        return b4.toString();
    }
}
