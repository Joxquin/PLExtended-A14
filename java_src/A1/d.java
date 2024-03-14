package a1;

import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.taskbar.overlay.TaskbarOverlayContext;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final /* synthetic */ class d implements Consumer {
    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        TaskbarOverlayContext taskbarOverlayContext = (TaskbarOverlayContext) obj;
        AbstractFloatingView.closeAllOpenViewsExcept(taskbarOverlayContext, false, AbstractFloatingView.TYPE_REBIND_SAFE);
        taskbarOverlayContext.dispatchDeviceProfileChanged();
    }
}
