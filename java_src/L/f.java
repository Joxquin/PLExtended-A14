package L;
/* loaded from: classes.dex */
public final class f {
    public static void a(int i4) {
        if (i4 < 0) {
            throw new IllegalArgumentException();
        }
    }

    public static void b(Object obj, Object obj2) {
        if (obj == null) {
            throw new NullPointerException(String.valueOf(obj2));
        }
    }
}
