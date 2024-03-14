package com.android.launcher3;

import android.view.View;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.util.LauncherBindableItemsContainer$ItemOperator;
/* loaded from: classes.dex */
public final /* synthetic */ class N0 implements LauncherBindableItemsContainer$ItemOperator {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f4473a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ int f4474b;

    public /* synthetic */ N0(int i4, int i5) {
        this.f4473a = i5;
        this.f4474b = i4;
    }

    @Override // com.android.launcher3.util.LauncherBindableItemsContainer$ItemOperator
    public final boolean evaluate(View view, ItemInfo itemInfo) {
        int i4 = this.f4473a;
        int i5 = this.f4474b;
        switch (i4) {
            case 0:
                int i6 = Workspace.f4511d;
                return itemInfo != null && itemInfo.id == i5;
            default:
                int i7 = Workspace.f4511d;
                return (itemInfo instanceof LauncherAppWidgetInfo) && ((LauncherAppWidgetInfo) itemInfo).appWidgetId == i5;
        }
    }
}
