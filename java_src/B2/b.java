package b2;

import com.android.launcher3.LauncherState;
import com.android.launcher3.anim.AnimatorPlaybackController;
import com.android.systemui.shared.system.InteractionJankMonitorWrapper;
import com.google.android.apps.nexuslauncher.NexusLauncherActivity;
import com.google.android.apps.nexuslauncher.unlock.LauncherUnlockAnimationController$MyController;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
public final class b implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ LauncherUnlockAnimationController$MyController f4213d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ long f4214e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ long f4215f;

    public b(LauncherUnlockAnimationController$MyController launcherUnlockAnimationController$MyController, long j4, long j5) {
        this.f4213d = launcherUnlockAnimationController$MyController;
        this.f4214e = j4;
        this.f4215f = j5;
    }

    @Override // java.lang.Runnable
    public final void run() {
        WeakReference weakReference;
        weakReference = this.f4213d.parent;
        h hVar = (h) weakReference.get();
        if (hVar != null) {
            long j4 = this.f4214e;
            long j5 = this.f4215f;
            hVar.f4234f.addLog("playUnlockAnimation");
            long j6 = j4 + j5;
            int i4 = (j6 > hVar.f4236h ? 1 : (j6 == hVar.f4236h ? 0 : -1));
            NexusLauncherActivity nexusLauncherActivity = hVar.f4229a;
            if (i4 != 0 || j5 != hVar.f4235g) {
                hVar.f4235g = j5;
                hVar.f4236h = j6;
                if (nexusLauncherActivity.isInState(LauncherState.NORMAL)) {
                    nexusLauncherActivity.getAnimationCoordinator().setAnimation(hVar, new f(1, hVar), hVar.f4236h);
                }
            }
            if (hVar.f4232d) {
                InteractionJankMonitorWrapper.begin(nexusLauncherActivity.getRootView(), 63);
            }
            AnimatorPlaybackController playbackController = nexusLauncherActivity.getAnimationCoordinator().getPlaybackController(hVar);
            if (playbackController != null) {
                playbackController.start();
            }
        }
    }
}
