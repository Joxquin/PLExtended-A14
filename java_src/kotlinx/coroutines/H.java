package kotlinx.coroutines;
/* loaded from: classes.dex */
public abstract class H extends v3.i {

    /* renamed from: f  reason: collision with root package name */
    public int f11306f;

    public H(int i4) {
        this.f11306f = i4;
    }

    public void a(Object obj, Throwable cause) {
        kotlin.jvm.internal.h.e(cause, "cause");
    }

    public abstract kotlin.coroutines.c c();

    public Throwable d(Object obj) {
        C1252q c1252q = obj instanceof C1252q ? (C1252q) obj : null;
        if (c1252q != null) {
            return c1252q.f11508a;
        }
        return null;
    }

    public Object e(Object obj) {
        return obj;
    }

    public final void g(Throwable th, Throwable th2) {
        if (th == null && th2 == null) {
            return;
        }
        if (th != null && th2 != null) {
            e3.a.a(th, th2);
        }
        if (th == null) {
            th = th2;
        }
        kotlin.jvm.internal.h.b(th);
        A.a(c().getContext(), new CoroutinesInternalError("Fatal exception in coroutines machinery for " + this + ". Please read KDoc to 'handleFatalException' method and report this incident to maintainers", th));
    }

    public abstract Object h();

    /* JADX WARN: Code restructure failed: missing block: B:17:0x003e, code lost:
        r6 = (kotlinx.coroutines.a0) r6.e(kotlinx.coroutines.Z.f11329d);
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r12 = this;
            v3.j r0 = r12.f12670e
            kotlin.coroutines.c r1 = r12.c()     // Catch: java.lang.Throwable -> L8e
            java.lang.String r2 = "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTask>"
            kotlin.jvm.internal.h.c(r1, r2)     // Catch: java.lang.Throwable -> L8e
            kotlinx.coroutines.internal.g r1 = (kotlinx.coroutines.internal.C1240g) r1     // Catch: java.lang.Throwable -> L8e
            kotlin.coroutines.c r2 = r1.f11465h     // Catch: java.lang.Throwable -> L8e
            java.lang.Object r1 = r1.f11467j     // Catch: java.lang.Throwable -> L8e
            kotlin.coroutines.i r3 = r2.getContext()     // Catch: java.lang.Throwable -> L8e
            java.lang.Object r1 = kotlinx.coroutines.internal.H.c(r3, r1)     // Catch: java.lang.Throwable -> L8e
            kotlinx.coroutines.internal.E r4 = kotlinx.coroutines.internal.H.f11446a     // Catch: java.lang.Throwable -> L8e
            r5 = 0
            if (r1 == r4) goto L23
            kotlinx.coroutines.u0 r4 = kotlinx.coroutines.C1256v.d(r2, r3)     // Catch: java.lang.Throwable -> L8e
            goto L24
        L23:
            r4 = r5
        L24:
            kotlin.coroutines.i r6 = r2.getContext()     // Catch: java.lang.Throwable -> L90
            java.lang.Object r7 = r12.h()     // Catch: java.lang.Throwable -> L90
            java.lang.Throwable r8 = r12.d(r7)     // Catch: java.lang.Throwable -> L90
            if (r8 != 0) goto L47
            int r9 = r12.f11306f     // Catch: java.lang.Throwable -> L90
            r10 = 1
            if (r9 == r10) goto L3c
            r11 = 2
            if (r9 != r11) goto L3b
            goto L3c
        L3b:
            r10 = 0
        L3c:
            if (r10 == 0) goto L47
            kotlinx.coroutines.Z r9 = kotlinx.coroutines.Z.f11329d     // Catch: java.lang.Throwable -> L90
            kotlin.coroutines.g r6 = r6.e(r9)     // Catch: java.lang.Throwable -> L90
            kotlinx.coroutines.a0 r6 = (kotlinx.coroutines.a0) r6     // Catch: java.lang.Throwable -> L90
            goto L48
        L47:
            r6 = r5
        L48:
            if (r6 == 0) goto L5f
            boolean r9 = r6.a()     // Catch: java.lang.Throwable -> L90
            if (r9 != 0) goto L5f
            java.util.concurrent.CancellationException r6 = r6.r()     // Catch: java.lang.Throwable -> L90
            r12.a(r7, r6)     // Catch: java.lang.Throwable -> L90
            kotlin.Result$Failure r6 = e3.d.a(r6)     // Catch: java.lang.Throwable -> L90
            r2.resumeWith(r6)     // Catch: java.lang.Throwable -> L90
            goto L70
        L5f:
            if (r8 == 0) goto L69
            kotlin.Result$Failure r6 = e3.d.a(r8)     // Catch: java.lang.Throwable -> L90
            r2.resumeWith(r6)     // Catch: java.lang.Throwable -> L90
            goto L70
        L69:
            java.lang.Object r6 = r12.e(r7)     // Catch: java.lang.Throwable -> L90
            r2.resumeWith(r6)     // Catch: java.lang.Throwable -> L90
        L70:
            e3.f r2 = e3.f.f9037a     // Catch: java.lang.Throwable -> L90
            if (r4 != 0) goto L8a
            kotlinx.coroutines.internal.H.a(r3, r1)     // Catch: java.lang.Throwable -> L8e
            r0.a()     // Catch: java.lang.Throwable -> L7d
            e3.f r0 = e3.f.f9037a     // Catch: java.lang.Throwable -> L7d
            goto L82
        L7d:
            r0 = move-exception
            kotlin.Result$Failure r0 = e3.d.a(r0)
        L82:
            java.lang.Throwable r0 = kotlin.Result.a(r0)
            r12.g(r5, r0)
            goto Lad
        L8a:
            r4.f0()     // Catch: java.lang.Throwable -> L8e
            throw r5     // Catch: java.lang.Throwable -> L8e
        L8e:
            r1 = move-exception
            goto L9b
        L90:
            r2 = move-exception
            if (r4 == 0) goto L97
            r4.f0()     // Catch: java.lang.Throwable -> L8e
            throw r5     // Catch: java.lang.Throwable -> L8e
        L97:
            kotlinx.coroutines.internal.H.a(r3, r1)     // Catch: java.lang.Throwable -> L8e
            throw r2     // Catch: java.lang.Throwable -> L8e
        L9b:
            r0.a()     // Catch: java.lang.Throwable -> La1
            e3.f r0 = e3.f.f9037a     // Catch: java.lang.Throwable -> La1
            goto La6
        La1:
            r0 = move-exception
            kotlin.Result$Failure r0 = e3.d.a(r0)
        La6:
            java.lang.Throwable r0 = kotlin.Result.a(r0)
            r12.g(r1, r0)
        Lad:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.H.run():void");
    }
}
