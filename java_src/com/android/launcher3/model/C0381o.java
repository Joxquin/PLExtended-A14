package com.android.launcher3.model;

import com.android.launcher3.LauncherModel;
import com.android.launcher3.model.BgDataModel;
/* renamed from: com.android.launcher3.model.o  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0381o implements LauncherModel.CallbackTask {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f4845a;

    public /* synthetic */ C0381o(int i4) {
        this.f4845a = i4;
    }

    @Override // com.android.launcher3.LauncherModel.CallbackTask
    public final void execute(BgDataModel.Callbacks callbacks) {
        switch (this.f4845a) {
            case 0:
                callbacks.clearPendingBinds();
                callbacks.startBinding();
                return;
            default:
                callbacks.clearPendingBinds();
                callbacks.startBinding();
                return;
        }
    }
}
