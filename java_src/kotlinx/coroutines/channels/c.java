package kotlinx.coroutines.channels;

import java.util.concurrent.CancellationException;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlinx.coroutines.C1232h;
import kotlinx.coroutines.InterfaceC1231g;
import kotlinx.coroutines.internal.B;
import kotlinx.coroutines.internal.C;
import kotlinx.coroutines.internal.C1235b;
import kotlinx.coroutines.internal.E;
import kotlinx.coroutines.internal.UndeliveredElementException;
import kotlinx.coroutines.internal.w;
import kotlinx.coroutines.w0;
/* loaded from: classes.dex */
public class c implements f {

    /* renamed from: d  reason: collision with root package name */
    public final int f11342d;

    /* renamed from: e  reason: collision with root package name */
    public final m3.l f11343e;

    /* renamed from: f  reason: collision with root package name */
    public final t3.e f11344f;

    /* renamed from: g  reason: collision with root package name */
    public final t3.e f11345g;

    /* renamed from: h  reason: collision with root package name */
    public final t3.e f11346h;

    /* renamed from: i  reason: collision with root package name */
    public final t3.e f11347i;

    /* renamed from: j  reason: collision with root package name */
    public final t3.f f11348j;

    /* renamed from: k  reason: collision with root package name */
    public final t3.f f11349k;

    /* renamed from: l  reason: collision with root package name */
    public final t3.f f11350l;

    /* renamed from: m  reason: collision with root package name */
    public final t3.f f11351m;

    /* renamed from: n  reason: collision with root package name */
    public final t3.f f11352n;

    public c(int i4, m3.l lVar) {
        this.f11342d = i4;
        this.f11343e = lVar;
        if (!(i4 >= 0)) {
            throw new IllegalArgumentException(("Invalid channel capacity: " + i4 + ", should be >=0").toString());
        }
        this.f11344f = t3.c.c(0L);
        this.f11345g = t3.c.c(0L);
        k kVar = d.f11353a;
        t3.e c4 = t3.c.c(i4 != 0 ? i4 != Integer.MAX_VALUE ? i4 : Long.MAX_VALUE : 0L);
        this.f11346h = c4;
        this.f11347i = t3.c.c(c4.f12363b);
        k kVar2 = new k(0L, null, this, 3);
        this.f11348j = t3.c.d(kVar2);
        this.f11349k = t3.c.d(kVar2);
        if (u()) {
            kVar2 = d.f11353a;
            kotlin.jvm.internal.h.c(kVar2, "null cannot be cast to non-null type kotlinx.coroutines.channels.ChannelSegment<E of kotlinx.coroutines.channels.BufferedChannel>");
        }
        this.f11350l = t3.c.d(kVar2);
        if (lVar != null) {
            new m3.q() { // from class: kotlinx.coroutines.channels.BufferedChannel$onUndeliveredElementReceiveCancellationConstructor$1$1
                {
                    super(3);
                }

                @Override // m3.q
                public final Object invoke(Object obj, Object obj2, final Object obj3) {
                    final w3.b select = (w3.b) obj;
                    kotlin.jvm.internal.h.e(select, "select");
                    final c cVar = c.this;
                    return new m3.l() { // from class: kotlinx.coroutines.channels.BufferedChannel$onUndeliveredElementReceiveCancellationConstructor$1$1.1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // m3.l
                        public final Object invoke(Object obj4) {
                            Throwable it = (Throwable) obj4;
                            kotlin.jvm.internal.h.e(it, "it");
                            Object obj5 = obj3;
                            if (obj5 != d.f11364l) {
                                w.b(cVar.f11343e, obj5, select.getContext());
                            }
                            return e3.f.f9037a;
                        }
                    };
                }
            };
        }
        this.f11351m = t3.c.d(d.f11371s);
        this.f11352n = t3.c.d(null);
    }

