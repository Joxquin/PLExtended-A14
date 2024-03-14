package com.android.launcher3.model;

import com.android.launcher3.model.data.ItemInfo;
import java.util.function.Function;
/* renamed from: com.android.launcher3.model.u0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0393u0 implements Function {
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        ItemInfo itemInfo = (ItemInfo) obj;
        return itemInfo.getTargetComponent() == null ? "" : itemInfo.getTargetComponent().getPackageName();
    }
}
