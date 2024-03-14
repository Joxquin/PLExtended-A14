package X2;

import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes.dex */
public final class Q0 extends B {

    /* renamed from: a  reason: collision with root package name */
    public static final Logger f2163a = Logger.getLogger(Q0.class.getName());

    /* renamed from: b  reason: collision with root package name */
    public static final ThreadLocal f2164b = new ThreadLocal();

    @Override // X2.B
    public final C a() {
        C c4 = (C) f2164b.get();
        return c4 == null ? C.f2091b : c4;
    }

    @Override // X2.B
    public final void b(C c4, C c5) {
        if (a() != c4) {
            f2163a.log(Level.SEVERE, "Context was not attached when detaching", new Throwable().fillInStackTrace());
        }
        C c6 = C.f2091b;
        ThreadLocal threadLocal = f2164b;
        if (c5 != c6) {
            threadLocal.set(c5);
        } else {
            threadLocal.set(null);
        }
    }

    @Override // X2.B
    public final C c(C c4) {
        C a4 = a();
        f2164b.set(c4);
        return a4;
    }
}
