package kotlinx.coroutines.internal;

import java.util.concurrent.CancellationException;
import kotlin.Result;
import kotlinx.coroutines.C1252q;
import kotlinx.coroutines.C1256v;
import kotlinx.coroutines.N;
import kotlinx.coroutines.Z;
import kotlinx.coroutines.a0;
import kotlinx.coroutines.s0;
import kotlinx.coroutines.u0;
/* renamed from: kotlinx.coroutines.internal.h  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1241h {

    /* renamed from: a  reason: collision with root package name */
    public static final E f11469a = new E("UNDEFINED");

    /* renamed from: b  reason: collision with root package name */
    public static final E f11470b = new E("REUSABLE_CLAIMED");

    public static final void a(kotlin.coroutines.c cVar, Object obj, m3.l lVar) {
        if (!(cVar instanceof C1240g)) {
            cVar.resumeWith(obj);
            return;
        }
        C1240g c1240g = (C1240g) cVar;
        Throwable a4 = Result.a(obj);
        boolean z4 = false;
        Object rVar = a4 == null ? lVar != null ? new kotlinx.coroutines.r(obj, lVar) : obj : new C1252q(a4, false);
        if (c1240g.f11464g.C(c1240g.getContext())) {
            c1240g.f11466i = rVar;
            c1240g.f11306f = 1;
            c1240g.f11464g.B(c1240g.getContext(), c1240g);
            return;
        }
        N a5 = s0.a();
        if (a5.f11312f >= 4294967296L) {
            c1240g.f11466i = rVar;
            c1240g.f11306f = 1;
            a5.E(c1240g);
            return;
        }
        a5.F(true);
        try {
            a0 a0Var = (a0) c1240g.getContext().e(Z.f11329d);
            if (a0Var != null && !a0Var.a()) {
                CancellationException r4 = a0Var.r();
                c1240g.a(rVar, r4);
                c1240g.resumeWith(e3.d.a(r4));
                z4 = true;
            }
            if (!z4) {
                kotlin.coroutines.c cVar2 = c1240g.f11465h;
                Object obj2 = c1240g.f11467j;
                kotlin.coroutines.i context = cVar2.getContext();
                Object c4 = H.c(context, obj2);
                u0 d4 = c4 != H.f11446a ? C1256v.d(cVar2, context) : null;
                c1240g.f11465h.resumeWith(obj);
                e3.f fVar = e3.f.f9037a;
                if (d4 != null) {
                    d4.f0();
                    throw null;
                }
                H.a(context, c4);
            }
            do {
            } while (a5.G());
        } finally {
            try {
            } finally {
            }
        }
    }
}
