package io.grpc.internal;

import X2.AbstractC0121j;
/* renamed from: io.grpc.internal.p  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1038p extends C {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ X2.L0 f10200e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ X2.r0 f10201f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ C1041q f10202g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1038p(C1041q c1041q, X2.L0 l02, X2.r0 r0Var) {
        super(c1041q.f10212c.f10362f);
        this.f10202g = c1041q;
        this.f10200e = l02;
        this.f10201f = r0Var;
    }

    @Override // io.grpc.internal.C
    public final void a() {
        c3.d dVar = this.f10202g.f10212c.f10358b;
        c3.c.a();
        c3.c.f4274a.getClass();
        try {
            b();
        } finally {
            c3.d dVar2 = this.f10202g.f10212c.f10358b;
            c3.c.b();
        }
    }

    public final void b() {
        X2.L0 l02 = this.f10200e;
        X2.r0 r0Var = this.f10201f;
        X2.L0 l03 = this.f10202g.f10211b;
        if (l03 != null) {
            r0Var = new X2.r0();
            l02 = l03;
        }
        this.f10202g.f10212c.f10367k = true;
        try {
            C1041q c1041q = this.f10202g;
            C1049t c1049t = c1041q.f10212c;
            AbstractC0121j abstractC0121j = c1041q.f10210a;
            c1049t.getClass();
            abstractC0121j.a(l02, r0Var);
            this.f10202g.f10212c.g();
            C1021k c1021k = this.f10202g.f10212c.f10361e;
            if (l02.d()) {
                c1021k.f10153c.a();
            } else {
                c1021k.f10154d.a();
            }
        } catch (Throwable th) {
            this.f10202g.f10212c.g();
            C1021k c1021k2 = this.f10202g.f10212c.f10361e;
            if (l02.d()) {
                c1021k2.f10153c.a();
            } else {
                c1021k2.f10154d.a();
            }
            throw th;
        }
    }
}
