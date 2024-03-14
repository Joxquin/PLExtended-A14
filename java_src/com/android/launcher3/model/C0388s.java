package com.android.launcher3.model;

import com.android.launcher3.LauncherModel;
import com.android.launcher3.model.BgDataModel;
/* renamed from: com.android.launcher3.model.s  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0388s implements LauncherModel.CallbackTask {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f4867a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ BgDataModel.FixedContainerItems f4868b;

    public /* synthetic */ C0388s(BgDataModel.FixedContainerItems fixedContainerItems, int i4) {
        this.f4867a = i4;
        this.f4868b = fixedContainerItems;
    }

    @Override // com.android.launcher3.LauncherModel.CallbackTask
    public final void execute(BgDataModel.Callbacks callbacks) {
        int i4 = this.f4867a;
        BgDataModel.FixedContainerItems fixedContainerItems = this.f4868b;
        switch (i4) {
            case 0:
                callbacks.bindExtraContainerItems(fixedContainerItems);
                return;
            default:
                callbacks.bindExtraContainerItems(fixedContainerItems);
                return;
        }
    }
}
