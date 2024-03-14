package com.android.launcher3.uioverrides.touchcontrollers;
/* loaded from: classes.dex */
public final /* synthetic */ class f implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5258d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ NoButtonQuickSwitchTouchController f5259e;

    public /* synthetic */ f(NoButtonQuickSwitchTouchController noButtonQuickSwitchTouchController, int i4) {
        this.f5258d = i4;
        this.f5259e = noButtonQuickSwitchTouchController;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5258d) {
            case 0:
            default:
                NoButtonQuickSwitchTouchController.b(this.f5259e);
                return;
        }
    }
}
