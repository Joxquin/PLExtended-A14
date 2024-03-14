package com.android.launcher3;
/* loaded from: classes.dex */
public final /* synthetic */ class W implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f4506d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Launcher f4507e;

    public /* synthetic */ W(Launcher launcher, int i4) {
        this.f4506d = i4;
        this.f4507e = launcher;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4506d) {
            case 0:
                this.f4507e.checkIfOverlayStillDeferred();
                return;
            case 1:
                this.f4507e.mStateManager.goToState$1(LauncherState.NORMAL);
                return;
            case 2:
                this.f4507e.getStateManager().goToState(LauncherState.NORMAL);
                return;
            case 3:
                this.f4507e.mStateManager.goToState$1(LauncherState.NORMAL);
                return;
            default:
                this.f4507e.mAppsView.getAppsStore().disableDeferUpdates(1);
                return;
        }
    }
}
