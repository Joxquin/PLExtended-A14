package i1;

import com.android.launcher3.widget.model.WidgetsListBaseEntry;
import com.android.launcher3.widget.model.WidgetsListHeaderEntry;
import java.util.function.Predicate;
/* renamed from: i1.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0979a implements Predicate {
    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        return ((WidgetsListBaseEntry) obj) instanceof WidgetsListHeaderEntry;
    }
}
