package com.android.launcher3.model;

import android.content.Context;
import android.view.View;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.popup.SystemShortcut;
/* loaded from: classes.dex */
public final /* synthetic */ class k1 implements SystemShortcut.Factory {
    @Override // com.android.launcher3.popup.SystemShortcut.Factory
    public final SystemShortcut getShortcut(Context context, ItemInfo itemInfo, View view) {
        return WellbeingModel.d((BaseDraggingActivity) context, itemInfo, view);
    }
}
