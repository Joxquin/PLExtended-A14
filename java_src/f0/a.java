package F0;

import com.android.launcher3.apppairs.AppPairIcon;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import java.util.function.ToIntFunction;
/* loaded from: classes.dex */
public final /* synthetic */ class a implements ToIntFunction {
    @Override // java.util.function.ToIntFunction
    public final int applyAsInt(Object obj) {
        int i4 = AppPairIcon.f4569d;
        return ((WorkspaceItemInfo) obj).rank;
    }
}
