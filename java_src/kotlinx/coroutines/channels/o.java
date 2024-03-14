package kotlinx.coroutines.channels;

import java.util.concurrent.CancellationException;
import kotlinx.coroutines.A;
import kotlinx.coroutines.AbstractC1225a;
import kotlinx.coroutines.C1252q;
import kotlinx.coroutines.JobCancellationException;
import kotlinx.coroutines.f0;
/* loaded from: classes.dex */
public final class o extends AbstractC1225a implements p, f {

    /* renamed from: g  reason: collision with root package name */
    public final f f11381g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(kotlin.coroutines.i parentContext, c cVar) {
        super(parentContext, true);
        kotlin.jvm.internal.h.e(parentContext, "parentContext");
        this.f11381g = cVar;
    }

    @Override // kotlinx.coroutines.h0
    public final void F(Throwable th) {
        CancellationException cancellationException = (CancellationException) th;
        this.f11381g.b(cancellationException);
        E(cancellationException);
    }

    @Override // kotlinx.coroutines.AbstractC1225a, kotlinx.coroutines.h0, kotlinx.coroutines.a0
    public final boolean a() {
        return super.a();
    }

    @Override // kotlinx.coroutines.h0, kotlinx.coroutines.a0, kotlinx.coroutines.channels.r
    public final void b(CancellationException cancellationException) {
        Object N3 = N();
        if ((N3 instanceof C1252q) || ((N3 instanceof f0) && ((f0) N3).e())) {
            return;
        }
        if (cancellationException == null) {
            cancellationException = new JobCancellationException(H(), null, this);
        }
        F(cancellationException);
    }

    @Override // kotlinx.coroutines.AbstractC1225a
    public final void c0(Throwable cause, boolean z4) {
        kotlin.jvm.internal.h.e(cause, "cause");
        if (this.f11381g.g(cause) || z4) {
            return;
        }
        A.a(this.f11330f, cause);
    }

    @Override // kotlinx.coroutines.AbstractC1225a
    public final void d0(Object obj) {
        e3.f value = (e3.f) obj;
        kotlin.jvm.internal.h.e(value, "value");
        this.f11381g.g(null);
    }

    @Override // kotlinx.coroutines.channels.s
    public final boolean g(Throwable th) {
        return this.f11381g.g(th);
    }

    @Override // kotlinx.coroutines.channels.r
    public final g iterator() {
        return this.f11381g.iterator();
    }

    @Override // kotlinx.coroutines.channels.s
    public final void m(m3.l lVar) {
        this.f11381g.m(lVar);
    }

    @Override // kotlinx.coroutines.channels.s
    public final Object p(Object obj) {
        return this.f11381g.p(obj);
    }

    @Override // kotlinx.coroutines.channels.s
    public final Object q(Object obj, kotlin.coroutines.c cVar) {
        return this.f11381g.q(obj, cVar);
    }

    @Override // kotlinx.coroutines.channels.s
    public final boolean s() {
        return this.f11381g.s();
    }
}
