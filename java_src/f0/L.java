package f0;

import d0.InterfaceC0793a;
import java.util.Comparator;
/* loaded from: classes.dex */
public final class L implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int a4 = ((InterfaceC0793a) obj).a();
        int a5 = ((InterfaceC0793a) obj2).a();
        if (a4 >= 0 || a5 >= 0) {
            if (a4 >= 0) {
                if (a5 >= 0) {
                    if (a5 >= a4) {
                        if (a5 <= a4) {
                            return 0;
                        }
                    }
                }
                return -1;
            }
            return 1;
        }
        return 0;
    }
}