    public static final k a(c cVar, long j4, k kVar) {
        Object a4;
        long j5;
        long j6;
        boolean z4;
        t3.f fVar = cVar.f11348j;
        k kVar2 = d.f11353a;
        BufferedChannelKt$createSegmentFunction$1 bufferedChannelKt$createSegmentFunction$1 = BufferedChannelKt$createSegmentFunction$1.f11338d;
        do {
            a4 = C1235b.a(kVar, j4, bufferedChannelKt$createSegmentFunction$1);
            if (C.b(a4)) {
                break;
            }
            B a5 = C.a(a4);
            while (true) {
                B b4 = (B) fVar.f12366b;
                if (b4.f11440f >= a5.f11440f) {
                    break;
                } else if (!a5.i()) {
                    z4 = false;
                    continue;
                    break;
                } else if (fVar.a(b4, a5)) {
                    if (b4.e()) {
                        b4.d();
                    }
                } else if (a5.e()) {
                    a5.d();
                }
            }
            z4 = true;
            continue;
        } while (!z4);
        if (C.b(a4)) {
            cVar.s();
            if (kVar.f11440f * d.f11354b < cVar.f11345g.f12363b) {
                kVar.a();
            }
        } else {
            k kVar3 = (k) C.a(a4);
            long j7 = kVar3.f11440f;
            if (j7 <= j4) {
                return kVar3;
            }
            long j8 = j7 * d.f11354b;
            t3.e eVar = cVar.f11344f;
            do {
                j5 = eVar.f12363b;
                j6 = 1152921504606846975L & j5;
                if (j6 >= j8) {
                    break;
                }
                k kVar4 = d.f11353a;
            } while (!cVar.f11344f.b(j5, (((int) (j5 >> 60)) << 60) + j6));
            if (kVar3.f11440f * d.f11354b < cVar.f11345g.f12363b) {
                kVar3.a();
            }
        }
        return null;
    }

    public static final int c(c cVar, k kVar, int i4, Object obj, long j4, Object obj2, boolean z4) {
        cVar.getClass();
        kVar.n(i4, obj);
        if (z4) {
            return cVar.B(kVar, i4, obj, j4, obj2, z4);
        }
        Object l4 = kVar.l(i4);
        if (l4 == null) {
            if (cVar.d(j4)) {
                if (kVar.j(i4, null, d.f11356d)) {
                    return 1;
                }
            } else if (obj2 == null) {
                return 3;
            } else {
                if (kVar.j(i4, null, obj2)) {
                    return 2;
                }
            }
        } else if (l4 instanceof w0) {
            kVar.n(i4, null);
            if (cVar.y(l4, obj)) {
                kVar.o(i4, d.f11361i);
                return 0;
            }
            E e4 = d.f11363k;
            if (kVar.f11379i.f12354a[(i4 * 2) + 1].b(e4) != e4) {
                kVar.m(i4, true);
            }
            return 5;
        }
        return cVar.B(kVar, i4, obj, j4, obj2, z4);
    }

    public static boolean z(Object obj) {
        if (obj instanceof InterfaceC1231g) {
            kotlin.jvm.internal.h.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
            return d.a((InterfaceC1231g) obj, e3.f.f9037a, null);
        } else if (obj instanceof w3.b) {
            kotlin.jvm.internal.h.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation<*>");
            w3.a aVar = (w3.a) obj;
            e3.f fVar = e3.f.f9037a;
            throw null;
        } else if (obj instanceof b) {
            ((b) obj).getClass();
            d.a(null, Boolean.TRUE, null);
            throw null;
        } else {
            throw new IllegalStateException(("Unexpected waiter: " + obj).toString());
        }
    }

