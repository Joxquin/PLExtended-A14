package T1;

import android.app.smartspace.SmartspaceTarget;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.model.AllAppsList;
import com.android.launcher3.model.BaseModelUpdateTask;
import com.android.launcher3.model.BgDataModel;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class m extends BaseModelUpdateTask {

    /* renamed from: d  reason: collision with root package name */
    public final List f1711d;

    public m(List list) {
        this.f1711d = list;
    }

    @Override // com.android.launcher3.model.BaseModelUpdateTask
    public final void execute(LauncherAppState launcherAppState, BgDataModel bgDataModel, AllAppsList allAppsList) {
        ArrayList arrayList = new ArrayList();
        for (SmartspaceTarget smartspaceTarget : this.f1711d) {
            l lVar = new l();
            lVar.f1710d = smartspaceTarget;
            lVar.container = -201;
            lVar.itemType = 8;
            arrayList.add(lVar);
        }
        bindExtraContainerItems(new BgDataModel.FixedContainerItems(-201, arrayList));
    }
}
