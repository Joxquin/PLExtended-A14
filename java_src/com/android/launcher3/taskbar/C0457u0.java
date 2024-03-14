package com.android.launcher3.taskbar;

import android.content.Context;
import android.view.View;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.popup.SystemShortcut;
/* renamed from: com.android.launcher3.taskbar.u0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0457u0 implements SystemShortcut.Factory {
    @Override // com.android.launcher3.popup.SystemShortcut.Factory
    public final SystemShortcut getShortcut(Context context, ItemInfo itemInfo, View view) {
        return new SystemShortcut.AppInfo((BaseTaskbarContext) context, itemInfo, view);
    }
}
