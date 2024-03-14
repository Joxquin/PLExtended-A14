package com.android.launcher3.model;

import com.android.launcher3.LauncherModel;
import com.android.launcher3.model.BgDataModel;
/* renamed from: com.android.launcher3.model.k  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0373k implements LauncherModel.CallbackTask {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f4830a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ BaseLauncherBinder$DisjointWorkspaceBinder f4831b;

    public /* synthetic */ C0373k(BaseLauncherBinder$DisjointWorkspaceBinder baseLauncherBinder$DisjointWorkspaceBinder, int i4) {
        this.f4830a = i4;
        this.f4831b = baseLauncherBinder$DisjointWorkspaceBinder;
    }

    @Override // com.android.launcher3.LauncherModel.CallbackTask
    public final void execute(BgDataModel.Callbacks callbacks) {
        int i4 = this.f4830a;
        BaseLauncherBinder$DisjointWorkspaceBinder baseLauncherBinder$DisjointWorkspaceBinder = this.f4831b;
        switch (i4) {
            case 0:
                BaseLauncherBinder$DisjointWorkspaceBinder.a(baseLauncherBinder$DisjointWorkspaceBinder, callbacks);
                return;
            default:
                BaseLauncherBinder$DisjointWorkspaceBinder.g(baseLauncherBinder$DisjointWorkspaceBinder, callbacks);
                return;
        }
    }
}
