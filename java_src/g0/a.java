package G0;

import com.android.launcher3.appprediction.PredictionRowView;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import java.util.function.Predicate;
/* loaded from: classes.dex */
public final /* synthetic */ class a implements Predicate {
    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        int i4 = PredictionRowView.f4570d;
        return ((ItemInfo) obj) instanceof WorkspaceItemInfo;
    }
}
