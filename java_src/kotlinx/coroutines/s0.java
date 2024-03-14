package kotlinx.coroutines;
/* loaded from: classes.dex */
public final class s0 {

    /* renamed from: a  reason: collision with root package name */
    public static final ThreadLocal f11512a = new ThreadLocal();

    public static N a() {
        ThreadLocal threadLocal = f11512a;
        N n4 = (N) threadLocal.get();
        if (n4 == null) {
            Thread currentThread = Thread.currentThread();
            kotlin.jvm.internal.h.d(currentThread, "currentThread()");
            C1227c c1227c = new C1227c(currentThread);
            threadLocal.set(c1227c);
            return c1227c;
        }
        return n4;
    }
}
