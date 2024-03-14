package l1;

import java.util.List;
import kotlin.Pair;
/* renamed from: l1.k  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1276k {
    public static double a(float f4, List hueAndRotations) {
        kotlin.jvm.internal.h.e(hueAndRotations, "hueAndRotations");
        int i4 = 0;
        float floatValue = ((f4 < 0.0f || f4 >= 360.0f) ? 0 : Float.valueOf(f4)).floatValue();
        int size = hueAndRotations.size() - 2;
        if (size >= 0) {
            while (true) {
                int i5 = i4 + 1;
                float intValue = ((Number) ((Pair) hueAndRotations.get(i5)).c()).intValue();
                if (((Number) ((Pair) hueAndRotations.get(i4)).c()).intValue() <= floatValue && floatValue < intValue) {
                    double doubleValue = ((Number) ((Pair) hueAndRotations.get(i4)).d()).doubleValue() + floatValue;
                    if (doubleValue >= 0.0d) {
                        return doubleValue >= 360.0d ? doubleValue % 360 : doubleValue;
                    }
                    double d4 = 360;
                    return (doubleValue % d4) + d4;
                } else if (i4 == size) {
                    break;
                } else {
                    i4 = i5;
                }
            }
        }
        return f4;
    }
}