    public final Object A(k kVar, int i4, long j4, g gVar) {
        Object l4 = kVar.l(i4);
        if (l4 == null) {
            if (j4 >= (this.f11344f.f12363b & 1152921504606846975L)) {
                if (gVar == null) {
                    return d.f11366n;
                }
                if (kVar.j(i4, l4, gVar)) {
                    i();
                    return d.f11365m;
                }
            }
        } else if (l4 == d.f11356d && kVar.j(i4, l4, d.f11361i)) {
            i();
            Object k4 = kVar.k(i4);
            kVar.n(i4, null);
            return k4;
        }
        while (true) {
            Object l5 = kVar.l(i4);
            if (l5 == null || l5 == d.f11357e) {
                if (j4 < (this.f11344f.f12363b & 1152921504606846975L)) {
                    if (kVar.j(i4, l5, d.f11360h)) {
                        i();
                        return d.f11367o;
                    }
                } else if (gVar == null) {
                    return d.f11366n;
                } else {
                    if (kVar.j(i4, l5, gVar)) {
                        i();
                        return d.f11365m;
                    }
                }
            } else if (l5 != d.f11356d) {
                E e4 = d.f11362j;
                if (l5 != e4 && l5 != d.f11360h) {
                    if (l5 == d.f11364l) {
                        i();
                        return d.f11367o;
                    } else if (l5 != d.f11359g && kVar.j(i4, l5, d.f11358f)) {
                        boolean z4 = l5 instanceof t;
                        if (z4) {
                            l5 = ((t) l5).f11382a;
                        }
                        if (z(l5)) {
                            kVar.o(i4, d.f11361i);
                            i();
                            Object k5 = kVar.k(i4);
                            kVar.n(i4, null);
                            return k5;
                        }
                        kVar.o(i4, e4);
                        kVar.m(i4, false);
                        if (z4) {
                            i();
                        }
                        return d.f11367o;
                    }
                }
                return d.f11367o;
            } else if (kVar.j(i4, l5, d.f11361i)) {
                i();
                Object k6 = kVar.k(i4);
                kVar.n(i4, null);
                return k6;
            }
        }
    }

    public final int B(k kVar, int i4, Object obj, long j4, Object obj2, boolean z4) {
        while (true) {
            Object l4 = kVar.l(i4);
            if (l4 == null) {
                if (!d(j4) || z4) {
                    if (z4) {
                        if (kVar.j(i4, null, d.f11362j)) {
                            kVar.m(i4, false);
                            return 4;
                        }
                    } else if (obj2 == null) {
                        return 3;
                    } else {
                        if (kVar.j(i4, null, obj2)) {
                            return 2;
                        }
                    }
                } else if (kVar.j(i4, null, d.f11356d)) {
                    return 1;
                }
            } else if (l4 != d.f11357e) {
                E e4 = d.f11363k;
                if (l4 == e4) {
                    kVar.n(i4, null);
                    return 5;
                } else if (l4 == d.f11360h) {
                    kVar.n(i4, null);
                    return 5;
                } else if (l4 == d.f11364l) {
                    kVar.n(i4, null);
                    s();
                    return 4;
                } else {
                    kVar.n(i4, null);
                    if (l4 instanceof t) {
                        l4 = ((t) l4).f11382a;
                    }
                    if (y(l4, obj)) {
                        kVar.o(i4, d.f11361i);
                        return 0;
                    }
                    if (kVar.f11379i.f12354a[(i4 * 2) + 1].b(e4) != e4) {
                        kVar.m(i4, true);
                    }
                    return 5;
                }
            } else if (kVar.j(i4, l4, d.f11356d)) {
                return 1;
            }
        }
    }

