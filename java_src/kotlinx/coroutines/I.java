package kotlinx.coroutines;

import kotlinx.coroutines.internal.C1240g;
/* loaded from: classes.dex */
public final class I {
    public static final void a(H h4, kotlin.coroutines.c delegate, boolean z4) {
        kotlin.jvm.internal.h.e(h4, "<this>");
        kotlin.jvm.internal.h.e(delegate, "delegate");
        Object h5 = h4.h();
        Throwable d4 = h4.d(h5);
        Object a4 = d4 != null ? e3.d.a(d4) : h4.e(h5);
        if (!z4) {
            delegate.resumeWith(a4);
            return;
        }
        C1240g c1240g = (C1240g) delegate;
        kotlin.coroutines.c cVar = c1240g.f11465h;
        Object obj = c1240g.f11467j;
        kotlin.coroutines.i context = cVar.getContext();
        Object c4 = kotlinx.coroutines.internal.H.c(context, obj);
        u0 d5 = c4 != kotlinx.coroutines.internal.H.f11446a ? C1256v.d(cVar, context) : null;
        try {
            c1240g.f11465h.resumeWith(a4);
            e3.f fVar = e3.f.f9037a;
            if (d5 == null) {
                kotlinx.coroutines.internal.H.a(context, c4);
            } else {
                d5.f0();
                throw null;
            }
        } catch (Throwable th) {
            if (d5 != null) {
                d5.f0();
                throw null;
            } else {
                kotlinx.coroutines.internal.H.a(context, c4);
                throw th;
            }
        }
    }
}
