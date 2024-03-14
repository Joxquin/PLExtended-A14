package com.android.launcher3.model;

import com.android.launcher3.LauncherModel;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.model.data.ItemInfo;
import java.util.Collections;
/* renamed from: com.android.launcher3.model.q  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0385q implements LauncherModel.CallbackTask {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f4856a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ItemInfo f4857b;

    public /* synthetic */ C0385q(int i4, ItemInfo itemInfo) {
        this.f4856a = i4;
        this.f4857b = itemInfo;
    }

    @Override // com.android.launcher3.LauncherModel.CallbackTask
    public final void execute(BgDataModel.Callbacks callbacks) {
        int i4 = this.f4856a;
        ItemInfo itemInfo = this.f4857b;
        switch (i4) {
            case 0:
                callbacks.bindItems(Collections.singletonList(itemInfo));
                return;
            default:
                callbacks.bindItems(Collections.singletonList(itemInfo));
                return;
        }
    }
}
