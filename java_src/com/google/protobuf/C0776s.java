package com.google.protobuf;

import java.nio.charset.Charset;
/* renamed from: com.google.protobuf.s  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0776s {

    /* renamed from: a  reason: collision with root package name */
    public final r f8691a;

    public C0776s(r rVar) {
        Charset charset = T.f8577a;
        if (rVar == null) {
            throw new NullPointerException("output");
        }
        this.f8691a = rVar;
        rVar.f8689a = this;
    }

    public final void a(int i4, ByteString byteString) {
        this.f8691a.q(i4, byteString);
    }

    @Deprecated
    public final void b(int i4) {
        this.f8691a.E(i4, 4);
    }

    public final void c(int i4, int i5) {
        this.f8691a.s(i4, i5);
    }

    public final void d(int i4, long j4) {
        this.f8691a.u(i4, j4);
    }

    public final void e(int i4, C0 c02, Object obj) {
        r rVar = this.f8691a;
        rVar.E(i4, 3);
        c02.b((InterfaceC0772p0) obj, rVar.f8689a);
        rVar.E(i4, 4);
    }

    public final void f(int i4, long j4) {
        this.f8691a.H(i4, j4);
    }

    public final void g(int i4, Object obj) {
        boolean z4 = obj instanceof ByteString;
        r rVar = this.f8691a;
        if (z4) {
            rVar.B(i4, (ByteString) obj);
        } else {
            rVar.A(i4, (InterfaceC0772p0) obj);
        }
    }

    @Deprecated
    public final void h(int i4) {
        this.f8691a.E(i4, 3);
    }
}
