package K2;

import java.util.Objects;
/* loaded from: classes.dex */
public final class P {
    public static int a(String str) {
        return Math.abs(Math.floorMod(Objects.hashCode(str), 8192));
    }
}
