package com.android.quickstep;

import android.app.ActivityManager;
import com.android.quickstep.RecentTasksList;
/* renamed from: com.android.quickstep.p0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0539p0 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5762d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ RecentTasksList.AnonymousClass1 f5763e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ ActivityManager.RunningTaskInfo f5764f;

    public /* synthetic */ RunnableC0539p0(RecentTasksList.AnonymousClass1 anonymousClass1, ActivityManager.RunningTaskInfo runningTaskInfo, int i4) {
        this.f5762d = i4;
        this.f5763e = anonymousClass1;
        this.f5764f = runningTaskInfo;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5762d) {
            case 0:
                this.f5763e.lambda$onRunningTaskAppeared$0(this.f5764f);
                return;
            default:
                this.f5763e.lambda$onRunningTaskVanished$1(this.f5764f);
                return;
        }
    }
}
