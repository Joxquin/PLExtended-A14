package com.android.launcher3;

import android.os.UserHandle;
import com.android.launcher3.folder.Folder;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.util.PackageUserKey;
import java.util.function.Consumer;
import java.util.function.Predicate;
/* loaded from: classes.dex */
public final /* synthetic */ class G implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f4440a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Launcher f4441b;

    public /* synthetic */ G(Launcher launcher, int i4) {
        this.f4440a = i4;
        this.f4441b = launcher;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f4440a) {
            case 0:
                Launcher launcher = this.f4441b;
                int pageIndexForScreenId = launcher.mWorkspace.getPageIndexForScreenId(((Integer) obj).intValue());
                if (pageIndexForScreenId != -1) {
                    launcher.mWorkspace.restoreInstanceStateForChild(pageIndexForScreenId);
                    return;
                }
                return;
            default:
                Launcher launcher2 = this.f4441b;
                final Predicate predicate = (Predicate) obj;
                Workspace workspace = launcher2.mWorkspace;
                workspace.getClass();
                final PackageUserKey packageUserKey = new PackageUserKey((String) null, (UserHandle) null);
                X0 x02 = new X0(1, workspace, new Predicate() { // from class: com.android.launcher3.T0
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj2) {
                        PackageUserKey packageUserKey2 = PackageUserKey.this;
                        Predicate predicate2 = predicate;
                        int i4 = Workspace.f4511d;
                        return !packageUserKey2.updateFromItemInfo((ItemInfo) obj2) || predicate2.test(packageUserKey2);
                    }
                });
                workspace.mapOverItems(x02);
                Folder open = Folder.getOpen(workspace.mLauncher);
                if (open != null) {
                    open.iterateOverItems(x02);
                }
                launcher2.mAppsView.getAppsStore().updateNotificationDots(predicate);
                return;
        }
    }
}
