package kotlin.collections;
/* loaded from: classes.dex */
public class k {
    public static final void a(int i4, int i5) {
        if (i4 <= i5) {
            return;
        }
        throw new IndexOutOfBoundsException("toIndex (" + i4 + ") is greater than size (" + i5 + ").");
    }
}
