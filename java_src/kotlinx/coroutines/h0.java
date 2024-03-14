package kotlinx.coroutines;

import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.internal.Ref$ObjectRef;
/* loaded from: classes.dex */
public class h0 implements a0, InterfaceC1250o, o0 {

    /* renamed from: d  reason: collision with root package name */
    public final t3.f f11429d;

    /* renamed from: e  reason: collision with root package name */
    public final t3.f f11430e;

    public h0(boolean z4) {
        this.f11429d = t3.c.d(z4 ? i0.f11438g : i0.f11437f);
        this.f11430e = t3.c.d(null);
    }

    public static C1249n T(kotlinx.coroutines.internal.p pVar) {
        while (pVar.j()) {
            pVar = pVar.i();
        }
        while (true) {
            pVar = pVar.h();
            if (!pVar.j()) {
                if (pVar instanceof C1249n) {
                    return (C1249n) pVar;
                }
                if (pVar instanceof l0) {
                    return null;
                }
            }
        }
    }

    public static String Z(Object obj) {
        if (obj instanceof f0) {
            f0 f0Var = (f0) obj;
            if (f0Var.e()) {
                return "Cancelling";
            }
            if (f0Var.f11389e.f12357b != 0) {
                return "Completing";
            }
        } else if (!(obj instanceof V)) {
            return obj instanceof C1252q ? "Cancelled" : "Completed";
        } else if (!((V) obj).a()) {
            return "New";
        }
        return "Active";
    }

    public final boolean B(Object obj, l0 l0Var, d0 d0Var) {
        boolean z4;
        g0 g0Var = new g0(d0Var, this, obj);
        do {
            kotlinx.coroutines.internal.p i4 = l0Var.i();
            d0Var.f11484e.c(i4);
            d0Var.f11483d.c(l0Var);
            g0Var.f11482c = l0Var;
            z4 = !i4.f11483d.a(l0Var, g0Var) ? false : g0Var.a(i4) == null ? true : true;
            if (z4) {
                return true;
            }
        } while (!z4);
        return false;
    }

    public void C(Object obj) {
    }

    public void D(Object obj) {
        C(obj);
    }

