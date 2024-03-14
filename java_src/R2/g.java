package R2;

import O2.r;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import sun.misc.Unsafe;
/* loaded from: classes.dex */
public final class g extends a {

    /* renamed from: a  reason: collision with root package name */
    public static final Unsafe f1664a;

    /* renamed from: b  reason: collision with root package name */
    public static final long f1665b;

    /* renamed from: c  reason: collision with root package name */
    public static final long f1666c;

    /* renamed from: d  reason: collision with root package name */
    public static final long f1667d;

    /* renamed from: e  reason: collision with root package name */
    public static final long f1668e;

    /* renamed from: f  reason: collision with root package name */
    public static final long f1669f;

    static {
        Unsafe unsafe;
        try {
            try {
                unsafe = Unsafe.getUnsafe();
            } catch (PrivilegedActionException e4) {
                throw new RuntimeException("Could not initialize intrinsics", e4.getCause());
            }
        } catch (SecurityException unused) {
            unsafe = (Unsafe) AccessController.doPrivileged(new f());
        }
        try {
            f1666c = unsafe.objectFieldOffset(com.google.common.util.concurrent.c.class.getDeclaredField("f"));
            f1665b = unsafe.objectFieldOffset(com.google.common.util.concurrent.c.class.getDeclaredField("e"));
            f1667d = unsafe.objectFieldOffset(com.google.common.util.concurrent.c.class.getDeclaredField("d"));
            f1668e = unsafe.objectFieldOffset(h.class.getDeclaredField("a"));
            f1669f = unsafe.objectFieldOffset(h.class.getDeclaredField("b"));
            f1664a = unsafe;
        } catch (Exception e5) {
            r.a(e5);
            throw new RuntimeException(e5);
        }
    }

    @Override // R2.a
    public final boolean a(com.google.common.util.concurrent.c cVar, com.google.common.util.concurrent.b bVar, com.google.common.util.concurrent.b bVar2) {
        return f1664a.compareAndSwapObject(cVar, f1665b, bVar, bVar2);
    }

    @Override // R2.a
    public final boolean b(com.google.common.util.concurrent.c cVar, Object obj, Object obj2) {
        return f1664a.compareAndSwapObject(cVar, f1667d, obj, obj2);
    }

    @Override // R2.a
    public final boolean c(com.google.common.util.concurrent.c cVar, h hVar, h hVar2) {
        return f1664a.compareAndSwapObject(cVar, f1666c, hVar, hVar2);
    }

    @Override // R2.a
    public final com.google.common.util.concurrent.b d(com.google.common.util.concurrent.c cVar, com.google.common.util.concurrent.b bVar) {
        com.google.common.util.concurrent.b bVar2;
        do {
            bVar2 = cVar.f8483e;
            if (bVar == bVar2) {
                return bVar2;
            }
        } while (!a(cVar, bVar2, bVar));
        return bVar2;
    }

    @Override // R2.a
    public final h e(com.google.common.util.concurrent.c cVar) {
        h hVar;
        h hVar2 = h.f1670c;
        do {
            hVar = cVar.f8484f;
            if (hVar2 == hVar) {
                return hVar;
            }
        } while (!c(cVar, hVar, hVar2));
        return hVar;
    }

    @Override // R2.a
    public final void f(h hVar, h hVar2) {
        f1664a.putObject(hVar, f1669f, hVar2);
    }

    @Override // R2.a
    public final void g(h hVar, Thread thread) {
        f1664a.putObject(hVar, f1668e, thread);
    }
}
