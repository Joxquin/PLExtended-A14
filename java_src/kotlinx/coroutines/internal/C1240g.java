package kotlinx.coroutines.internal;

import kotlin.Result;
import kotlinx.coroutines.AbstractC1258x;
import kotlinx.coroutines.C1252q;
import kotlinx.coroutines.N;
import kotlinx.coroutines.s0;
/* renamed from: kotlinx.coroutines.internal.g  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1240g extends kotlinx.coroutines.H implements g3.b, kotlin.coroutines.c {

    /* renamed from: g  reason: collision with root package name */
    public final AbstractC1258x f11464g;

    /* renamed from: h  reason: collision with root package name */
    public final kotlin.coroutines.c f11465h;

    /* renamed from: i  reason: collision with root package name */
    public Object f11466i;

    /* renamed from: j  reason: collision with root package name */
    public final Object f11467j;

    /* renamed from: k  reason: collision with root package name */
    public final t3.f f11468k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1240g(AbstractC1258x dispatcher, kotlin.coroutines.c continuation) {
        super(-1);
        kotlin.jvm.internal.h.e(dispatcher, "dispatcher");
        kotlin.jvm.internal.h.e(continuation, "continuation");
        this.f11464g = dispatcher;
        this.f11465h = continuation;
        this.f11466i = C1241h.f11469a;
        this.f11467j = H.b(getContext());
        this.f11468k = t3.c.d(null);
    }

    @Override // kotlinx.coroutines.H
    public final void a(Object obj, Throwable cause) {
        kotlin.jvm.internal.h.e(cause, "cause");
        if (obj instanceof kotlinx.coroutines.r) {
            ((kotlinx.coroutines.r) obj).f11511b.invoke(cause);
        }
    }

    @Override // kotlinx.coroutines.H
    public final kotlin.coroutines.c c() {
        return this;
    }

    @Override // g3.b
    public final g3.b getCallerFrame() {
        kotlin.coroutines.c cVar = this.f11465h;
        if (cVar instanceof g3.b) {
            return (g3.b) cVar;
        }
        return null;
    }

    @Override // kotlin.coroutines.c
    public final kotlin.coroutines.i getContext() {
        return this.f11465h.getContext();
    }

    @Override // kotlinx.coroutines.H
    public final Object h() {
        Object obj = this.f11466i;
        this.f11466i = C1241h.f11469a;
        return obj;
    }

    @Override // kotlin.coroutines.c
    public final void resumeWith(Object obj) {
        kotlin.coroutines.i context = this.f11465h.getContext();
        Throwable a4 = Result.a(obj);
        Object c1252q = a4 == null ? obj : new C1252q(a4, false);
        if (this.f11464g.C(context)) {
            this.f11466i = c1252q;
            this.f11306f = 0;
            this.f11464g.B(context, this);
            return;
        }
        N a5 = s0.a();
        if (a5.f11312f >= 4294967296L) {
            this.f11466i = c1252q;
            this.f11306f = 0;
            a5.E(this);
            return;
        }
        a5.F(true);
        try {
            kotlin.coroutines.i context2 = getContext();
            Object c4 = H.c(context2, this.f11467j);
            this.f11465h.resumeWith(obj);
            e3.f fVar = e3.f.f9037a;
            H.a(context2, c4);
            do {
            } while (a5.G());
        } finally {
            try {
            } finally {
            }
        }
    }

    public final String toString() {
        AbstractC1258x abstractC1258x = this.f11464g;
        String c4 = kotlinx.coroutines.D.c(this.f11465h);
        return "DispatchedContinuation[" + abstractC1258x + ", " + c4 + "]";
    }
}