    @Override // kotlinx.coroutines.channels.r
    public final void b(CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new CancellationException("Channel was cancelled");
        }
        e(cancellationException, true);
    }

    public final boolean d(long j4) {
        return j4 < this.f11346h.f12363b || j4 < this.f11345g.f12363b + ((long) this.f11342d);
    }

    public final boolean e(Throwable th, boolean z4) {
        long j4;
        long j5;
        int i4;
        Object obj;
        long j6;
        long j7;
        if (z4) {
            t3.e eVar = this.f11344f;
            do {
                j7 = eVar.f12363b;
                if (((int) (j7 >> 60)) != 0) {
                    break;
                }
                k kVar = d.f11353a;
            } while (!eVar.b(j7, (1 << 60) + (j7 & 1152921504606846975L)));
        }
        boolean a4 = this.f11351m.a(d.f11371s, th);
        if (z4) {
            t3.e eVar2 = this.f11344f;
            do {
                j6 = eVar2.f12363b;
                k kVar2 = d.f11353a;
            } while (!eVar2.b(j6, (3 << 60) + (j6 & 1152921504606846975L)));
        } else {
            t3.e eVar3 = this.f11344f;
            do {
                j4 = eVar3.f12363b;
                int i5 = (int) (j4 >> 60);
                if (i5 == 0) {
                    j5 = j4 & 1152921504606846975L;
                    k kVar3 = d.f11353a;
                    i4 = 2;
                } else if (i5 != 1) {
                    break;
                } else {
                    j5 = j4 & 1152921504606846975L;
                    k kVar4 = d.f11353a;
                    i4 = 3;
                }
            } while (!eVar3.b(j4, (i4 << 60) + j5));
        }
        s();
        if (a4) {
            t3.f fVar = this.f11352n;
            do {
                obj = fVar.f12366b;
            } while (!fVar.a(obj, obj == null ? d.f11369q : d.f11370r));
            if (obj != null) {
                kotlin.jvm.internal.l.a(1, obj);
                ((m3.l) obj).invoke(k());
            }
        }
        return a4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x0087, code lost:
        r1 = (kotlinx.coroutines.channels.k) ((kotlinx.coroutines.internal.AbstractC1236c) r1.f11462e.f12366b);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kotlinx.coroutines.channels.k f(long r12) {
        /*
            Method dump skipped, instructions count: 289
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.c.f(long):kotlinx.coroutines.channels.k");
    }

    @Override // kotlinx.coroutines.channels.s
    public final boolean g(Throwable th) {
        return e(th, false);
    }

    public final void h(long j4) {
        UndeliveredElementException c4;
        k kVar = (k) this.f11349k.f12366b;
        while (true) {
            long j5 = this.f11345g.f12363b;
            if (j4 < Math.max(this.f11342d + j5, this.f11346h.f12363b)) {
                return;
            }
            if (this.f11345g.b(j5, 1 + j5)) {
                long j6 = d.f11354b;
                long j7 = j5 / j6;
                int i4 = (int) (j5 % j6);
                if (kVar.f11440f != j7) {
                    k j8 = j(j7, kVar);
                    if (j8 == null) {
                        continue;
                    } else {
                        kVar = j8;
                    }
                }
                Object A3 = A(kVar, i4, j5, null);
                if (A3 != d.f11367o) {
                    kVar.a();
                    m3.l lVar = this.f11343e;
                    if (lVar != null && (c4 = w.c(lVar, A3, null)) != null) {
                        throw c4;
                    }
                } else if (j5 < n()) {
                    kVar.a();
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x00ca A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0183 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:112:0x000f A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void i() {
        /*
            Method dump skipped, instructions count: 400
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.c.i():void");
    }

    @Override // kotlinx.coroutines.channels.r
    public final g iterator() {
        return new a(this);
    }

    public final k j(long j4, k kVar) {
        Object a4;
        long j5;
        boolean z4;
        t3.f fVar = this.f11349k;
        k kVar2 = d.f11353a;
        BufferedChannelKt$createSegmentFunction$1 bufferedChannelKt$createSegmentFunction$1 = BufferedChannelKt$createSegmentFunction$1.f11338d;
        do {
            a4 = C1235b.a(kVar, j4, bufferedChannelKt$createSegmentFunction$1);
            if (C.b(a4)) {
                break;
            }
            B a5 = C.a(a4);
            while (true) {
                B b4 = (B) fVar.f12366b;
                if (b4.f11440f >= a5.f11440f) {
                    break;
                } else if (!a5.i()) {
                    z4 = false;
                    continue;
                    break;
                } else if (fVar.a(b4, a5)) {
                    if (b4.e()) {
                        b4.d();
                    }
                } else if (a5.e()) {
                    a5.d();
                }
            }
            z4 = true;
            continue;
        } while (!z4);
        if (C.b(a4)) {
            s();
            if (kVar.f11440f * d.f11354b < n()) {
                kVar.a();
            }
        } else {
            k kVar3 = (k) C.a(a4);
            if (!u() && j4 <= this.f11346h.f12363b / d.f11354b) {
                t3.f fVar2 = this.f11350l;
                while (true) {
                    B b5 = (B) fVar2.f12366b;
                    if (b5.f11440f >= kVar3.f11440f || !kVar3.i()) {
                        break;
                    } else if (fVar2.a(b5, kVar3)) {
                        if (b5.e()) {
                            b5.d();
                        }
                    } else if (kVar3.e()) {
                        kVar3.d();
                    }
                }
            }
            long j6 = kVar3.f11440f;
            if (j6 <= j4) {
                return kVar3;
            }
            long j7 = j6 * d.f11354b;
            t3.e eVar = this.f11345g;
            do {
                j5 = eVar.f12363b;
                if (j5 >= j7) {
                    break;
                }
            } while (!this.f11345g.b(j5, j7));
            if (kVar3.f11440f * d.f11354b < n()) {
                kVar3.a();
            }
        }
        return null;
    }

    public final Throwable k() {
        return (Throwable) this.f11351m.f12366b;
    }

    public final Throwable l() {
        Throwable k4 = k();
        return k4 == null ? new ClosedSendChannelException("Channel was closed") : k4;
    }

    @Override // kotlinx.coroutines.channels.s
    public final void m(m3.l lVar) {
        E e4;
        if (this.f11352n.a(null, lVar)) {
            return;
        }
        t3.f fVar = this.f11352n;
        do {
            Object obj = fVar.f12366b;
            e4 = d.f11369q;
            if (obj != e4) {
                if (obj == d.f11370r) {
                    throw new IllegalStateException("Another handler was already registered and successfully invoked".toString());
                }
                throw new IllegalStateException(("Another handler is already registered: " + obj).toString());
            }
        } while (!this.f11352n.a(e4, d.f11370r));
        ((ProduceKt$awaitClose$4$1) lVar).invoke(k());
    }

    public final long n() {
        return this.f11344f.f12363b & 1152921504606846975L;
    }

    public final void o(long j4) {
        boolean z4;
        if ((this.f11347i.a(j4) & 4611686018427387904L) != 0) {
            do {
                if ((this.f11347i.f12363b & 4611686018427387904L) != 0) {
                    z4 = true;
                    continue;
                } else {
                    z4 = false;
                    continue;
                }
            } while (z4);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x00d2, code lost:
        return e3.f.f9037a;
     */
    @Override // kotlinx.coroutines.channels.s
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object p(java.lang.Object r22) {
        /*
            Method dump skipped, instructions count: 211
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.c.p(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:104:0x01ae, code lost:
        return e3.f.f9037a;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:133:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x018e  */
    @Override // kotlinx.coroutines.channels.s
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object q(java.lang.Object r24, kotlin.coroutines.c r25) {
        /*
            Method dump skipped, instructions count: 431
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.c.q(java.lang.Object, kotlin.coroutines.c):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:115:0x0179, code lost:
        r12 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00b8, code lost:
        r12 = (kotlinx.coroutines.channels.k) ((kotlinx.coroutines.internal.AbstractC1236c) r12.f11462e.f12366b);
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x012e, code lost:
        r11 = false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean r(long r12, boolean r14) {
        /*
            Method dump skipped, instructions count: 396
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.c.r(long, boolean):boolean");
    }

    @Override // kotlinx.coroutines.channels.s
    public final boolean s() {
        return r(this.f11344f.f12363b, false);
    }

    public boolean t() {
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:95:0x01bb, code lost:
        r4 = (kotlinx.coroutines.channels.k) r4.b();
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x01f8  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x01bb A[EDGE_INSN: B:119:0x01bb->B:95:0x01bb ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01ca  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String toString() {
        /*
            Method dump skipped, instructions count: 518
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.c.toString():java.lang.String");
    }

    public final boolean u() {
        long j4 = this.f11346h.f12363b;
        return j4 == 0 || j4 == Long.MAX_VALUE;
    }

    public final void v(long j4, k kVar) {
        boolean z4;
        k kVar2;
        k kVar3;
        while (kVar.f11440f < j4 && (kVar3 = (k) kVar.b()) != null) {
            kVar = kVar3;
        }
        while (true) {
            if (!kVar.c() || (kVar2 = (k) kVar.b()) == null) {
                t3.f fVar = this.f11350l;
                while (true) {
                    B b4 = (B) fVar.f12366b;
                    if (b4.f11440f >= kVar.f11440f) {
                        break;
                    } else if (!kVar.i()) {
                        z4 = false;
                        break;
                    } else if (fVar.a(b4, kVar)) {
                        if (b4.e()) {
                            b4.d();
                        }
                    } else if (kVar.e()) {
                        kVar.d();
                    }
                }
                z4 = true;
                if (z4) {
                    return;
                }
            } else {
                kVar = kVar2;
            }
        }
    }

    public final Object w(Object obj, kotlin.coroutines.c cVar) {
        UndeliveredElementException c4;
        C1232h c1232h = new C1232h(1, kotlin.coroutines.intrinsics.a.b(cVar));
        c1232h.p();
        m3.l lVar = this.f11343e;
        if (lVar == null || (c4 = w.c(lVar, obj, null)) == null) {
            c1232h.resumeWith(e3.d.a(l()));
        } else {
            e3.a.a(c4, l());
            c1232h.resumeWith(e3.d.a(c4));
        }
        Object o4 = c1232h.o();
        return o4 == CoroutineSingletons.COROUTINE_SUSPENDED ? o4 : e3.f.f9037a;
    }

    public final void x(w0 w0Var, boolean z4) {
        Throwable l4;
        if (w0Var instanceof b) {
            ((b) w0Var).getClass();
            throw null;
        } else if (w0Var instanceof InterfaceC1231g) {
            kotlin.coroutines.c cVar = (kotlin.coroutines.c) w0Var;
            if (z4) {
                l4 = k();
                if (l4 == null) {
                    l4 = new ClosedReceiveChannelException("Channel was closed");
                }
            } else {
                l4 = l();
            }
            cVar.resumeWith(e3.d.a(l4));
        } else if (w0Var instanceof q) {
            ((q) w0Var).getClass();
            k();
            throw null;
        } else if (!(w0Var instanceof a)) {
            if (w0Var instanceof w3.b) {
                k kVar = d.f11353a;
                ((w3.b) w0Var).a(this);
                return;
            }
            throw new IllegalStateException(("Unexpected waiter: " + w0Var).toString());
        } else {
            a aVar = (a) w0Var;
            C1232h c1232h = aVar.f11340e;
            kotlin.jvm.internal.h.b(c1232h);
            aVar.f11340e = null;
            aVar.f11339d = d.f11364l;
            Throwable k4 = aVar.f11341f.k();
            if (k4 == null) {
                c1232h.resumeWith(Boolean.FALSE);
            } else {
                c1232h.resumeWith(e3.d.a(k4));
            }
        }
    }

    public final boolean y(Object obj, Object obj2) {
        if (obj instanceof w3.b) {
            return ((w3.b) obj).a(this);
        }
        boolean z4 = obj instanceof q;
        m3.l lVar = this.f11343e;
        if (z4) {
            kotlin.jvm.internal.h.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.channels.ReceiveCatching<E of kotlinx.coroutines.channels.BufferedChannel>");
            q qVar = (q) obj;
            j jVar = new j(obj2);
            if (lVar != null) {
                throw null;
            }
            d.a(null, jVar, null);
            throw null;
        } else if (!(obj instanceof a)) {
            if (obj instanceof InterfaceC1231g) {
                kotlin.jvm.internal.h.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<E of kotlinx.coroutines.channels.BufferedChannel>");
                InterfaceC1231g interfaceC1231g = (InterfaceC1231g) obj;
                return d.a(interfaceC1231g, obj2, lVar != null ? w.a(lVar, obj2, interfaceC1231g.getContext()) : null);
            }
            throw new IllegalStateException(("Unexpected receiver type: " + obj).toString());
        } else {
            kotlin.jvm.internal.h.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.channels.BufferedChannel.BufferedChannelIterator<E of kotlinx.coroutines.channels.BufferedChannel>");
            a aVar = (a) obj;
            C1232h c1232h = aVar.f11340e;
            kotlin.jvm.internal.h.b(c1232h);
            aVar.f11340e = null;
            aVar.f11339d = obj2;
            Boolean bool = Boolean.TRUE;
            m3.l lVar2 = aVar.f11341f.f11343e;
            return d.a(c1232h, bool, lVar2 != null ? w.a(lVar2, obj2, c1232h.f11425h) : null);
        }
    }
}
