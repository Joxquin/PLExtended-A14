package kotlinx.coroutines;
/* loaded from: classes.dex */
public final class u0 extends kotlinx.coroutines.internal.A {
    private volatile boolean threadLocalIsSet;

    @Override // kotlinx.coroutines.internal.A, kotlinx.coroutines.h0
    public final void D(Object obj) {
        if (this.threadLocalIsSet) {
            throw null;
        }
        Object a4 = C1254t.a(obj, this.f11439g);
        kotlin.coroutines.c cVar = this.f11439g;
        kotlin.coroutines.i context = cVar.getContext();
        Object c4 = kotlinx.coroutines.internal.H.c(context, null);
        u0 d4 = c4 != kotlinx.coroutines.internal.H.f11446a ? C1256v.d(cVar, context) : null;
        try {
            this.f11439g.resumeWith(a4);
            e3.f fVar = e3.f.f9037a;
            if (d4 == null) {
                kotlinx.coroutines.internal.H.a(context, c4);
            } else {
                d4.f0();
                throw null;
            }
        } catch (Throwable th) {
            if (d4 != null) {
                d4.f0();
                throw null;
            } else {
                kotlinx.coroutines.internal.H.a(context, c4);
                throw th;
            }
        }
    }

    public final void f0() {
        if (!this.threadLocalIsSet) {
            throw null;
        }
        throw null;
    }

    public final void g0(kotlin.coroutines.i iVar) {
        this.threadLocalIsSet = true;
        throw null;
    }
}
