package com.android.systemui.shared.rotation;
/* loaded from: classes.dex */
public final /* synthetic */ class c implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f6234d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ RotationButtonController f6235e;

    public /* synthetic */ c(RotationButtonController rotationButtonController, int i4) {
        this.f6234d = i4;
        this.f6235e = rotationButtonController;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f6234d) {
            case 0:
                RotationButtonController.e(this.f6235e);
                return;
            case 1:
                RotationButtonController.g(this.f6235e);
                return;
            case 2:
                RotationButtonController.b(this.f6235e);
                return;
            default:
                RotationButtonController.c(this.f6235e);
                return;
        }
    }
}
