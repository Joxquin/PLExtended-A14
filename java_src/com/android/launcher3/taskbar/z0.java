package com.android.launcher3.taskbar;

import android.view.View;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.util.LauncherBindableItemsContainer$ItemOperator;
import java.util.function.Predicate;
/* loaded from: classes.dex */
public final /* synthetic */ class z0 implements LauncherBindableItemsContainer$ItemOperator {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ TaskbarPopupController f5177a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Predicate f5178b;

    public /* synthetic */ z0(TaskbarPopupController taskbarPopupController, y0 y0Var) {
        this.f5177a = taskbarPopupController;
        this.f5178b = y0Var;
    }

    @Override // com.android.launcher3.util.LauncherBindableItemsContainer$ItemOperator
    public final boolean evaluate(View view, ItemInfo itemInfo) {
        TaskbarPopupController.a(this.f5177a, this.f5178b, itemInfo, view);
        return false;
    }
}
