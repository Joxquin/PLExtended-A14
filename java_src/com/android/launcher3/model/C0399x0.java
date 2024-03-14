package com.android.launcher3.model;

import com.android.launcher3.LauncherModel;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.model.data.ItemInfo;
import java.util.Collections;
/* renamed from: com.android.launcher3.model.x0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0399x0 implements LauncherModel.CallbackTask {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f4899a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ItemInfo f4900b;

    public /* synthetic */ C0399x0(int i4, ItemInfo itemInfo) {
        this.f4899a = i4;
        this.f4900b = itemInfo;
    }

    @Override // com.android.launcher3.LauncherModel.CallbackTask
    public final void execute(BgDataModel.Callbacks callbacks) {
        int i4 = this.f4899a;
        ItemInfo itemInfo = this.f4900b;
        switch (i4) {
            case 0:
                callbacks.bindItemsModified(Collections.singletonList(itemInfo));
                return;
            default:
                callbacks.bindItems(Collections.singletonList(itemInfo));
                return;
        }
    }
}
