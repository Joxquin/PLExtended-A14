package com.android.launcher3.model;

import com.android.launcher3.util.Executors;
/* renamed from: com.android.launcher3.model.l  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0375l implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f4834d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f4835e;

    public /* synthetic */ RunnableC0375l(int i4, Object obj) {
        this.f4834d = i4;
        this.f4835e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4834d) {
            case 0:
                BaseLauncherBinder$DisjointWorkspaceBinder baseLauncherBinder$DisjointWorkspaceBinder = (BaseLauncherBinder$DisjointWorkspaceBinder) this.f4835e;
                baseLauncherBinder$DisjointWorkspaceBinder.getClass();
                Executors.MODEL_EXECUTOR.setThreadPriority(0);
                ((ItemInstallQueue) ItemInstallQueue.INSTANCE.get(baseLauncherBinder$DisjointWorkspaceBinder.this$0.mApp.getContext())).resumeModelPush(2);
                return;
            default:
                BaseLauncherBinder$UnifiedWorkspaceBinder.c((BaseLauncherBinder$UnifiedWorkspaceBinder) this.f4835e);
                return;
        }
    }
}
