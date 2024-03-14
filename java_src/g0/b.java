package G0;

import com.android.launcher3.appprediction.PredictionRowView;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import java.util.function.Function;
/* loaded from: classes.dex */
public final /* synthetic */ class b implements Function {
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        int i4 = PredictionRowView.f4570d;
        return (WorkspaceItemInfo) ((ItemInfo) obj);
    }
}
