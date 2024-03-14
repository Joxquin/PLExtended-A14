package O2;

import j.C1080K;
/* loaded from: classes.dex */
public final class m {
    public static String a(String str, int i4, int i5) {
        if (i4 < 0) {
            return p.a("%s (%s) must not be negative", str, Integer.valueOf(i4));
        }
        if (i5 >= 0) {
            return p.a("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i4), Integer.valueOf(i5));
        }
        throw new IllegalArgumentException(C1080K.a("negative size: ", i5));
    }

    public static void b(Object obj, boolean z4) {
        if (!z4) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    public static void c(String str, int i4, boolean z4) {
        if (!z4) {
            throw new IllegalArgumentException(p.a(str, Integer.valueOf(i4)));
        }
    }

    public static void d(String str, Object obj, boolean z4) {
        if (!z4) {
            throw new IllegalArgumentException(p.a(str, obj));
        }
    }

    public static void e(boolean z4, String str, long j4) {
        if (!z4) {
            throw new IllegalArgumentException(p.a(str, Long.valueOf(j4)));
        }
    }

    public static void f(boolean z4, String str, Object obj, Object obj2) {
        if (!z4) {
            throw new IllegalArgumentException(p.a(str, obj, obj2));
        }
    }

    public static void g(int i4, int i5) {
        String a4;
        if (i4 < 0 || i4 >= i5) {
            if (i4 < 0) {
                a4 = p.a("%s (%s) must not be negative", "index", Integer.valueOf(i4));
            } else if (i5 < 0) {
                throw new IllegalArgumentException(C1080K.a("negative size: ", i5));
            } else {
                a4 = p.a("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i4), Integer.valueOf(i5));
            }
            throw new IndexOutOfBoundsException(a4);
        }
    }

    public static void h(Object obj, Object obj2) {
        if (obj == null) {
            throw new NullPointerException(String.valueOf(obj2));
        }
    }

    public static void i(int i4, int i5) {
        if (i4 < 0 || i4 > i5) {
            throw new IndexOutOfBoundsException(a("index", i4, i5));
        }
    }

    public static void j(int i4, int i5, int i6) {
        if (i4 < 0 || i5 < i4 || i5 > i6) {
            throw new IndexOutOfBoundsException((i4 < 0 || i4 > i6) ? a("start index", i4, i6) : (i5 < 0 || i5 > i6) ? a("end index", i5, i6) : p.a("end index (%s) must not be less than start index (%s)", Integer.valueOf(i5), Integer.valueOf(i4)));
        }
    }

    public static void k(Object obj, boolean z4) {
        if (!z4) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }

    public static void l(String str, Object obj, boolean z4) {
        if (!z4) {
            throw new IllegalStateException(p.a(str, obj));
        }
    }

    public static void m(boolean z4) {
        if (!z4) {
            throw new IllegalStateException();
        }
    }

    public static void n(boolean z4, Object obj, Object obj2) {
        if (!z4) {
            throw new IllegalStateException(p.a("%s -> %s", obj, obj2));
        }
    }
}
