package com.android.quickstep;

import com.android.launcher3.statemanager.StateManager;
import com.android.quickstep.TaskViewUtils;
/* loaded from: classes.dex */
public final /* synthetic */ class E1 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5455d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ StateManager f5456e;

    public /* synthetic */ E1(StateManager stateManager, int i4) {
        this.f5455d = i4;
        this.f5456e = stateManager;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5455d) {
            case 0:
                TaskViewUtils.AnonymousClass10.lambda$onAnimationEnd$0(this.f5456e);
                return;
            default:
                TaskViewUtils.AnonymousClass9.lambda$onAnimationEnd$0(this.f5456e);
                return;
        }
    }
}
