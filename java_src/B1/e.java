package b1;

import android.view.KeyEvent;
import com.android.launcher3.Workspace;
import com.android.launcher3.uioverrides.QuickstepLauncher;
import com.android.systemui.shared.system.ActivityManagerWrapper;
/* loaded from: classes.dex */
public final /* synthetic */ class e implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f4188d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ KeyEvent.Callback f4189e;

    public /* synthetic */ e(KeyEvent.Callback callback, int i4) {
        this.f4188d = i4;
        this.f4189e = callback;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4188d) {
            case 0:
                ((QuickstepLauncher) this.f4189e).mHotseatPredictionController.setPauseUIUpdate(false);
                return;
            case 1:
                QuickstepLauncher quickstepLauncher = (QuickstepLauncher) this.f4189e;
                quickstepLauncher.getClass();
                ActivityManagerWrapper.getInstance().invalidateHomeTaskSnapshot(quickstepLauncher);
                return;
            case 2:
                QuickstepLauncher.p((QuickstepLauncher) this.f4189e);
                return;
            default:
                ((Workspace) this.f4189e).moveToDefaultScreen();
                return;
        }
    }
}
