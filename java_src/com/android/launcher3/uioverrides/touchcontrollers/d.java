package com.android.launcher3.uioverrides.touchcontrollers;

import com.android.launcher3.LauncherState;
/* loaded from: classes.dex */
public final /* synthetic */ class d implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5253d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ NoButtonNavbarToOverviewTouchController f5254e;

    public /* synthetic */ d(NoButtonNavbarToOverviewTouchController noButtonNavbarToOverviewTouchController, int i4) {
        this.f5253d = i4;
        this.f5254e = noButtonNavbarToOverviewTouchController;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5253d) {
            case 0:
                NoButtonNavbarToOverviewTouchController noButtonNavbarToOverviewTouchController = this.f5254e;
                noButtonNavbarToOverviewTouchController.getClass();
                noButtonNavbarToOverviewTouchController.onSwipeInteractionCompleted(LauncherState.NORMAL);
                return;
            case 1:
                NoButtonNavbarToOverviewTouchController.f(this.f5254e);
                return;
            case 2:
                NoButtonNavbarToOverviewTouchController.e(this.f5254e);
                return;
            default:
                NoButtonNavbarToOverviewTouchController.c(this.f5254e);
                return;
        }
    }
}
