package com.android.launcher3.model;

import com.android.launcher3.model.BgDataModel;
import java.util.ArrayList;
import java.util.function.Consumer;
/* renamed from: com.android.launcher3.model.h  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0367h implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f4813a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Object f4814b;

    public /* synthetic */ C0367h(int i4, Object obj) {
        this.f4813a = i4;
        this.f4814b = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f4813a) {
            case 0:
                ((ArrayList) this.f4814b).add((BgDataModel.FixedContainerItems) obj);
                return;
            case 1:
                ((ArrayList) this.f4814b).add((BgDataModel.FixedContainerItems) obj);
                return;
            default:
                BaseLauncherBinder$UnifiedWorkspaceBinder.b((BaseLauncherBinder$UnifiedWorkspaceBinder) this.f4814b, (BgDataModel.FixedContainerItems) obj);
                return;
        }
    }
}
