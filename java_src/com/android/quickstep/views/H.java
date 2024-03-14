package com.android.quickstep.views;

import com.android.launcher3.util.RunnableList;
import com.android.quickstep.views.RecentsView;
import com.android.systemui.shared.system.ActivityManagerWrapper;
/* loaded from: classes.dex */
public final /* synthetic */ class H implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5924d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f5925e;

    public /* synthetic */ H(int i4, Object obj) {
        this.f5924d = i4;
        this.f5925e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5924d) {
            case 0:
                ((RecentsView.AnonymousClass19) this.f5925e).lambda$onAnimationStart$0();
                return;
            case 1:
                RecentsView.lambda$removeTaskInternal$26((int[]) this.f5925e);
                return;
            case 2:
                ((RunnableList) this.f5925e).executeAllAndDestroy();
                return;
            default:
                ((ActivityManagerWrapper) this.f5925e).removeAllRecentTasks();
                return;
        }
    }
}
