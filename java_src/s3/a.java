package s3;
/* loaded from: classes.dex */
public class a {
    public static final boolean a(char c4, char c5, boolean z4) {
        if (c4 == c5) {
            return true;
        }
        if (z4) {
            char upperCase = Character.toUpperCase(c4);
            char upperCase2 = Character.toUpperCase(c5);
            return upperCase == upperCase2 || Character.toLowerCase(upperCase) == Character.toLowerCase(upperCase2);
        }
        return false;
    }
}
