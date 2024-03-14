package com.android.launcher3.touch;

import com.android.launcher3.LauncherState;
/* loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5192d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ AbstractStateChangeTouchController f5193e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ LauncherState f5194f;

    public /* synthetic */ a(AbstractStateChangeTouchController abstractStateChangeTouchController, LauncherState launcherState, int i4) {
        this.f5192d = i4;
        this.f5193e = abstractStateChangeTouchController;
        this.f5194f = launcherState;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5192d) {
            case 0:
                AbstractStateChangeTouchController.a(this.f5193e, this.f5194f);
                return;
            default:
                AbstractStateChangeTouchController.b(this.f5193e, this.f5194f);
                return;
        }
    }
}
