package com.android.quickstep.util;

import com.android.quickstep.RecentsAnimationCallbacks;
import com.android.quickstep.util.SplitSelectStateController;
/* loaded from: classes.dex */
public final /* synthetic */ class J implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5813d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f5814e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Object f5815f;

    public /* synthetic */ J(int i4, Object obj, Object obj2) {
        this.f5813d = i4;
        this.f5815f = obj;
        this.f5814e = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5813d) {
            case 0:
                ((SplitSelectStateController.RemoteSplitLaunchAnimationRunner) this.f5815f).lambda$onAnimationStart$0((Runnable) this.f5814e);
                return;
            case 1:
                ((SplitSelectStateController.RemoteSplitLaunchTransitionRunner) this.f5815f).lambda$startAnimation$1((Runnable) this.f5814e);
                return;
            default:
                ((SplitSelectStateController.SplitFromDesktopController) this.f5815f).lambda$enterSplitSelect$0((RecentsAnimationCallbacks) this.f5814e);
                return;
        }
    }
}
