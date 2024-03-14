package com.android.quickstep.interaction;
/* loaded from: classes.dex */
public final /* synthetic */ class s implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5693d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ TutorialController f5694e;

    public /* synthetic */ s(TutorialController tutorialController, int i4) {
        this.f5693d = i4;
        this.f5694e = tutorialController;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5693d) {
            case 0:
                TutorialController.b(this.f5694e);
                return;
            case 1:
                TutorialController.f(this.f5694e);
                return;
            case 2:
                TutorialController.g(this.f5694e);
                return;
            case 3:
                TutorialController.i(this.f5694e);
                return;
            case 4:
                TutorialController.d(this.f5694e);
                return;
            default:
                TutorialController.a(this.f5694e);
                return;
        }
    }
}
