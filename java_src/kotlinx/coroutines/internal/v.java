package kotlinx.coroutines.internal;

import java.util.Iterator;
import java.util.List;
import kotlinx.coroutines.k0;
/* loaded from: classes.dex */
public final class v {

    /* renamed from: a  reason: collision with root package name */
    public static final k0 f11495a;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [kotlin.sequences.a] */
    static {
        Object next;
        k0 b4;
        String b5 = F.b("kotlinx.coroutines.fast.service.loader");
        if (b5 != null) {
            Boolean.parseBoolean(b5);
        }
        Iterator a4 = u.a();
        kotlin.jvm.internal.h.d(a4, "load(\n                  …             ).iterator()");
        kotlin.sequences.m mVar = new kotlin.sequences.m(a4);
        if (!(mVar instanceof kotlin.sequences.a)) {
            mVar = new kotlin.sequences.a(mVar);
        }
        List c4 = kotlin.sequences.j.c(mVar);
        Iterator it = c4.iterator();
        if (it.hasNext()) {
            next = it.next();
            if (it.hasNext()) {
                int c5 = ((t) next).c();
                do {
                    Object next2 = it.next();
                    int c6 = ((t) next2).c();
                    if (c5 < c6) {
                        next = next2;
                        c5 = c6;
                    }
                } while (it.hasNext());
            }
        } else {
            next = null;
        }
        t tVar = (t) next;
        if (tVar == null || (b4 = tVar.b(c4)) == null) {
            throw new IllegalStateException("Module with the Main dispatcher is missing. Add dependency providing the Main dispatcher, e.g. 'kotlinx-coroutines-android' and ensure it has the same version as 'kotlinx-coroutines-core'");
        }
        f11495a = b4;
    }
}
