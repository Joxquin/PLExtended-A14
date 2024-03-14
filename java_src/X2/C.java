package X2;

import java.util.logging.Logger;
/* loaded from: classes.dex */
public class C {

    /* renamed from: a  reason: collision with root package name */
    public static final Logger f2090a = Logger.getLogger(C.class.getName());

    /* renamed from: b  reason: collision with root package name */
    public static final C f2091b = new C();

    public static C b() {
        C a4 = A.f2089a.a();
        return a4 == null ? f2091b : a4;
    }

    public final C a() {
        C c4 = A.f2089a.c(this);
        return c4 == null ? f2091b : c4;
    }

    public final void c(C c4) {
        if (c4 == null) {
            throw new NullPointerException("toAttach");
        }
        A.f2089a.b(this, c4);
    }
}
