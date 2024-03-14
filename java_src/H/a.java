package H;
/* loaded from: classes.dex */
public final class a {
    public static float a(float f4) {
        if (f4 < 0.0f) {
            return 0.0f;
        }
        if (f4 > 1.0f) {
            return 1.0f;
        }
        return f4;
    }

    public static int b(int i4, int i5, int i6) {
        return i4 < i5 ? i5 : i4 > i6 ? i6 : i4;
    }
}
