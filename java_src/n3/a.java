package n3;
/* loaded from: classes.dex */
public class a {
    public static final int a(float f4) {
        if (Float.isNaN(f4)) {
            throw new IllegalArgumentException("Cannot round NaN value.");
        }
        return Math.round(f4);
    }
}
