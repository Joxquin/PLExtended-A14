package com.android.launcher3.model;

import com.android.launcher3.LauncherModel;
/* renamed from: com.android.launcher3.model.w  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0396w implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f4890d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ LauncherModel.CallbackTask f4891e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Object f4892f;

    public /* synthetic */ RunnableC0396w(Object obj, LauncherModel.CallbackTask callbackTask, int i4) {
        this.f4890d = i4;
        this.f4892f = obj;
        this.f4891e = callbackTask;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4890d) {
            case 0:
                BaseLauncherBinder$UnifiedWorkspaceBinder.a((BaseLauncherBinder$UnifiedWorkspaceBinder) this.f4892f, this.f4891e);
                return;
            default:
                LauncherBinder.a((LauncherBinder) this.f4892f, this.f4891e);
                return;
        }
    }
}
