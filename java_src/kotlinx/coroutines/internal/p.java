package kotlinx.coroutines.internal;
/* loaded from: classes.dex */
public class p {

    /* renamed from: d  reason: collision with root package name */
    public final t3.f f11483d = t3.c.d(this);

    /* renamed from: e  reason: collision with root package name */
    public final t3.f f11484e = t3.c.d(this);

    /* renamed from: f  reason: collision with root package name */
    public final t3.f f11485f = t3.c.d(null);

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0040, code lost:
        if (r3.f11483d.a(r1, ((kotlinx.coroutines.internal.y) r4).f11496a) != false) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kotlinx.coroutines.internal.p e() {
        /*
            r7 = this;
        L0:
            t3.f r0 = r7.f11484e
            java.lang.Object r0 = r0.f12366b
            kotlinx.coroutines.internal.p r0 = (kotlinx.coroutines.internal.p) r0
            r1 = r0
        L7:
            r2 = 0
            r3 = r2
        L9:
            t3.f r4 = r1.f11483d
            java.lang.Object r4 = r4.f12366b
            if (r4 != r7) goto L1c
            if (r0 != r1) goto L12
            return r1
        L12:
            t3.f r2 = r7.f11484e
            boolean r0 = r2.a(r0, r1)
            if (r0 != 0) goto L1b
            goto L0
        L1b:
            return r1
        L1c:
            boolean r5 = r7.j()
            if (r5 == 0) goto L23
            return r2
        L23:
            if (r4 != 0) goto L26
            return r1
        L26:
            boolean r5 = r4 instanceof kotlinx.coroutines.internal.x
            if (r5 == 0) goto L30
            kotlinx.coroutines.internal.x r4 = (kotlinx.coroutines.internal.x) r4
            r4.a(r1)
            goto L0
        L30:
            boolean r5 = r4 instanceof kotlinx.coroutines.internal.y
            if (r5 == 0) goto L4c
            if (r3 == 0) goto L45
            t3.f r2 = r3.f11483d
            kotlinx.coroutines.internal.y r4 = (kotlinx.coroutines.internal.y) r4
            kotlinx.coroutines.internal.p r4 = r4.f11496a
            boolean r1 = r2.a(r1, r4)
            if (r1 != 0) goto L43
            goto L0
        L43:
            r1 = r3
            goto L7
        L45:
            t3.f r1 = r1.f11484e
            java.lang.Object r1 = r1.f12366b
            kotlinx.coroutines.internal.p r1 = (kotlinx.coroutines.internal.p) r1
            goto L9
        L4c:
            java.lang.String r3 = "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"
            kotlin.jvm.internal.h.c(r4, r3)
            r3 = r4
            kotlinx.coroutines.internal.p r3 = (kotlinx.coroutines.internal.p) r3
            r6 = r3
            r3 = r1
            r1 = r6
            goto L9
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.p.e():kotlinx.coroutines.internal.p");
    }

    public final void f(p pVar) {
        p pVar2;
        t3.f fVar = pVar.f11484e;
        do {
            pVar2 = (p) fVar.f12366b;
            if (g() != pVar) {
                return;
            }
        } while (!pVar.f11484e.a(pVar2, this));
        if (j()) {
            pVar.e();
        }
    }

    public final Object g() {
        t3.f fVar = this.f11483d;
        while (true) {
            Object obj = fVar.f12366b;
            if (!(obj instanceof x)) {
                return obj;
            }
            ((x) obj).a(this);
        }
    }

    public final p h() {
        p pVar;
        Object g4 = g();
        E e4 = n.f11479a;
        kotlin.jvm.internal.h.e(g4, "<this>");
        y yVar = g4 instanceof y ? (y) g4 : null;
        return (yVar == null || (pVar = yVar.f11496a) == null) ? (p) g4 : pVar;
    }

    public final p i() {
        p e4 = e();
        if (e4 == null) {
            e4 = (p) this.f11484e.f12366b;
            while (e4.j()) {
                e4 = (p) e4.f11484e.f12366b;
            }
        }
        return e4;
    }

    public boolean j() {
        return g() instanceof y;
    }

    public String toString() {
        LockFreeLinkedListNode$toString$1 lockFreeLinkedListNode$toString$1 = new LockFreeLinkedListNode$toString$1(this);
        String b4 = kotlinx.coroutines.D.b(this);
        return lockFreeLinkedListNode$toString$1 + "@" + b4;
    }
}
