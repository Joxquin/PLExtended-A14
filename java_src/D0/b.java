package D0;

import android.util.FloatProperty;
import com.android.launcher3.allapps.ActivityAllAppsContainerView;
import com.android.launcher3.model.data.ItemInfo;
import java.util.function.Predicate;
/* loaded from: classes.dex */
public final /* synthetic */ class b implements Predicate {
    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        ItemInfo itemInfo = (ItemInfo) obj;
        FloatProperty floatProperty = ActivityAllAppsContainerView.BOTTOM_SHEET_ALPHA;
        return false;
    }
}
