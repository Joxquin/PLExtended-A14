package com.android.quickstep;

import android.view.RemoteAnimationTarget;
import java.util.HashMap;
/* renamed from: com.android.quickstep.u0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0553u0 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5790d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ RecentsAnimationCallbacks f5791e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Object f5792f;

    public /* synthetic */ RunnableC0553u0(RecentsAnimationCallbacks recentsAnimationCallbacks, Object obj, int i4) {
        this.f5790d = i4;
        this.f5791e = recentsAnimationCallbacks;
        this.f5792f = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5790d) {
            case 0:
                this.f5791e.lambda$onAnimationCanceled$2((HashMap) this.f5792f);
                return;
            case 1:
                this.f5791e.lambda$onAnimationFinished$5((RecentsAnimationController) this.f5792f);
                return;
            case 2:
                this.f5791e.lambda$onTasksAppeared$3((RemoteAnimationTarget[]) this.f5792f);
                return;
            case 3:
                this.f5791e.lambda$onSwitchToScreenshot$4((Runnable) this.f5792f);
                return;
            default:
                this.f5791e.lambda$onAnimationStart$1((RecentsAnimationTargets) this.f5792f);
                return;
        }
    }
}
