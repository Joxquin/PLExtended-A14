package L0;

import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import java.util.function.Function;
/* loaded from: classes.dex */
public final /* synthetic */ class e implements Function {
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return (WorkspaceItemInfo) ((ItemInfo) obj);
    }
}
