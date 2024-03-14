package io.grpc.internal;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes.dex */
public final class T1 implements Q0 {

    /* renamed from: b  reason: collision with root package name */
    public static final Logger f9996b = Logger.getLogger(T1.class.getName());

    /* renamed from: c  reason: collision with root package name */
    public static final Constructor f9997c;

    /* renamed from: d  reason: collision with root package name */
    public static final Method f9998d;

    /* renamed from: e  reason: collision with root package name */
    public static final RuntimeException f9999e;

    /* renamed from: f  reason: collision with root package name */
    public static final Object[] f10000f;

    /* renamed from: a  reason: collision with root package name */
    public final Object f10001a;

    static {
        Method method;
        Constructor<?> constructor;
        Class<?> cls;
        int i4;
        try {
            cls = Class.forName("java.util.concurrent.atomic.LongAdder");
            i4 = 0;
            method = cls.getMethod("add", Long.TYPE);
        } catch (Throwable th) {
            th = th;
            method = null;
        }
        try {
            cls.getMethod("sum", new Class[0]);
            Constructor<?>[] constructors = cls.getConstructors();
            int length = constructors.length;
            while (true) {
                if (i4 >= length) {
                    constructor = null;
                    break;
                }
                constructor = constructors[i4];
                if (constructor.getParameterTypes().length == 0) {
                    break;
                }
                i4++;
            }
            th = null;
        } catch (Throwable th2) {
            th = th2;
            f9996b.log(Level.FINE, "LongAdder can not be found via reflection, this is normal for JDK7 and below", th);
            constructor = null;
            if (th == null) {
            }
            f9997c = null;
            f9998d = null;
            f9999e = new RuntimeException(th);
            f10000f = new Object[]{1L};
        }
        if (th == null || constructor == null) {
            f9997c = null;
            f9998d = null;
            f9999e = new RuntimeException(th);
        } else {
            f9997c = constructor;
            f9998d = method;
            f9999e = null;
        }
        f10000f = new Object[]{1L};
    }

    public T1() {
        RuntimeException runtimeException = f9999e;
        if (runtimeException != null) {
            throw runtimeException;
        }
        try {
            this.f10001a = f9997c.newInstance(new Object[0]);
        } catch (IllegalAccessException e4) {
            throw new RuntimeException(e4);
        } catch (InstantiationException e5) {
            throw new RuntimeException(e5);
        } catch (InvocationTargetException e6) {
            throw new RuntimeException(e6);
        }
    }

    @Override // io.grpc.internal.Q0
    public final void a() {
        try {
            f9998d.invoke(this.f10001a, f10000f);
        } catch (IllegalAccessException e4) {
            throw new RuntimeException(e4);
        } catch (InvocationTargetException e5) {
            throw new RuntimeException(e5);
        }
    }
}
