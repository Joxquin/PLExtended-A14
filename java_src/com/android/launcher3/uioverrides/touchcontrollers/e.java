package com.android.launcher3.uioverrides.touchcontrollers;

import com.android.launcher3.LauncherState;
import com.android.quickstep.util.AnimatorControllerWithResistance;
/* loaded from: classes.dex */
public final /* synthetic */ class e implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5255d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ NoButtonQuickSwitchTouchController f5256e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Object f5257f;

    public /* synthetic */ e(NoButtonQuickSwitchTouchController noButtonQuickSwitchTouchController, Object obj, int i4) {
        this.f5255d = i4;
        this.f5256e = noButtonQuickSwitchTouchController;
        this.f5257f = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5255d) {
            case 0:
                NoButtonQuickSwitchTouchController.e(this.f5256e, (LauncherState) this.f5257f);
                return;
            default:
                NoButtonQuickSwitchTouchController.a(this.f5256e, (AnimatorControllerWithResistance) this.f5257f);
                return;
        }
    }
}
