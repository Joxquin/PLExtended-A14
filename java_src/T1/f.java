package T1;

import com.android.launcher3.LauncherAppState;
import com.android.launcher3.model.AllAppsList;
import com.android.launcher3.model.BaseModelUpdateTask;
import com.android.launcher3.model.BgDataModel;
import java.util.List;
/* loaded from: classes.dex */
public final class f extends BaseModelUpdateTask {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ List f1699d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ g f1700e;

    public f(g gVar, List list) {
        this.f1700e = gVar;
        this.f1699d = list;
    }

    @Override // com.android.launcher3.model.BaseModelUpdateTask
    public final void execute(LauncherAppState launcherAppState, BgDataModel bgDataModel, AllAppsList allAppsList) {
        this.f1700e.e(this.f1699d);
        BgDataModel.FixedContainerItems fixedContainerItems = new BgDataModel.FixedContainerItems(this.f1700e.f1702b, this.f1699d);
        bgDataModel.extraItems.put(this.f1700e.f1702b, fixedContainerItems);
        bindExtraContainerItems(fixedContainerItems);
    }
}
