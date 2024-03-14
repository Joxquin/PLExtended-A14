package b2;

import com.android.quickstep.SystemUiProxy;
import com.google.android.apps.nexuslauncher.unlock.LauncherUnlockAnimationController$MyController;
import java.lang.ref.WeakReference;
/* renamed from: b2.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC0316a implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ LauncherUnlockAnimationController$MyController f4212d;

    public RunnableC0316a(LauncherUnlockAnimationController$MyController launcherUnlockAnimationController$MyController) {
        this.f4212d = launcherUnlockAnimationController$MyController;
    }

    @Override // java.lang.Runnable
    public final void run() {
        WeakReference weakReference;
        weakReference = this.f4212d.parent;
        h hVar = (h) weakReference.get();
        if (hVar != null) {
            ((SystemUiProxy) SystemUiProxy.INSTANCE.get(hVar.f4229a)).notifySysuiSmartspaceStateUpdated(hVar.f4231c);
        }
    }
}
