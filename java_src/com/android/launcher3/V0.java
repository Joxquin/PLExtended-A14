package com.android.launcher3;

import android.view.View;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.util.LauncherBindableItemsContainer$ItemOperator;
/* loaded from: classes.dex */
public final /* synthetic */ class V0 implements LauncherBindableItemsContainer$ItemOperator {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Workspace f4504a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ int f4505b;

    public /* synthetic */ V0(Workspace workspace, int i4) {
        this.f4504a = workspace;
        this.f4505b = i4;
    }

    @Override // com.android.launcher3.util.LauncherBindableItemsContainer$ItemOperator
    public final boolean evaluate(View view, ItemInfo itemInfo) {
        int i4 = Workspace.f4511d;
        Workspace workspace = this.f4504a;
        workspace.getClass();
        if (itemInfo instanceof LauncherAppWidgetInfo) {
            LauncherAppWidgetInfo launcherAppWidgetInfo = (LauncherAppWidgetInfo) itemInfo;
            if (launcherAppWidgetInfo.appWidgetId == this.f4505b) {
                workspace.mLauncher.removeItem(view, launcherAppWidgetInfo, true, "widget is removed in response to widget remove broadcast");
                return true;
            }
        }
        return false;
    }
}
