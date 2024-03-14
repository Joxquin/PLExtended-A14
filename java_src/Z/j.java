package z;

import android.view.View;
import androidx.core.view.D;
import androidx.core.view.J;
import java.util.Comparator;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public final class j implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        WeakHashMap weakHashMap = J.f3079a;
        float g4 = D.g((View) obj);
        float g5 = D.g((View) obj2);
        if (g4 > g5) {
            return -1;
        }
        return g4 < g5 ? 1 : 0;
    }
}
