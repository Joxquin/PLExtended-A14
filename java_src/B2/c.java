package b2;

import android.graphics.Rect;
import com.android.launcher3.LauncherState;
import com.google.android.apps.nexuslauncher.NexusLauncherActivity;
import com.google.android.apps.nexuslauncher.unlock.LauncherUnlockAnimationController$MyController;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
public final class c implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ LauncherUnlockAnimationController$MyController f4216d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ boolean f4217e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Rect f4218f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ int f4219g;

    public c(LauncherUnlockAnimationController$MyController launcherUnlockAnimationController$MyController, boolean z4, Rect rect, int i4) {
        this.f4216d = launcherUnlockAnimationController$MyController;
        this.f4217e = z4;
        this.f4218f = rect;
        this.f4219g = i4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        WeakReference weakReference;
        weakReference = this.f4216d.parent;
        h hVar = (h) weakReference.get();
        if (hVar != null) {
            boolean z4 = this.f4217e;
            Rect rect = this.f4218f;
            int i4 = this.f4219g;
            hVar.f4232d = z4;
            hVar.f4233e.set(rect);
            hVar.f4234f.addLog();
            if (hVar.f4232d && i4 >= 0) {
                hVar.f4230b.g(i4);
            }
            LauncherState launcherState = LauncherState.NORMAL;
            NexusLauncherActivity nexusLauncherActivity = hVar.f4229a;
            if (nexusLauncherActivity.isInState(launcherState)) {
                nexusLauncherActivity.getAnimationCoordinator().setAnimation(hVar, new f(1, hVar), hVar.f4236h);
            }
        }
    }
}
