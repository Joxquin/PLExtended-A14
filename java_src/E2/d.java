package e2;

import com.android.launcher3.widget.model.WidgetsListBaseEntry;
import com.android.launcher3.widget.model.WidgetsListHeaderEntry;
import java.util.function.Predicate;
/* loaded from: classes.dex */
public final /* synthetic */ class d implements Predicate {
    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        return ((WidgetsListBaseEntry) obj) instanceof WidgetsListHeaderEntry;
    }
}
