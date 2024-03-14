package com.google.protobuf;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;
/* loaded from: classes.dex */
public final class X0 {

    /* renamed from: a  reason: collision with root package name */
    public static final Unsafe f8615a;

    /* renamed from: b  reason: collision with root package name */
    public static final Class f8616b;

    /* renamed from: c  reason: collision with root package name */
    public static final V0 f8617c;

    /* renamed from: d  reason: collision with root package name */
    public static final boolean f8618d;

    /* renamed from: e  reason: collision with root package name */
    public static final boolean f8619e;

    /* renamed from: f  reason: collision with root package name */
    public static final long f8620f;

    /* renamed from: g  reason: collision with root package name */
    public static final boolean f8621g;

    /* JADX WARN: Removed duplicated region for block: B:40:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x007e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static {
        /*
            Method dump skipped, instructions count: 320
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.X0.<clinit>():void");
    }

    public static void a(Throwable th) {
        Logger logger = Logger.getLogger(X0.class.getName());
        Level level = Level.WARNING;
        logger.log(level, "platform method missing - proto runtime falling back to safer methods: " + th);
    }

    public static Object b(Class cls) {
        try {
            return f8615a.allocateInstance(cls);
        } catch (InstantiationException e4) {
            throw new IllegalStateException(e4);
        }
    }

    public static int c(Class cls) {
        if (f8619e) {
            return f8617c.f8583a.arrayBaseOffset(cls);
        }
        return -1;
    }

    public static void d(Class cls) {
        if (f8619e) {
            f8617c.f8583a.arrayIndexScale(cls);
        }
    }

    public static Field e() {
        Field field;
        Field field2;
        if (C0747d.a()) {
            try {
                field2 = Buffer.class.getDeclaredField("effectiveDirectAddress");
            } catch (Throwable unused) {
                field2 = null;
            }
            if (field2 != null) {
                return field2;
            }
        }
        try {
            field = Buffer.class.getDeclaredField("address");
        } catch (Throwable unused2) {
            field = null;
        }
        if (field == null || field.getType() != Long.TYPE) {
            return null;
        }
        return field;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean f(Class cls) {
        if (C0747d.a()) {
            try {
                Class cls2 = f8616b;
                Class cls3 = Boolean.TYPE;
                cls2.getMethod("peekLong", cls, cls3);
                cls2.getMethod("pokeLong", cls, Long.TYPE, cls3);
                Class cls4 = Integer.TYPE;
                cls2.getMethod("pokeInt", cls, cls4, cls3);
                cls2.getMethod("peekInt", cls, cls3);
                cls2.getMethod("pokeByte", cls, Byte.TYPE);
                cls2.getMethod("peekByte", cls);
                cls2.getMethod("pokeByteArray", cls, byte[].class, cls4, cls4);
                cls2.getMethod("peekByteArray", cls, byte[].class, cls4, cls4);
                return true;
            } catch (Throwable unused) {
                return false;
            }
        }
        return false;
    }

    public static boolean g(long j4, Object obj) {
        V0 v02 = f8617c;
        int i4 = v02.f8582b;
        boolean z4 = f8621g;
        switch (i4) {
            case 0:
                if (z4) {
                    if (i(j4, obj) != 0) {
                        return true;
                    }
                } else if (j(j4, obj) != 0) {
                    return true;
                }
                break;
            case 1:
                if (z4) {
                    if (i(j4, obj) != 0) {
                        return true;
                    }
                } else if (j(j4, obj) != 0) {
                    return true;
                }
                break;
            default:
                return v02.f8583a.getBoolean(obj, j4);
        }
        return false;
    }

    public static byte h(byte[] bArr, long j4) {
        long j5 = f8620f + j4;
        V0 v02 = f8617c;
        int i4 = v02.f8582b;
        boolean z4 = f8621g;
        switch (i4) {
            case 0:
                return z4 ? i(j5, bArr) : j(j5, bArr);
            case 1:
                return z4 ? i(j5, bArr) : j(j5, bArr);
            default:
                return v02.f8583a.getByte(bArr, j5);
        }
    }

    public static byte i(long j4, Object obj) {
        return (byte) ((m((-4) & j4, obj) >>> ((int) (((~j4) & 3) << 3))) & 255);
    }

    public static byte j(long j4, Object obj) {
        return (byte) ((m((-4) & j4, obj) >>> ((int) ((j4 & 3) << 3))) & 255);
    }

    public static double k(long j4, Object obj) {
        V0 v02 = f8617c;
        int i4 = v02.f8582b;
        Unsafe unsafe = v02.f8583a;
        switch (i4) {
            case 0:
                return Double.longBitsToDouble(unsafe.getLong(obj, j4));
            case 1:
                return Double.longBitsToDouble(unsafe.getLong(obj, j4));
            default:
                return unsafe.getDouble(obj, j4);
        }
    }

    public static float l(long j4, Object obj) {
        V0 v02 = f8617c;
        int i4 = v02.f8582b;
        Unsafe unsafe = v02.f8583a;
        switch (i4) {
            case 0:
                return Float.intBitsToFloat(unsafe.getInt(obj, j4));
            case 1:
                return Float.intBitsToFloat(unsafe.getInt(obj, j4));
            default:
                return unsafe.getFloat(obj, j4);
        }
    }

    public static int m(long j4, Object obj) {
        return f8617c.f8583a.getInt(obj, j4);
    }

    public static long n(long j4, Object obj) {
        return f8617c.f8583a.getLong(obj, j4);
    }

    public static Object o(long j4, Object obj) {
        return f8617c.f8583a.getObject(obj, j4);
    }

    public static void p(Object obj, long j4, boolean z4) {
        V0 v02 = f8617c;
        int i4 = v02.f8582b;
        boolean z5 = f8621g;
        switch (i4) {
            case 0:
                if (z5) {
                    r(obj, j4, z4 ? (byte) 1 : (byte) 0);
                    return;
                } else {
                    s(obj, j4, z4 ? (byte) 1 : (byte) 0);
                    return;
                }
            case 1:
                if (z5) {
                    r(obj, j4, z4 ? (byte) 1 : (byte) 0);
                    return;
                } else {
                    s(obj, j4, z4 ? (byte) 1 : (byte) 0);
                    return;
                }
            default:
                v02.f8583a.putBoolean(obj, j4, z4);
                return;
        }
    }

    public static void q(byte[] bArr, long j4, byte b4) {
        long j5 = f8620f + j4;
        V0 v02 = f8617c;
        int i4 = v02.f8582b;
        boolean z4 = f8621g;
        switch (i4) {
            case 0:
                if (z4) {
                    r(bArr, j5, b4);
                    return;
                } else {
                    s(bArr, j5, b4);
                    return;
                }
            case 1:
                if (z4) {
                    r(bArr, j5, b4);
                    return;
                } else {
                    s(bArr, j5, b4);
                    return;
                }
            default:
                v02.f8583a.putByte(bArr, j5, b4);
                return;
        }
    }

    public static void r(Object obj, long j4, byte b4) {
        long j5 = (-4) & j4;
        int m4 = m(j5, obj);
        int i4 = ((~((int) j4)) & 3) << 3;
        v(((255 & b4) << i4) | (m4 & (~(255 << i4))), j5, obj);
    }

    public static void s(Object obj, long j4, byte b4) {
        long j5 = (-4) & j4;
        int i4 = (((int) j4) & 3) << 3;
        v(((255 & b4) << i4) | (m(j5, obj) & (~(255 << i4))), j5, obj);
    }

    public static void t(Object obj, long j4, double d4) {
        V0 v02 = f8617c;
        switch (v02.f8582b) {
            case 0:
                v02.f8583a.putLong(obj, j4, Double.doubleToLongBits(d4));
                return;
            case 1:
                v02.f8583a.putLong(obj, j4, Double.doubleToLongBits(d4));
                return;
            default:
                v02.f8583a.putDouble(obj, j4, d4);
                return;
        }
    }

    public static void u(Object obj, long j4, float f4) {
        V0 v02 = f8617c;
        int i4 = v02.f8582b;
        Unsafe unsafe = v02.f8583a;
        switch (i4) {
            case 0:
                unsafe.putInt(obj, j4, Float.floatToIntBits(f4));
                return;
            case 1:
                unsafe.putInt(obj, j4, Float.floatToIntBits(f4));
                return;
            default:
                unsafe.putFloat(obj, j4, f4);
                return;
        }
    }

    public static void v(int i4, long j4, Object obj) {
        f8617c.f8583a.putInt(obj, j4, i4);
    }

    public static void w(Object obj, long j4, long j5) {
        f8617c.f8583a.putLong(obj, j4, j5);
    }

    public static void x(long j4, Object obj, Object obj2) {
        f8617c.f8583a.putObject(obj, j4, obj2);
    }
}
