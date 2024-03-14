package T1;

import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.taskbar.TaskbarModelCallbacks;
/* loaded from: classes.dex */
public final class k extends TaskbarModelCallbacks {
    @Override // com.android.launcher3.taskbar.TaskbarModelCallbacks, com.android.launcher3.model.BgDataModel.Callbacks
    public final void bindExtraContainerItems(BgDataModel.FixedContainerItems item) {
        kotlin.jvm.internal.h.e(item, "item");
        super.bindExtraContainerItems(item);
        if (item.containerId == -203) {
            this.mControllers.taskbarAllAppsController.setZeroStateSearchSuggestions(item.items);
        }
    }
}
