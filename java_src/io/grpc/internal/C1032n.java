package io.grpc.internal;
/* renamed from: io.grpc.internal.n  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1032n extends C {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f10179e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1032n(C1041q c1041q) {
        super(c1041q.f10212c.f10362f);
        this.f10179e = c1041q;
    }

    @Override // io.grpc.internal.C
    public final void a() {
        c3.d dVar = ((C1041q) this.f10179e).f10212c.f10358b;
        c3.c.a();
        c3.c.f4274a.getClass();
        try {
            Object obj = this.f10179e;
            if (((C1041q) obj).f10211b == null) {
                ((C1041q) obj).f10210a.d();
            }
        } finally {
            c3.d dVar2 = ((C1041q) this.f10179e).f10212c.f10358b;
            c3.c.b();
        }
    }
}
