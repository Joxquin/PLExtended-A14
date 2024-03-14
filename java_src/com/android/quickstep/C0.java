package com.android.quickstep;
/* loaded from: classes.dex */
public final /* synthetic */ class C0 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5439d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ RecentsAnimationController f5440e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ boolean f5441f;

    public /* synthetic */ C0(RecentsAnimationController recentsAnimationController, boolean z4, int i4) {
        this.f5439d = i4;
        this.f5440e = recentsAnimationController;
        this.f5441f = z4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5439d) {
            case 0:
                RecentsAnimationController.d(this.f5440e, this.f5441f);
                return;
            case 1:
                RecentsAnimationController.c(this.f5440e, this.f5441f);
                return;
            default:
                RecentsAnimationController.g(this.f5440e, this.f5441f);
                return;
        }
    }
}