    /* JADX WARN: Removed duplicated region for block: B:66:0x0086 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0004 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean E(java.lang.Object r9) {
        /*
            Method dump skipped, instructions count: 202
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.h0.E(java.lang.Object):boolean");
    }

    public void F(Throwable th) {
        E(th);
    }

    public final boolean G(Throwable th) {
        if (Q()) {
            return true;
        }
        boolean z4 = th instanceof CancellationException;
        InterfaceC1248m interfaceC1248m = (InterfaceC1248m) this.f11430e.f12366b;
        return (interfaceC1248m == null || interfaceC1248m == m0.f11500d) ? z4 : interfaceC1248m.d(th) || z4;
    }

    public String H() {
        throw null;
    }

    public final void I(V v4, Object obj) {
        InterfaceC1248m interfaceC1248m = (InterfaceC1248m) this.f11430e.f12366b;
        if (interfaceC1248m != null) {
            interfaceC1248m.c();
            this.f11430e.d(m0.f11500d);
        }
        CompletionHandlerException completionHandlerException = null;
        C1252q c1252q = obj instanceof C1252q ? (C1252q) obj : null;
        Throwable th = c1252q != null ? c1252q.f11508a : null;
        if (v4 instanceof d0) {
            try {
                ((d0) v4).k(th);
                return;
            } catch (Throwable th2) {
                P(new CompletionHandlerException("Exception in completion handler " + v4 + " for " + this, th2));
                return;
            }
        }
        l0 b4 = v4.b();
        if (b4 != null) {
            Object g4 = b4.g();
            kotlin.jvm.internal.h.c(g4, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
            for (kotlinx.coroutines.internal.p pVar = (kotlinx.coroutines.internal.p) g4; !kotlin.jvm.internal.h.a(pVar, b4); pVar = pVar.h()) {
                if (pVar instanceof d0) {
                    d0 d0Var = (d0) pVar;
                    try {
                        d0Var.k(th);
                    } catch (Throwable th3) {
                        if (completionHandlerException != null) {
                            e3.a.a(completionHandlerException, th3);
                        } else {
                            completionHandlerException = new CompletionHandlerException("Exception in completion handler " + d0Var + " for " + this, th3);
                            e3.f fVar = e3.f.f9037a;
                        }
                    }
                }
            }
            if (completionHandlerException != null) {
                P(completionHandlerException);
            }
        }
    }

    public final Throwable J(Object obj) {
        if (obj == null ? true : obj instanceof Throwable) {
            Throwable th = (Throwable) obj;
            return th == null ? new JobCancellationException(H(), null, this) : th;
        }
        kotlin.jvm.internal.h.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob");
        return ((o0) obj).o();
    }

    public final Object K(f0 f0Var, Object obj) {
        Throwable L3;
        boolean z4;
        C1252q c1252q = obj instanceof C1252q ? (C1252q) obj : null;
        Throwable th = c1252q != null ? c1252q.f11508a : null;
        synchronized (f0Var) {
            f0Var.e();
            List<Throwable> f4 = f0Var.f(th);
            L3 = L(f0Var, f4);
            z4 = true;
            if (L3 != null && f4.size() > 1) {
                Set newSetFromMap = Collections.newSetFromMap(new IdentityHashMap(f4.size()));
                kotlin.jvm.internal.h.d(newSetFromMap, "newSetFromMap(IdentityHashMap(expectedSize))");
                for (Throwable th2 : f4) {
                    if (th2 != L3 && th2 != L3 && !(th2 instanceof CancellationException) && newSetFromMap.add(th2)) {
                        e3.a.a(L3, th2);
                    }
                }
            }
        }
        if (L3 != null && L3 != th) {
            obj = new C1252q(L3, false);
        }
        if (L3 != null) {
            if (!G(L3) && !O(L3)) {
                z4 = false;
            }
            if (z4) {
                kotlin.jvm.internal.h.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally");
                ((C1252q) obj).f11509b.a();
            }
        }
        V(obj);
        this.f11429d.a(f0Var, obj instanceof V ? new W((V) obj) : obj);
        I(f0Var, obj);
        return obj;
    }

    public final Throwable L(f0 f0Var, List list) {
        Object obj;
        boolean z4;
        Object obj2 = null;
        if (list.isEmpty()) {
            if (f0Var.e()) {
                return new JobCancellationException(H(), null, this);
            }
            return null;
        }
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (!(((Throwable) obj) instanceof CancellationException)) {
                break;
            }
        }
        Throwable th = (Throwable) obj;
        if (th != null) {
            return th;
        }
        Throwable th2 = (Throwable) list.get(0);
        if (th2 instanceof TimeoutCancellationException) {
            Iterator it2 = list.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                Object next = it2.next();
                Throwable th3 = (Throwable) next;
                if (th3 == th2 || !(th3 instanceof TimeoutCancellationException)) {
                    z4 = false;
                    continue;
                } else {
                    z4 = true;
                    continue;
                }
                if (z4) {
                    obj2 = next;
                    break;
                }
            }
            Throwable th4 = (Throwable) obj2;
            if (th4 != null) {
                return th4;
            }
        }
        return th2;
    }

    public final l0 M(V v4) {
        l0 b4 = v4.b();
        if (b4 == null) {
            if (v4 instanceof M) {
                return new l0();
            }
            if (v4 instanceof d0) {
                X((d0) v4);
                return null;
            }
            throw new IllegalStateException(("State should have list: " + v4).toString());
        }
        return b4;
    }

    public final Object N() {
        t3.f fVar = this.f11429d;
        while (true) {
            Object obj = fVar.f12366b;
            if (!(obj instanceof kotlinx.coroutines.internal.x)) {
                return obj;
            }
            ((kotlinx.coroutines.internal.x) obj).a(this);
        }
    }

    public boolean O(Throwable th) {
        return false;
    }

    public void P(CompletionHandlerException completionHandlerException) {
        throw null;
    }

    public boolean Q() {
        return false;
    }

    public final Object R(Object obj) {
        Object a02;
        do {
            a02 = a0(N(), obj);
            if (a02 == i0.f11432a) {
                String str = "Job " + this + " is already complete or completing, but is being completed with " + obj;
                C1252q c1252q = obj instanceof C1252q ? (C1252q) obj : null;
                throw new IllegalStateException(str, c1252q != null ? c1252q.f11508a : null);
            }
        } while (a02 == i0.f11434c);
        return a02;
    }

    public String S() {
        throw null;
    }

    public final void U(l0 l0Var, Throwable th) {
        Object g4 = l0Var.g();
        kotlin.jvm.internal.h.c(g4, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
        CompletionHandlerException completionHandlerException = null;
        for (kotlinx.coroutines.internal.p pVar = (kotlinx.coroutines.internal.p) g4; !kotlin.jvm.internal.h.a(pVar, l0Var); pVar = pVar.h()) {
            if (pVar instanceof b0) {
                d0 d0Var = (d0) pVar;
                try {
                    d0Var.k(th);
                } catch (Throwable th2) {
                    if (completionHandlerException != null) {
                        e3.a.a(completionHandlerException, th2);
                    } else {
                        completionHandlerException = new CompletionHandlerException("Exception in completion handler " + d0Var + " for " + this, th2);
                        e3.f fVar = e3.f.f9037a;
                    }
                }
            }
        }
        if (completionHandlerException != null) {
            P(completionHandlerException);
        }
        G(th);
    }

    public void V(Object obj) {
        throw null;
    }

    public void W() {
    }

    public final void X(d0 d0Var) {
        l0 l0Var = new l0();
        d0Var.getClass();
        l0Var.f11484e.c(d0Var);
        l0Var.f11483d.c(d0Var);
        while (true) {
            if (d0Var.g() != d0Var) {
                break;
            } else if (d0Var.f11483d.a(d0Var, l0Var)) {
                l0Var.f(d0Var);
                break;
            }
        }
        this.f11429d.a(d0Var, d0Var.h());
    }

    public final int Y(Object obj) {
        boolean z4 = obj instanceof M;
        t3.f fVar = this.f11429d;
        if (z4) {
            if (((M) obj).f11311d) {
                return 0;
            }
            if (fVar.a(obj, i0.f11438g)) {
                W();
                return 1;
            }
            return -1;
        } else if (obj instanceof U) {
            if (fVar.a(obj, ((U) obj).f11324d)) {
                W();
                return 1;
            }
            return -1;
        } else {
            return 0;
        }
    }

    @Override // kotlinx.coroutines.a0
    public boolean a() {
        Object N3 = N();
        return (N3 instanceof V) && ((V) N3).a();
    }

    public final Object a0(Object obj, Object obj2) {
        if (obj instanceof V) {
            if (((obj instanceof M) || (obj instanceof d0)) && !(obj instanceof C1249n) && !(obj2 instanceof C1252q)) {
                V v4 = (V) obj;
                t3.f fVar = this.f11429d;
                kotlinx.coroutines.internal.E e4 = i0.f11432a;
                if (fVar.a(v4, obj2 instanceof V ? new W((V) obj2) : obj2)) {
                    V(obj2);
                    I(v4, obj2);
                    r1 = true;
                }
                return r1 ? obj2 : i0.f11434c;
            }
            V v5 = (V) obj;
            l0 M3 = M(v5);
            if (M3 == null) {
                return i0.f11434c;
            }
            C1249n c1249n = null;
            f0 f0Var = v5 instanceof f0 ? (f0) v5 : null;
            if (f0Var == null) {
                f0Var = new f0(M3, null);
            }
            Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
            synchronized (f0Var) {
                if (f0Var.f11389e.f12357b != 0) {
                    return i0.f11432a;
                }
                f0Var.f11389e.b();
                if (f0Var != v5 && !this.f11429d.a(v5, f0Var)) {
                    return i0.f11434c;
                }
                boolean e5 = f0Var.e();
                C1252q c1252q = obj2 instanceof C1252q ? (C1252q) obj2 : null;
                if (c1252q != null) {
                    f0Var.c(c1252q.f11508a);
                }
                Throwable d4 = f0Var.d();
                if (!Boolean.valueOf(!e5).booleanValue()) {
                    d4 = null;
                }
                ref$ObjectRef.element = d4;
                e3.f fVar2 = e3.f.f9037a;
                if (d4 != null) {
                    U(M3, d4);
                }
                C1249n c1249n2 = v5 instanceof C1249n ? (C1249n) v5 : null;
                if (c1249n2 == null) {
                    l0 b4 = v5.b();
                    if (b4 != null) {
                        c1249n = T(b4);
                    }
                } else {
                    c1249n = c1249n2;
                }
                return (c1249n == null || !b0(f0Var, c1249n, obj2)) ? K(f0Var, obj2) : i0.f11433b;
            }
        }
        return i0.f11432a;
    }

    @Override // kotlinx.coroutines.a0, kotlinx.coroutines.channels.r
    public void b(CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new JobCancellationException(H(), null, this);
        }
        F(cancellationException);
    }

    public final boolean b0(f0 f0Var, C1249n c1249n, Object obj) {
        while (Z.a(c1249n.f11501h, false, new e0(this, f0Var, c1249n, obj), 1) == m0.f11500d) {
            c1249n = T(c1249n);
            if (c1249n == null) {
                return false;
            }
        }
        return true;
    }

    @Override // kotlin.coroutines.i
    public final kotlin.coroutines.g e(kotlin.coroutines.h key) {
        kotlin.jvm.internal.h.e(key, "key");
        return kotlin.coroutines.f.b(this, key);
    }

    @Override // kotlin.coroutines.g
    public final kotlin.coroutines.h getKey() {
        return Z.f11329d;
    }

    @Override // kotlin.coroutines.i
    public final kotlin.coroutines.i i(kotlin.coroutines.i context) {
        kotlin.jvm.internal.h.e(context, "context");
        return kotlin.coroutines.f.d(this, context);
    }

    @Override // kotlinx.coroutines.a0
    public final Object l(kotlin.coroutines.c cVar) {
        boolean z4;
        while (true) {
            Object N3 = N();
            if (!(N3 instanceof V)) {
                z4 = false;
                break;
            } else if (Y(N3) >= 0) {
                z4 = true;
                break;
            }
        }
        if (!z4) {
            kotlin.coroutines.i context = cVar.getContext();
            kotlin.jvm.internal.h.e(context, "<this>");
            a0 a0Var = (a0) context.e(Z.f11329d);
            if (a0Var == null || a0Var.a()) {
                return e3.f.f9037a;
            }
            throw a0Var.r();
        }
        C1232h c1232h = new C1232h(1, kotlin.coroutines.intrinsics.a.b(cVar));
        c1232h.p();
        c1232h.r(new L(n(false, true, new p0(c1232h))));
        Object o4 = c1232h.o();
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (o4 != coroutineSingletons) {
            o4 = e3.f.f9037a;
        }
        return o4 == coroutineSingletons ? o4 : e3.f.f9037a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v3, types: [kotlinx.coroutines.U] */
    @Override // kotlinx.coroutines.a0
    public final K n(boolean z4, boolean z5, m3.l lVar) {
        d0 d0Var;
        Throwable th;
        if (z4) {
            d0Var = lVar instanceof b0 ? (b0) lVar : null;
            if (d0Var == null) {
                d0Var = new X(lVar);
            }
        } else {
            d0Var = lVar instanceof d0 ? (d0) lVar : null;
            if (d0Var == null) {
                d0Var = new Y(lVar);
            }
        }
        d0Var.f11383g = this;
        while (true) {
            Object N3 = N();
            if (N3 instanceof M) {
                M m4 = (M) N3;
                if (!m4.f11311d) {
                    l0 l0Var = new l0();
                    if (!m4.f11311d) {
                        l0Var = new U(l0Var);
                    }
                    this.f11429d.a(m4, l0Var);
                } else if (this.f11429d.a(N3, d0Var)) {
                    return d0Var;
                }
            } else if (!(N3 instanceof V)) {
                if (z5) {
                    C1252q c1252q = N3 instanceof C1252q ? (C1252q) N3 : null;
                    lVar.invoke(c1252q != null ? c1252q.f11508a : null);
                }
                return m0.f11500d;
            } else {
                l0 b4 = ((V) N3).b();
                if (b4 == null) {
                    kotlin.jvm.internal.h.c(N3, "null cannot be cast to non-null type kotlinx.coroutines.JobNode");
                    X((d0) N3);
                } else {
                    K k4 = m0.f11500d;
                    if (z4 && (N3 instanceof f0)) {
                        synchronized (N3) {
                            th = ((f0) N3).d();
                            if (th != null) {
                                if (lVar instanceof C1249n) {
                                    if (((f0) N3).f11389e.f12357b != 0) {
                                    }
                                }
                                e3.f fVar = e3.f.f9037a;
                            }
                            if (B(N3, b4, d0Var)) {
                                if (th == null) {
                                    return d0Var;
                                }
                                k4 = d0Var;
                                e3.f fVar2 = e3.f.f9037a;
                            }
                        }
                    } else {
                        th = null;
                    }
                    if (th != null) {
                        if (z5) {
                            lVar.invoke(th);
                        }
                        return k4;
                    } else if (B(N3, b4, d0Var)) {
                        return d0Var;
                    }
                }
            }
        }
    }

