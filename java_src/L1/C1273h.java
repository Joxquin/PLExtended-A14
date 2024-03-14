package l1;

import java.util.Comparator;
import java.util.Map;
/* renamed from: l1.h  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1273h implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        Double d4 = (Double) ((Map.Entry) obj2).getValue();
        Double d5 = (Double) ((Map.Entry) obj).getValue();
        if (d4 == d5) {
            return 0;
        }
        if (d4 == null) {
            return -1;
        }
        if (d5 == null) {
            return 1;
        }
        return d4.compareTo(d5);
    }
}
