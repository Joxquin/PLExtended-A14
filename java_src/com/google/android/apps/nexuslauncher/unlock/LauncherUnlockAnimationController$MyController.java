package com.google.android.apps.nexuslauncher.unlock;

import android.graphics.Rect;
import b2.RunnableC0316a;
import b2.b;
import b2.c;
import b2.d;
import b2.e;
import com.android.launcher3.util.Executors;
import com.android.systemui.shared.system.smartspace.ILauncherUnlockAnimationController;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public final class LauncherUnlockAnimationController$MyController extends ILauncherUnlockAnimationController.Stub {
    private final WeakReference parent;

    public LauncherUnlockAnimationController$MyController(WeakReference weakReference) {
        this.parent = weakReference;
    }

    @Override // com.android.systemui.shared.system.smartspace.ILauncherUnlockAnimationController
    public final void dispatchSmartspaceStateToSysui() {
        Executors.MAIN_EXECUTOR.execute(new RunnableC0316a(this));
    }

    @Override // com.android.systemui.shared.system.smartspace.ILauncherUnlockAnimationController
    public final void playUnlockAnimation(boolean z4, long j4, long j5) {
        Executors.MAIN_EXECUTOR.execute(new b(this, j4, j5));
    }

    @Override // com.android.systemui.shared.system.smartspace.ILauncherUnlockAnimationController
    public final void prepareForUnlock(boolean z4, Rect lockscreenSmartspaceBounds, int i4) {
        h.e(lockscreenSmartspaceBounds, "lockscreenSmartspaceBounds");
        Executors.MAIN_EXECUTOR.execute(new c(this, z4, lockscreenSmartspaceBounds, i4));
    }

    @Override // com.android.systemui.shared.system.smartspace.ILauncherUnlockAnimationController
    public final void setSmartspaceSelectedPage(int i4) {
        Executors.MAIN_EXECUTOR.execute(new d(this, i4, 0));
    }

    @Override // com.android.systemui.shared.system.smartspace.ILauncherUnlockAnimationController
    public final void setSmartspaceVisibility(int i4) {
        Executors.MAIN_EXECUTOR.execute(new d(this, i4, 1));
    }

    @Override // com.android.systemui.shared.system.smartspace.ILauncherUnlockAnimationController
    public final void setUnlockAmount(float f4, boolean z4) {
        Executors.MAIN_EXECUTOR.execute(new e(this, f4, z4));
    }
}
