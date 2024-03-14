package com.android.quickstep.interaction;

import com.android.quickstep.interaction.OverviewGestureTutorialController;
/* loaded from: classes.dex */
public final /* synthetic */ class o implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5687d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f5688e;

    public /* synthetic */ o(int i4, Object obj) {
        this.f5687d = i4;
        this.f5688e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5687d) {
            case 0:
                OverviewGestureTutorialController.AnonymousClass1.a((OverviewGestureTutorialController.AnonymousClass1) this.f5688e);
                return;
            case 1:
                OverviewGestureTutorialController.AnonymousClass1.b((OverviewGestureTutorialController.AnonymousClass1) this.f5688e);
                return;
            default:
                OverviewGestureTutorialController.r((OverviewGestureTutorialController) this.f5688e);
                return;
        }
    }
}
