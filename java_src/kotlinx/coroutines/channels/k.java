package kotlinx.coroutines.channels;

import kotlinx.coroutines.internal.B;
import kotlinx.coroutines.internal.E;
/* loaded from: classes.dex */
public final class k extends B {

    /* renamed from: h  reason: collision with root package name */
    public final c f11378h;

    /* renamed from: i  reason: collision with root package name */
    public final t3.a f11379i;

    public k(long j4, k kVar, c cVar, int i4) {
        super(j4, kVar, i4);
        this.f11378h = cVar;
        this.f11379i = new t3.a(d.f11354b * 2);
    }

    @Override // kotlinx.coroutines.internal.B
    public final int f() {
        return d.f11354b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x005c, code lost:
        n(r7, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x005f, code lost:
        if (r1 == false) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0061, code lost:
        kotlin.jvm.internal.h.b(r4);
        r6 = r4.f11343e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0066, code lost:
        if (r6 == null) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0068, code lost:
        kotlinx.coroutines.internal.w.b(r6, r0, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x006b, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:?, code lost:
        return;
     */
    @Override // kotlinx.coroutines.internal.B
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void g(int r7, kotlin.coroutines.i r8) {
        /*
            r6 = this;
            java.lang.String r0 = "context"
            kotlin.jvm.internal.h.e(r8, r0)
            int r0 = kotlinx.coroutines.channels.d.f11354b
            if (r7 < r0) goto Lb
            r1 = 1
            goto Lc
        Lb:
            r1 = 0
        Lc:
            if (r1 == 0) goto Lf
            int r7 = r7 - r0
        Lf:
            java.lang.Object r0 = r6.k(r7)
        L13:
            java.lang.Object r2 = r6.l(r7)
            boolean r3 = r2 instanceof kotlinx.coroutines.w0
            kotlinx.coroutines.channels.c r4 = r6.f11378h
            r5 = 0
            if (r3 != 0) goto L6c
            boolean r3 = r2 instanceof kotlinx.coroutines.channels.t
            if (r3 == 0) goto L23
            goto L6c
        L23:
            kotlinx.coroutines.internal.E r3 = kotlinx.coroutines.channels.d.f11362j
            if (r2 == r3) goto L5c
            kotlinx.coroutines.internal.E r3 = kotlinx.coroutines.channels.d.f11363k
            if (r2 != r3) goto L2c
            goto L5c
        L2c:
            kotlinx.coroutines.internal.E r3 = kotlinx.coroutines.channels.d.f11359g
            if (r2 == r3) goto L13
            kotlinx.coroutines.internal.E r3 = kotlinx.coroutines.channels.d.f11358f
            if (r2 != r3) goto L35
            goto L13
        L35:
            kotlinx.coroutines.internal.E r6 = kotlinx.coroutines.channels.d.f11361i
            if (r2 == r6) goto L5b
            kotlinx.coroutines.internal.E r6 = kotlinx.coroutines.channels.d.f11356d
            if (r2 != r6) goto L3e
            goto L5b
        L3e:
            kotlinx.coroutines.internal.E r6 = kotlinx.coroutines.channels.d.f11364l
            if (r2 != r6) goto L43
            return
        L43:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            java.lang.String r8 = "unexpected state: "
            r7.<init>(r8)
            r7.append(r2)
            java.lang.String r7 = r7.toString()
            java.lang.String r7 = r7.toString()
            r6.<init>(r7)
            throw r6
        L5b:
            return
        L5c:
            r6.n(r7, r5)
            if (r1 == 0) goto L6b
            kotlin.jvm.internal.h.b(r4)
            m3.l r6 = r4.f11343e
            if (r6 == 0) goto L6b
            kotlinx.coroutines.internal.w.b(r6, r0, r8)
        L6b:
            return
        L6c:
            if (r1 == 0) goto L71
            kotlinx.coroutines.internal.E r3 = kotlinx.coroutines.channels.d.f11362j
            goto L73
        L71:
            kotlinx.coroutines.internal.E r3 = kotlinx.coroutines.channels.d.f11363k
        L73:
            boolean r2 = r6.j(r7, r2, r3)
            if (r2 == 0) goto L13
            r6.n(r7, r5)
            r2 = r1 ^ 1
            r6.m(r7, r2)
            if (r1 == 0) goto L8d
            kotlin.jvm.internal.h.b(r4)
            m3.l r6 = r4.f11343e
            if (r6 == 0) goto L8d
            kotlinx.coroutines.internal.w.b(r6, r0, r8)
        L8d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.k.g(int, kotlin.coroutines.i):void");
    }

    public final boolean j(int i4, Object obj, Object obj2) {
        return this.f11379i.f12354a[(i4 * 2) + 1].a(obj, obj2);
    }

    public final Object k(int i4) {
        return this.f11379i.f12354a[i4 * 2].f12366b;
    }

    public final Object l(int i4) {
        return this.f11379i.f12354a[(i4 * 2) + 1].f12366b;
    }

    public final void m(int i4, boolean z4) {
        long j4;
        long j5;
        if (z4) {
            c cVar = this.f11378h;
            kotlin.jvm.internal.h.b(cVar);
            long j6 = (this.f11440f * d.f11354b) + i4;
            if (!cVar.u()) {
                do {
                } while (cVar.f11346h.f12363b <= j6);
                int i5 = d.f11355c;
                int i6 = 0;
                while (true) {
                    if (i6 < i5) {
                        long j7 = cVar.f11346h.f12363b;
                        if (j7 == (4611686018427387903L & cVar.f11347i.f12363b) && j7 == cVar.f11346h.f12363b) {
                            break;
                        }
                        i6++;
                    } else {
                        t3.e eVar = cVar.f11347i;
                        do {
                            j4 = eVar.f12363b;
                        } while (!eVar.b(j4, (j4 & 4611686018427387903L) + 4611686018427387904L));
                        while (true) {
                            long j8 = cVar.f11346h.f12363b;
                            long j9 = cVar.f11347i.f12363b;
                            long j10 = j9 & 4611686018427387903L;
                            boolean z5 = (j9 & 4611686018427387904L) != 0;
                            if (j8 == j10 && j8 == cVar.f11346h.f12363b) {
                                break;
                            } else if (!z5) {
                                cVar.f11347i.b(j9, j10 + 4611686018427387904L);
                            }
                        }
                        t3.e eVar2 = cVar.f11347i;
                        do {
                            j5 = eVar2.f12363b;
                        } while (!eVar2.b(j5, 0 + (j5 & 4611686018427387903L)));
                    }
                }
            }
        }
        h();
    }

    public final void n(int i4, Object obj) {
        this.f11379i.f12354a[i4 * 2].c(obj);
    }

    public final void o(int i4, E e4) {
        this.f11379i.f12354a[(i4 * 2) + 1].d(e4);
    }
}
