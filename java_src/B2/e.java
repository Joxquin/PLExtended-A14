package b2;

import android.animation.ValueAnimator;
import android.util.Log;
import com.android.launcher3.anim.AnimatorPlaybackController;
import com.google.android.apps.nexuslauncher.NexusLauncherActivity;
import com.google.android.apps.nexuslauncher.unlock.LauncherUnlockAnimationController$MyController;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
public final class e implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ LauncherUnlockAnimationController$MyController f4223d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ float f4224e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ boolean f4225f;

    public e(LauncherUnlockAnimationController$MyController launcherUnlockAnimationController$MyController, float f4, boolean z4) {
        this.f4223d = launcherUnlockAnimationController$MyController;
        this.f4224e = f4;
        this.f4225f = z4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        WeakReference weakReference;
        AnimatorPlaybackController playbackController;
        ValueAnimator animationPlayer;
        weakReference = this.f4223d.parent;
        h hVar = (h) weakReference.get();
        if (hVar != null) {
            float f4 = this.f4224e;
            boolean z4 = this.f4225f;
            boolean z5 = false;
            if (!(f4 == 1.0f)) {
                Log.e("LauncherUnlock", "setUnlockAmount called with unsupported value " + f4);
                return;
            }
            hVar.f4234f.addLog("setUnlockAmount", z4);
            NexusLauncherActivity nexusLauncherActivity = hVar.f4229a;
            AnimatorPlaybackController playbackController2 = nexusLauncherActivity.getAnimationCoordinator().getPlaybackController(hVar);
            if (playbackController2 != null && (animationPlayer = playbackController2.getAnimationPlayer()) != null) {
                z5 = animationPlayer.isRunning();
            }
            if ((!z5 || z4) && (playbackController = nexusLauncherActivity.getAnimationCoordinator().getPlaybackController(hVar)) != null) {
                playbackController.pause();
                playbackController.setPlayFraction(1.0f);
                playbackController.dispatchOnEnd();
            }
        }
    }
}
