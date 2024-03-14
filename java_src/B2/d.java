package b2;

import com.google.android.apps.nexuslauncher.unlock.LauncherUnlockAnimationController$MyController;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
public final class d implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f4220d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ LauncherUnlockAnimationController$MyController f4221e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ int f4222f;

    public /* synthetic */ d(LauncherUnlockAnimationController$MyController launcherUnlockAnimationController$MyController, int i4, int i5) {
        this.f4220d = i5;
        this.f4221e = launcherUnlockAnimationController$MyController;
        this.f4222f = i4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        WeakReference weakReference;
        WeakReference weakReference2;
        switch (this.f4220d) {
            case 0:
                weakReference2 = this.f4221e.parent;
                h hVar = (h) weakReference2.get();
                if (hVar != null) {
                    hVar.f4230b.g(this.f4222f);
                    return;
                }
                return;
            default:
                weakReference = this.f4221e.parent;
                h hVar2 = (h) weakReference.get();
                if (hVar2 != null) {
                    hVar2.f4230b.setVisibility(this.f4222f);
                    hVar2.f4229a.onUiChangedWhileSleeping();
                    return;
                }
                return;
        }
    }
}
