package kotlinx.coroutines;

import kotlin.Result;
import kotlinx.coroutines.internal.C1240g;
import kotlinx.coroutines.internal.C1241h;
/* renamed from: kotlinx.coroutines.h  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1232h extends H implements InterfaceC1231g, g3.b, w0 {

    /* renamed from: g  reason: collision with root package name */
    public final kotlin.coroutines.c f11424g;

    /* renamed from: h  reason: collision with root package name */
    public final kotlin.coroutines.i f11425h;

    /* renamed from: i  reason: collision with root package name */
    public final t3.d f11426i;

    /* renamed from: j  reason: collision with root package name */
    public final t3.f f11427j;

    /* renamed from: k  reason: collision with root package name */
    public final t3.f f11428k;

    public C1232h(int i4, kotlin.coroutines.c cVar) {
        super(i4);
        this.f11424g = cVar;
        this.f11425h = cVar.getContext();
        this.f11426i = t3.c.b(536870911);
        this.f11427j = t3.c.d(C1226b.f11332d);
        this.f11428k = t3.c.d(null);
    }

    public static void t(Object obj, Object obj2) {
        throw new IllegalStateException(("It's prohibited to register multiple handlers, tried to register " + obj + ", already has " + obj2).toString());
    }

    public static Object x(n0 n0Var, Object obj, int i4, m3.l lVar) {
        if (obj instanceof C1252q) {
            return obj;
        }
        boolean z4 = true;
        if (i4 != 1 && i4 != 2) {
            z4 = false;
        }
        if (z4) {
            if (lVar != null || (n0Var instanceof AbstractC1229e)) {
                return new C1251p(obj, n0Var instanceof AbstractC1229e ? (AbstractC1229e) n0Var : null, lVar, (Throwable) null, 16);
            }
            return obj;
        }
        return obj;
    }

    @Override // kotlinx.coroutines.H
    public final void a(Object obj, Throwable cause) {
        kotlin.jvm.internal.h.e(cause, "cause");
        t3.f fVar = this.f11427j;
        while (true) {
            Object obj2 = fVar.f12366b;
            if (obj2 instanceof n0) {
                throw new IllegalStateException("Not completed".toString());
            }
            if (obj2 instanceof C1252q) {
                return;
            }
            if (obj2 instanceof C1251p) {
                C1251p c1251p = (C1251p) obj2;
                if (!(!(c1251p.f11506e != null))) {
                    throw new IllegalStateException("Must be called at most once".toString());
                }
                if (this.f11427j.a(obj2, C1251p.a(c1251p, null, cause, 15))) {
                    AbstractC1229e abstractC1229e = c1251p.f11503b;
                    if (abstractC1229e != null) {
                        i(abstractC1229e, cause);
                    }
                    m3.l lVar = c1251p.f11504c;
                    if (lVar != null) {
                        j(lVar, cause);
                        return;
                    }
                    return;
                }
            } else if (this.f11427j.a(obj2, new C1251p(obj2, (AbstractC1229e) null, (m3.l) null, cause, 14))) {
                return;
            }
        }
    }

    @Override // kotlinx.coroutines.w0
    public final void b(kotlinx.coroutines.internal.B b4, int i4) {
        int i5;
        t3.d dVar = this.f11426i;
        do {
            i5 = dVar.f12360b;
            if (!((i5 & 536870911) == 536870911)) {
                throw new IllegalStateException("invokeOnCancellation should be called at most once".toString());
            }
        } while (!dVar.a(i5, ((i5 >> 29) << 29) + i4));
        r(b4);
    }

    @Override // kotlinx.coroutines.H
    public final kotlin.coroutines.c c() {
        return this.f11424g;
    }

    @Override // kotlinx.coroutines.H
    public final Throwable d(Object obj) {
        Throwable d4 = super.d(obj);
        if (d4 != null) {
            return d4;
        }
        return null;
    }

    @Override // kotlinx.coroutines.H
    public final Object e(Object obj) {
        return obj instanceof C1251p ? ((C1251p) obj).f11502a : obj;
    }

    @Override // kotlinx.coroutines.InterfaceC1231g
    public final kotlinx.coroutines.internal.E f(Object obj, m3.l lVar) {
        Object obj2;
        t3.f fVar = this.f11427j;
        do {
            obj2 = fVar.f12366b;
            if (!(obj2 instanceof n0)) {
                boolean z4 = obj2 instanceof C1251p;
                return null;
            }
        } while (!this.f11427j.a(obj2, x((n0) obj2, obj, this.f11306f, lVar)));
        if (!s()) {
            m();
        }
        return C1233i.f11431a;
    }

    @Override // g3.b
    public final g3.b getCallerFrame() {
        kotlin.coroutines.c cVar = this.f11424g;
        if (cVar instanceof g3.b) {
            return (g3.b) cVar;
        }
        return null;
    }

    @Override // kotlin.coroutines.c
    public final kotlin.coroutines.i getContext() {
        return this.f11425h;
    }

    @Override // kotlinx.coroutines.H
    public final Object h() {
        return this.f11427j.f12366b;
    }

    public final void i(AbstractC1229e handler, Throwable th) {
        kotlin.jvm.internal.h.e(handler, "handler");
        try {
            handler.c(th);
        } catch (Throwable th2) {
            kotlin.coroutines.i iVar = this.f11425h;
            A.a(iVar, new CompletionHandlerException("Exception in invokeOnCancellation handler for " + this, th2));
        }
    }

    public final void j(m3.l onCancellation, Throwable cause) {
        kotlin.jvm.internal.h.e(onCancellation, "onCancellation");
        kotlin.jvm.internal.h.e(cause, "cause");
        try {
            onCancellation.invoke(cause);
        } catch (Throwable th) {
            kotlin.coroutines.i iVar = this.f11425h;
            A.a(iVar, new CompletionHandlerException("Exception in resume onCancellation handler for " + this, th));
        }
    }

    public final void k(kotlinx.coroutines.internal.B b4, Throwable th) {
        int i4 = this.f11426i.f12360b & 536870911;
        if (!(i4 != 536870911)) {
            throw new IllegalStateException("The index for Segment.onCancellation(..) is broken".toString());
        }
        try {
            b4.g(i4, this.f11425h);
        } catch (Throwable th2) {
            kotlin.coroutines.i iVar = this.f11425h;
            A.a(iVar, new CompletionHandlerException("Exception in invokeOnCancellation handler for " + this, th2));
        }
    }

    public final void l(Throwable th) {
        Object obj;
        t3.f fVar = this.f11427j;
        do {
            obj = fVar.f12366b;
            if (!(obj instanceof n0)) {
                return;
            }
        } while (!this.f11427j.a(obj, new C1246k(this, th, (obj instanceof AbstractC1229e) || (obj instanceof kotlinx.coroutines.internal.B))));
        n0 n0Var = (n0) obj;
        if (n0Var instanceof AbstractC1229e) {
            i((AbstractC1229e) obj, th);
        } else if (n0Var instanceof kotlinx.coroutines.internal.B) {
            k((kotlinx.coroutines.internal.B) obj, th);
        }
        if (!s()) {
            m();
        }
        n(this.f11306f);
    }

    public final void m() {
        K k4 = (K) this.f11428k.f12366b;
        if (k4 == null) {
            return;
        }
        k4.c();
        this.f11428k.d(m0.f11500d);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002a, code lost:
        if (r0 == false) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x002c, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002d, code lost:
        r0 = r7.f11424g;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0030, code lost:
        if (r8 != 4) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0032, code lost:
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0034, code lost:
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0035, code lost:
        if (r1 != false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0039, code lost:
        if ((r0 instanceof kotlinx.coroutines.internal.C1240g) == false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x003c, code lost:
        if (r8 == 1) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x003e, code lost:
        if (r8 != 2) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0041, code lost:
        r8 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0043, code lost:
        r8 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0044, code lost:
        r5 = r7.f11306f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0046, code lost:
        if (r5 == 1) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0048, code lost:
        if (r5 != 2) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x004b, code lost:
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x004d, code lost:
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x004e, code lost:
        if (r8 != r2) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0050, code lost:
        r8 = ((kotlinx.coroutines.internal.C1240g) r0).f11464g;
        r0 = r0.getContext();
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x005d, code lost:
        if (r8.C(r0) == false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x005f, code lost:
        r8.B(r0, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0063, code lost:
        r8 = kotlinx.coroutines.s0.a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0070, code lost:
        if (r8.f11312f < 4294967296L) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0072, code lost:
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0073, code lost:
        if (r4 == false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0075, code lost:
        r8.E(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0079, code lost:
        r8.F(true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x007c, code lost:
        kotlinx.coroutines.I.a(r7, r7.f11424g, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0085, code lost:
        if (r8.G() != false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0088, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0095, code lost:
        throw r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0096, code lost:
        kotlinx.coroutines.I.a(r7, r0, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0099, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:?, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void n(int r8) {
        /*
            r7 = this;
            t3.d r0 = r7.f11426i
        L2:
            int r1 = r0.f12360b
            int r2 = r1 >> 29
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L1a
            if (r2 != r3) goto Le
            r0 = r4
            goto L2a
        Le:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "Already resumed"
            java.lang.String r8 = r8.toString()
            r7.<init>(r8)
            throw r7
        L1a:
            t3.d r2 = r7.f11426i
            r5 = 536870911(0x1fffffff, float:1.0842021E-19)
            r5 = r5 & r1
            r6 = 1073741824(0x40000000, float:2.0)
            int r5 = r5 + r6
            boolean r1 = r2.a(r1, r5)
            if (r1 == 0) goto L2
            r0 = r3
        L2a:
            if (r0 == 0) goto L2d
            return
        L2d:
            kotlin.coroutines.c r0 = r7.f11424g
            r1 = 4
            if (r8 != r1) goto L34
            r1 = r3
            goto L35
        L34:
            r1 = r4
        L35:
            if (r1 != 0) goto L96
            boolean r2 = r0 instanceof kotlinx.coroutines.internal.C1240g
            if (r2 == 0) goto L96
            r2 = 2
            if (r8 == r3) goto L43
            if (r8 != r2) goto L41
            goto L43
        L41:
            r8 = r4
            goto L44
        L43:
            r8 = r3
        L44:
            int r5 = r7.f11306f
            if (r5 == r3) goto L4d
            if (r5 != r2) goto L4b
            goto L4d
        L4b:
            r2 = r4
            goto L4e
        L4d:
            r2 = r3
        L4e:
            if (r8 != r2) goto L96
            r8 = r0
            kotlinx.coroutines.internal.g r8 = (kotlinx.coroutines.internal.C1240g) r8
            kotlinx.coroutines.x r8 = r8.f11464g
            kotlin.coroutines.i r0 = r0.getContext()
            boolean r1 = r8.C(r0)
            if (r1 == 0) goto L63
            r8.B(r0, r7)
            goto L99
        L63:
            kotlinx.coroutines.N r8 = kotlinx.coroutines.s0.a()
            long r0 = r8.f11312f
            r5 = 4294967296(0x100000000, double:2.121995791E-314)
            int r0 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r0 < 0) goto L73
            r4 = r3
        L73:
            if (r4 == 0) goto L79
            r8.E(r7)
            goto L99
        L79:
            r8.F(r3)
            kotlin.coroutines.c r0 = r7.f11424g     // Catch: java.lang.Throwable -> L88
            kotlinx.coroutines.I.a(r7, r0, r3)     // Catch: java.lang.Throwable -> L88
        L81:
            boolean r0 = r8.G()     // Catch: java.lang.Throwable -> L88
            if (r0 != 0) goto L81
            goto L8d
        L88:
            r0 = move-exception
            r1 = 0
            r7.g(r0, r1)     // Catch: java.lang.Throwable -> L91
        L8d:
            r8.D()
            goto L99
        L91:
            r7 = move-exception
            r8.D()
            throw r7
        L96:
            kotlinx.coroutines.I.a(r7, r0, r1)
        L99:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.C1232h.n(int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002f, code lost:
        if (r1 == false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0037, code lost:
        if (((kotlinx.coroutines.K) r9.f11428k.f12366b) != null) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0039, code lost:
        q();
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x003c, code lost:
        if (r0 == false) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x003e, code lost:
        u();
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0043, code lost:
        return kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0044, code lost:
        if (r0 == false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0046, code lost:
        u();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0049, code lost:
        r0 = r9.f11427j.f12366b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x004f, code lost:
        if ((r0 instanceof kotlinx.coroutines.C1252q) != false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0051, code lost:
        r1 = r9.f11306f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0053, code lost:
        if (r1 == 1) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0055, code lost:
        if (r1 != 2) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0057, code lost:
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0058, code lost:
        if (r4 == false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x005a, code lost:
        r1 = (kotlinx.coroutines.a0) r9.f11425h.e(kotlinx.coroutines.Z.f11329d);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0064, code lost:
        if (r1 == null) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x006a, code lost:
        if (r1.a() == false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x006d, code lost:
        r1 = r1.r();
        a(r0, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0074, code lost:
        throw r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0079, code lost:
        return e(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x007e, code lost:
        throw ((kotlinx.coroutines.C1252q) r0).f11508a;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object o() {
        /*
            r9 = this;
            boolean r0 = r9.s()
            t3.d r1 = r9.f11426i
        L6:
            int r2 = r1.f12360b
            int r3 = r2 >> 29
            r4 = 0
            r5 = 1
            r6 = 2
            if (r3 == 0) goto L1f
            if (r3 != r6) goto L13
            r1 = r4
            goto L2f
        L13:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "Already suspended"
            java.lang.String r0 = r0.toString()
            r9.<init>(r0)
            throw r9
        L1f:
            t3.d r3 = r9.f11426i
            r7 = 536870911(0x1fffffff, float:1.0842021E-19)
            r7 = r7 & r2
            r8 = 536870912(0x20000000, float:1.0842022E-19)
            int r7 = r7 + r8
            boolean r2 = r3.a(r2, r7)
            if (r2 == 0) goto L6
            r1 = r5
        L2f:
            if (r1 == 0) goto L44
            t3.f r1 = r9.f11428k
            java.lang.Object r1 = r1.f12366b
            kotlinx.coroutines.K r1 = (kotlinx.coroutines.K) r1
            if (r1 != 0) goto L3c
            r9.q()
        L3c:
            if (r0 == 0) goto L41
            r9.u()
        L41:
            kotlin.coroutines.intrinsics.CoroutineSingletons r9 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            return r9
        L44:
            if (r0 == 0) goto L49
            r9.u()
        L49:
            t3.f r0 = r9.f11427j
            java.lang.Object r0 = r0.f12366b
            boolean r1 = r0 instanceof kotlinx.coroutines.C1252q
            if (r1 != 0) goto L7a
            int r1 = r9.f11306f
            if (r1 == r5) goto L57
            if (r1 != r6) goto L58
        L57:
            r4 = r5
        L58:
            if (r4 == 0) goto L75
            kotlin.coroutines.i r1 = r9.f11425h
            kotlinx.coroutines.Z r2 = kotlinx.coroutines.Z.f11329d
            kotlin.coroutines.g r1 = r1.e(r2)
            kotlinx.coroutines.a0 r1 = (kotlinx.coroutines.a0) r1
            if (r1 == 0) goto L75
            boolean r2 = r1.a()
            if (r2 == 0) goto L6d
            goto L75
        L6d:
            java.util.concurrent.CancellationException r1 = r1.r()
            r9.a(r0, r1)
            throw r1
        L75:
            java.lang.Object r9 = r9.e(r0)
            return r9
        L7a:
            kotlinx.coroutines.q r0 = (kotlinx.coroutines.C1252q) r0
            java.lang.Throwable r9 = r0.f11508a
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.C1232h.o():java.lang.Object");
    }

    public final void p() {
        K q4 = q();
        if (q4 != null && (!(this.f11427j.f12366b instanceof n0))) {
            q4.c();
            this.f11428k.d(m0.f11500d);
        }
    }

    public final K q() {
        a0 a0Var = (a0) this.f11425h.e(Z.f11329d);
        if (a0Var == null) {
            return null;
        }
        K a4 = Z.a(a0Var, true, new C1247l(this), 2);
        this.f11428k.a(null, a4);
        return a4;
    }

    public final void r(Object obj) {
        t3.f fVar = this.f11427j;
        while (true) {
            Object obj2 = fVar.f12366b;
            if (!(obj2 instanceof C1226b)) {
                if (obj2 instanceof AbstractC1229e ? true : obj2 instanceof kotlinx.coroutines.internal.B) {
                    t(obj, obj2);
                    throw null;
                }
                boolean z4 = obj2 instanceof C1252q;
                if (z4) {
                    C1252q c1252q = (C1252q) obj2;
                    if (!c1252q.f11509b.a()) {
                        t(obj, obj2);
                        throw null;
                    } else if (obj2 instanceof C1246k) {
                        if (!z4) {
                            c1252q = null;
                        }
                        Throwable th = c1252q != null ? c1252q.f11508a : null;
                        if (obj instanceof AbstractC1229e) {
                            i((AbstractC1229e) obj, th);
                            return;
                        } else {
                            k((kotlinx.coroutines.internal.B) obj, th);
                            return;
                        }
                    } else {
                        return;
                    }
                } else if (obj2 instanceof C1251p) {
                    C1251p c1251p = (C1251p) obj2;
                    if (c1251p.f11503b != null) {
                        t(obj, obj2);
                        throw null;
                    } else if (obj instanceof kotlinx.coroutines.internal.B) {
                        return;
                    } else {
                        AbstractC1229e abstractC1229e = (AbstractC1229e) obj;
                        Throwable th2 = c1251p.f11506e;
                        if (th2 != null) {
                            i(abstractC1229e, th2);
                            return;
                        } else {
                            if (this.f11427j.a(obj2, C1251p.a(c1251p, abstractC1229e, null, 29))) {
                                return;
                            }
                        }
                    }
                } else if (obj instanceof kotlinx.coroutines.internal.B) {
                    return;
                } else {
                    if (this.f11427j.a(obj2, new C1251p(obj2, (AbstractC1229e) obj, (m3.l) null, (Throwable) null, 28))) {
                        return;
                    }
                }
            } else if (this.f11427j.a(obj2, obj)) {
                return;
            }
        }
    }

    @Override // kotlin.coroutines.c
    public final void resumeWith(Object obj) {
        Throwable a4 = Result.a(obj);
        if (a4 != null) {
            obj = new C1252q(a4, false);
        }
        v(obj, this.f11306f, null);
    }

    public final boolean s() {
        if (this.f11306f == 2) {
            kotlin.coroutines.c cVar = this.f11424g;
            kotlin.jvm.internal.h.c(cVar, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
            if (((C1240g) cVar).f11468k.f12366b != null) {
                return true;
            }
        }
        return false;
    }

    public final String toString() {
        String c4 = D.c(this.f11424g);
        Object obj = this.f11427j.f12366b;
        String str = obj instanceof n0 ? "Active" : obj instanceof C1246k ? "Cancelled" : "Completed";
        String b4 = D.b(this);
        return "CancellableContinuation(" + c4 + "){" + str + "}@" + b4;
    }

    public final void u() {
        kotlin.coroutines.c cVar = this.f11424g;
        Throwable th = null;
        C1240g c1240g = cVar instanceof C1240g ? (C1240g) cVar : null;
        if (c1240g != null) {
            t3.f fVar = c1240g.f11468k;
            while (true) {
                Object obj = fVar.f12366b;
                kotlinx.coroutines.internal.E e4 = C1241h.f11470b;
                if (obj == e4) {
                    if (c1240g.f11468k.a(e4, this)) {
                        break;
                    }
                } else if (!(obj instanceof Throwable)) {
                    throw new IllegalStateException(("Inconsistent state " + obj).toString());
                } else if (!c1240g.f11468k.a(obj, null)) {
                    throw new IllegalArgumentException("Failed requirement.".toString());
                } else {
                    th = (Throwable) obj;
                }
            }
            if (th == null) {
                return;
            }
            m();
            l(th);
        }
    }

    public final void v(Object obj, int i4, m3.l lVar) {
        Object obj2;
        t3.f fVar = this.f11427j;
        do {
            obj2 = fVar.f12366b;
            if (!(obj2 instanceof n0)) {
                if (obj2 instanceof C1246k) {
                    C1246k c1246k = (C1246k) obj2;
                    if (c1246k.f11498c.a()) {
                        if (lVar != null) {
                            j(lVar, c1246k.f11508a);
                            return;
                        }
                        return;
                    }
                }
                throw new IllegalStateException(("Already resumed, but proposed with update " + obj).toString());
            }
        } while (!this.f11427j.a(obj2, x((n0) obj2, obj, i4, lVar)));
        if (!s()) {
            m();
        }
        n(i4);
    }

    @Override // kotlinx.coroutines.InterfaceC1231g
    public final void w(Object obj) {
        n(this.f11306f);
    }
}
