package kotlinx.coroutines.internal;

import kotlinx.coroutines.n0;
/* loaded from: classes.dex */
public abstract class B extends AbstractC1236c implements n0 {

    /* renamed from: f  reason: collision with root package name */
    public final long f11440f;

    /* renamed from: g  reason: collision with root package name */
    public final t3.d f11441g;

    public B(long j4, B b4, int i4) {
        super(b4);
        this.f11440f = j4;
        this.f11441g = t3.c.b(i4 << 16);
    }

    @Override // kotlinx.coroutines.internal.AbstractC1236c
    public final boolean c() {
        if (this.f11441g.f12360b == f()) {
            return !(b() == null);
        }
        return false;
    }

    public final boolean e() {
        t3.d dVar = this.f11441g;
        dVar.getClass();
        int addAndGet = t3.d.f12358c.addAndGet(dVar, -65536);
        t3.g gVar = t3.g.f12367a;
        t3.h hVar = dVar.f12359a;
        if (hVar != gVar) {
            hVar.getClass();
            t3.h.a("addAndGet(-65536):" + addAndGet);
        }
        if (addAndGet == f()) {
            return !(b() == null);
        }
        return false;
    }

    public abstract int f();

    public abstract void g(int i4, kotlin.coroutines.i iVar);

    public final void h() {
        if (this.f11441g.c() == kotlinx.coroutines.channels.d.f11354b) {
            d();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x001f  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x001d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean i() {
        /*
            r5 = this;
            t3.d r0 = r5.f11441g
        L2:
            int r1 = r0.f12360b
            int r2 = r5.f()
            r3 = 1
            r4 = 0
            if (r1 != r2) goto L1a
            kotlinx.coroutines.internal.c r2 = r5.b()
            if (r2 != 0) goto L14
            r2 = r3
            goto L15
        L14:
            r2 = r4
        L15:
            if (r2 == 0) goto L18
            goto L1a
        L18:
            r2 = r4
            goto L1b
        L1a:
            r2 = r3
        L1b:
            if (r2 != 0) goto L1f
            r3 = r4
            goto L28
        L1f:
            r2 = 65536(0x10000, float:9.18355E-41)
            int r2 = r2 + r1
            boolean r1 = r0.a(r1, r2)
            if (r1 == 0) goto L2
        L28:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.B.i():boolean");
    }
}
