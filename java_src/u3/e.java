package u3;

import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import kotlin.Result;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public final class e {
    private static volatile Choreographer choreographer;

    static {
        Object a4;
        try {
            Looper mainLooper = Looper.getMainLooper();
            h.d(mainLooper, "getMainLooper()");
            a4 = new c(a(mainLooper), null, false);
        } catch (Throwable th) {
            a4 = e3.d.a(th);
        }
        d dVar = (d) (a4 instanceof Result.Failure ? null : a4);
    }

    public static final Handler a(Looper looper) {
        Object invoke = Handler.class.getDeclaredMethod("createAsync", Looper.class).invoke(null, looper);
        h.c(invoke, "null cannot be cast to non-null type android.os.Handler");
        return (Handler) invoke;
    }
}
