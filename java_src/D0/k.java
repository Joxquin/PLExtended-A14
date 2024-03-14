package D0;

import com.android.launcher3.allapps.BaseAllAppsAdapter;
import java.util.function.Predicate;
/* loaded from: classes.dex */
public final /* synthetic */ class k implements Predicate {
    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        return ((BaseAllAppsAdapter.AdapterItem) obj).isCountedForAccessibility();
    }
}
