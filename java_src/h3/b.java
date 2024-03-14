package h3;

import java.lang.reflect.Method;
import kotlin.jvm.internal.h;
import o3.d;
/* loaded from: classes.dex */
public class b {
    public void a(Throwable cause, Throwable exception) {
        h.e(cause, "cause");
        h.e(exception, "exception");
        Method method = a.f9534a;
        if (method != null) {
            method.invoke(cause, exception);
        }
    }

    public d b() {
        return new o3.c();
    }
}
