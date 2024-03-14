package com.android.quickstep;

import com.android.quickstep.LauncherBackAnimationController;
/* loaded from: classes.dex */
public final /* synthetic */ class Q implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5511d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f5512e;

    public /* synthetic */ Q(int i4, Object obj) {
        this.f5511d = i4;
        this.f5512e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5511d) {
            case 0:
                ((LauncherBackAnimationController.AnonymousClass1) this.f5512e).lambda$onBackCancelled$0();
                return;
            case 1:
                ((LauncherBackAnimationController.AnonymousClass1) this.f5512e).lambda$onBackInvoked$1();
                return;
            default:
                int i4 = LauncherBackAnimationController.AnonymousClass1.f5491d;
                ((LauncherBackAnimationController) this.f5512e).resetPositionAnimated();
                return;
        }
    }
}
