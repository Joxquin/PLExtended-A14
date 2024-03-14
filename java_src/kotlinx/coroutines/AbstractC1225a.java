package kotlinx.coroutines;

import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlinx.coroutines.internal.C1241h;
/* renamed from: kotlinx.coroutines.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1225a extends h0 implements kotlin.coroutines.c, B {

    /* renamed from: f  reason: collision with root package name */
    public final kotlin.coroutines.i f11330f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC1225a(kotlin.coroutines.i parentContext, boolean z4) {
        super(z4);
        kotlin.jvm.internal.h.e(parentContext, "parentContext");
        a0 a0Var = (a0) parentContext.e(Z.f11329d);
        m0 m0Var = m0.f11500d;
        if (a0Var == null) {
            this.f11430e.d(m0Var);
        } else {
            a0Var.start();
            InterfaceC1248m u4 = a0Var.u(this);
            this.f11430e.d(u4);
            if (!(N() instanceof V)) {
                u4.c();
                this.f11430e.d(m0Var);
            }
        }
        this.f11330f = parentContext.i(this);
    }

    @Override // kotlinx.coroutines.h0
    public final String H() {
        return D.a(this).concat(" was cancelled");
    }

    @Override // kotlinx.coroutines.h0
    public final void P(CompletionHandlerException completionHandlerException) {
        A.a(this.f11330f, completionHandlerException);
    }

    @Override // kotlinx.coroutines.h0
    public final String S() {
        kotlin.jvm.internal.h.e(this.f11330f, "<this>");
        return D.a(this);
    }

    @Override // kotlinx.coroutines.h0
    public final void V(Object obj) {
        if (!(obj instanceof C1252q)) {
            d0(obj);
            return;
        }
        C1252q c1252q = (C1252q) obj;
        c0(c1252q.f11508a, c1252q.f11509b.f12357b != 0);
    }

    @Override // kotlinx.coroutines.h0, kotlinx.coroutines.a0
    public boolean a() {
        return super.a();
    }

    public void c0(Throwable cause, boolean z4) {
        kotlin.jvm.internal.h.e(cause, "cause");
    }

    public void d0(Object obj) {
    }

    public final void e0(CoroutineStart coroutineStart, AbstractC1225a abstractC1225a, m3.p pVar) {
        int ordinal = coroutineStart.ordinal();
        if (ordinal == 0) {
            try {
                C1241h.a(kotlin.coroutines.intrinsics.a.b(kotlin.coroutines.intrinsics.a.a(abstractC1225a, this, pVar)), e3.f.f9037a, null);
            } finally {
                resumeWith(e3.d.a(th));
            }
        } else if (ordinal != 1) {
            if (ordinal == 2) {
                kotlin.coroutines.intrinsics.a.b(kotlin.coroutines.intrinsics.a.a(abstractC1225a, this, pVar)).resumeWith(e3.f.f9037a);
            } else if (ordinal != 3) {
                throw new NoWhenBranchMatchedException();
            } else {
                try {
                    kotlin.coroutines.i iVar = this.f11330f;
                    Object c4 = kotlinx.coroutines.internal.H.c(iVar, null);
                    kotlin.jvm.internal.l.a(2, pVar);
                    Object invoke = pVar.invoke(abstractC1225a, this);
                    kotlinx.coroutines.internal.H.a(iVar, c4);
                    if (invoke != CoroutineSingletons.COROUTINE_SUSPENDED) {
                        resumeWith(invoke);
                    }
                } catch (Throwable th) {
                }
            }
        }
    }

    @Override // kotlin.coroutines.c
    public final kotlin.coroutines.i getContext() {
        return this.f11330f;
    }

    @Override // kotlinx.coroutines.B
    public final kotlin.coroutines.i h() {
        return this.f11330f;
    }

    @Override // kotlin.coroutines.c
    public final void resumeWith(Object obj) {
        Throwable a4 = Result.a(obj);
        if (a4 != null) {
            obj = new C1252q(a4, false);
        }
        Object R3 = R(obj);
        if (R3 == i0.f11433b) {
            return;
        }
        D(R3);
    }
}
