package com.android.launcher3;

import android.animation.AnimatorSet;
import android.view.SurfaceControl;
import com.android.launcher3.QuickstepTransitionManager;
import com.android.quickstep.util.TaskRestartedDuringLaunchListener;
/* loaded from: classes.dex */
public final /* synthetic */ class I0 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f4446d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f4447e;

    public /* synthetic */ I0(int i4, Object obj) {
        this.f4446d = i4;
        this.f4447e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4446d) {
            case 0:
                ((QuickstepTransitionManager.LaunchDepthController) this.f4447e).dispose();
                return;
            case 1:
                QuickstepTransitionManager.AnonymousClass14.AnonymousClass1 anonymousClass1 = (QuickstepTransitionManager.AnonymousClass14.AnonymousClass1) this.f4447e;
                anonymousClass1.this$1.this$0.mDragLayer.getViewTreeObserver().removeOnDrawListener(anonymousClass1);
                return;
            case 2:
                ((TaskRestartedDuringLaunchListener) this.f4447e).unregister();
                return;
            case 3:
                new SurfaceControl.Transaction().remove((SurfaceControl) this.f4447e).apply();
                return;
            default:
                ((AnimatorSet) this.f4447e).end();
                return;
        }
    }
}
