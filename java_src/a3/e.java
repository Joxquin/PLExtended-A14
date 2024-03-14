package a3;

import X2.AbstractC0123k;
import X2.C0113f;
import X2.r0;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public static final Logger f2408a = Logger.getLogger(e.class.getName());

    /* renamed from: b  reason: collision with root package name */
    public static final C0113f f2409b = new C0113f("internal-stub-type");

    public static void a(AbstractC0123k abstractC0123k, Throwable th) {
        try {
            abstractC0123k.a(null, th);
        } catch (Throwable th2) {
            f2408a.log(Level.SEVERE, "RuntimeException encountered while closing call", th2);
        }
        if (th instanceof RuntimeException) {
            throw ((RuntimeException) th);
        }
        if (!(th instanceof Error)) {
            throw new AssertionError(th);
        }
        throw ((Error) th);
    }

    public static c b(AbstractC0123k abstractC0123k, Object obj) {
        c cVar = new c(abstractC0123k);
        d dVar = new d(cVar);
        abstractC0123k.e(dVar, new r0());
        dVar.f2406a.f2405k.c(2);
        try {
            abstractC0123k.d(obj);
            abstractC0123k.b();
            return cVar;
        } catch (Error e4) {
            a(abstractC0123k, e4);
            throw null;
        } catch (RuntimeException e5) {
            a(abstractC0123k, e5);
            throw null;
        }
    }
}