    @Override // kotlinx.coroutines.o0
    public final CancellationException o() {
        Throwable th;
        Object N3 = N();
        if (N3 instanceof f0) {
            th = ((f0) N3).d();
        } else if (N3 instanceof C1252q) {
            th = ((C1252q) N3).f11508a;
        } else if (N3 instanceof V) {
            throw new IllegalStateException(("Cannot be cancelling child in this state: " + N3).toString());
        } else {
            th = null;
        }
        CancellationException cancellationException = th instanceof CancellationException ? th : null;
        return cancellationException == null ? new JobCancellationException("Parent job is ".concat(Z(N3)), th, this) : cancellationException;
    }

    @Override // kotlinx.coroutines.a0
    public final CancellationException r() {
        CancellationException cancellationException;
        Object N3 = N();
        if (!(N3 instanceof f0)) {
            if (N3 instanceof V) {
                throw new IllegalStateException(("Job is still new or active: " + this).toString());
            } else if (N3 instanceof C1252q) {
                Throwable th = ((C1252q) N3).f11508a;
                kotlin.jvm.internal.h.e(th, "<this>");
                cancellationException = th instanceof CancellationException ? (CancellationException) th : null;
                return cancellationException == null ? new JobCancellationException(H(), th, this) : cancellationException;
            } else {
                return new JobCancellationException(D.a(this).concat(" has completed normally"), null, this);
            }
        }
        Throwable d4 = ((f0) N3).d();
        if (d4 == null) {
            throw new IllegalStateException(("Job is still new or active: " + this).toString());
        }
        String concat = D.a(this).concat(" is cancelling");
        cancellationException = d4 instanceof CancellationException ? (CancellationException) d4 : null;
        if (cancellationException == null) {
            if (concat == null) {
                concat = H();
            }
            return new JobCancellationException(concat, d4, this);
        }
        return cancellationException;
    }

