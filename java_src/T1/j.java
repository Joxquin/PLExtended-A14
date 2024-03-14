package T1;

import android.app.smartspace.SmartspaceSession;
import android.app.smartspace.SmartspaceTargetEvent;
import android.util.Log;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.model.AllAppsList;
import com.android.launcher3.model.BaseModelUpdateTask;
import com.android.launcher3.model.BgDataModel;
import com.google.android.apps.nexuslauncher.model.NexusLauncherModelDelegate;
/* loaded from: classes.dex */
public final class j extends BaseModelUpdateTask {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ SmartspaceTargetEvent f1708d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ NexusLauncherModelDelegate f1709e;

    public j(NexusLauncherModelDelegate nexusLauncherModelDelegate, SmartspaceTargetEvent smartspaceTargetEvent) {
        this.f1709e = nexusLauncherModelDelegate;
        this.f1708d = smartspaceTargetEvent;
    }

    @Override // com.android.launcher3.model.BaseModelUpdateTask
    public final void execute(LauncherAppState launcherAppState, BgDataModel bgDataModel, AllAppsList allAppsList) {
        SmartspaceSession smartspaceSession = this.f1709e.f7482i;
        if (smartspaceSession != null) {
            smartspaceSession.notifySmartspaceEvent(this.f1708d);
            return;
        }
        Log.e("NexusLauncherModelDelegate", "Smartspace session null. Cannot notify smartspace event: " + this.f1708d);
    }
}
