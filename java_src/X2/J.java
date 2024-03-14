package X2;

import io.grpc.internal.C0995d1;
/* loaded from: classes.dex */
public abstract class J extends AbstractC0123k {
    @Override // X2.AbstractC0123k
    public final void b() {
        ((C0995d1) this).f10098g.b();
    }

    @Override // X2.AbstractC0123k
    public final void c(int i4) {
        ((C0995d1) this).f10098g.c(i4);
    }

    @Override // X2.AbstractC0123k
    public final void d(Object obj) {
        ((C0995d1) this).f10098g.d(obj);
    }

    /* renamed from: f */
    public final String toString() {
        O2.i b4 = O2.j.b(this);
        b4.a(((C0995d1) this).f10098g, "delegate");
        return b4.toString();
    }
}
