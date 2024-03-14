package kotlinx.coroutines;
/* renamed from: kotlinx.coroutines.l  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1247l extends b0 {

    /* renamed from: h  reason: collision with root package name */
    public final C1232h f11499h;

    public C1247l(C1232h child) {
        kotlin.jvm.internal.h.e(child, "child");
        this.f11499h = child;
    }

    @Override // m3.l
    public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
        k((Throwable) obj);
        return e3.f.f9037a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0036, code lost:
        r0 = true;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    @Override // kotlinx.coroutines.AbstractC1253s
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void k(java.lang.Throwable r6) {
        /*
            r5 = this;
            kotlinx.coroutines.h r6 = r5.f11499h
            kotlinx.coroutines.h0 r5 = r5.l()
            r6.getClass()
            java.util.concurrent.CancellationException r5 = r5.r()
            boolean r0 = r6.s()
            if (r0 != 0) goto L14
            goto L41
        L14:
            kotlin.coroutines.c r0 = r6.f11424g
            java.lang.String r1 = "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>"
            kotlin.jvm.internal.h.c(r0, r1)
            kotlinx.coroutines.internal.g r0 = (kotlinx.coroutines.internal.C1240g) r0
            t3.f r1 = r0.f11468k
        L1f:
            java.lang.Object r2 = r1.f12366b
            kotlinx.coroutines.internal.E r3 = kotlinx.coroutines.internal.C1241h.f11470b
            boolean r4 = kotlin.jvm.internal.h.a(r2, r3)
            if (r4 == 0) goto L32
            t3.f r2 = r0.f11468k
            boolean r2 = r2.a(r3, r5)
            if (r2 == 0) goto L1f
            goto L36
        L32:
            boolean r3 = r2 instanceof java.lang.Throwable
            if (r3 == 0) goto L38
        L36:
            r0 = 1
            goto L42
        L38:
            t3.f r3 = r0.f11468k
            r4 = 0
            boolean r2 = r3.a(r2, r4)
            if (r2 == 0) goto L1f
        L41:
            r0 = 0
        L42:
            if (r0 == 0) goto L45
            goto L51
        L45:
            r6.l(r5)
            boolean r5 = r6.s()
            if (r5 != 0) goto L51
            r6.m()
        L51:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.C1247l.k(java.lang.Throwable):void");
    }
}