    @Override // kotlinx.coroutines.a0
    public final boolean start() {
        int Y3;
        do {
            Y3 = Y(N());
            if (Y3 == 0) {
                return false;
            }
        } while (Y3 != 1);
        return true;
    }

    @Override // kotlinx.coroutines.InterfaceC1250o
    public final void t(h0 h0Var) {
        E(h0Var);
    }

    public final String toString() {
        return (S() + "{" + Z(N()) + "}") + "@" + D.b(this);
    }

    @Override // kotlinx.coroutines.a0
    public final InterfaceC1248m u(AbstractC1225a abstractC1225a) {
        K a4 = Z.a(this, true, new C1249n(abstractC1225a), 2);
        kotlin.jvm.internal.h.c(a4, "null cannot be cast to non-null type kotlinx.coroutines.ChildHandle");
        return (InterfaceC1248m) a4;
    }

    @Override // kotlin.coroutines.i
    public final Object x(Object obj, m3.p operation) {
        kotlin.jvm.internal.h.e(operation, "operation");
        return kotlin.coroutines.f.a(this, obj, operation);
    }

    @Override // kotlin.coroutines.i
    public final kotlin.coroutines.i z(kotlin.coroutines.h key) {
        kotlin.jvm.internal.h.e(key, "key");
        return kotlin.coroutines.f.c(this, key);
    }
}
