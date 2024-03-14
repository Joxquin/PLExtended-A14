package com.android.launcher3.uioverrides.touchcontrollers;
/* loaded from: classes.dex */
public final /* synthetic */ class b implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5250d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ NavBarToHomeTouchController f5251e;

    public /* synthetic */ b(NavBarToHomeTouchController navBarToHomeTouchController, int i4) {
        this.f5250d = i4;
        this.f5251e = navBarToHomeTouchController;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5250d) {
            case 0:
                NavBarToHomeTouchController.b(this.f5251e);
                return;
            case 1:
                NavBarToHomeTouchController.c(this.f5251e);
                return;
            case 2:
                NavBarToHomeTouchController.d(this.f5251e);
                return;
            default:
                NavBarToHomeTouchController.a(this.f5251e);
                return;
        }
    }
}
