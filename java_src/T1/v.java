package T1;

import com.android.launcher3.LauncherAppState;
import com.android.launcher3.model.AllAppsList;
import com.android.launcher3.model.BaseModelUpdateTask;
import com.android.launcher3.model.BgDataModel;
/* loaded from: classes.dex */
public final class v extends BaseModelUpdateTask {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ BgDataModel.FixedContainerItems f1719d;

    public v(BgDataModel.FixedContainerItems fixedContainerItems) {
        this.f1719d = fixedContainerItems;
    }

    @Override // com.android.launcher3.model.BaseModelUpdateTask
    public final void execute(LauncherAppState launcherAppState, BgDataModel bgDataModel, AllAppsList allAppsList) {
        bgDataModel.extraItems.put(-203, this.f1719d);
        bindExtraContainerItems(this.f1719d);
    }
}
