package J0;

import com.android.launcher3.DropTarget;
import java.util.function.Function;
/* loaded from: classes.dex */
public final /* synthetic */ class b implements Function {
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return ((DropTarget.DragObject) obj).logInstanceId;
    }
}
