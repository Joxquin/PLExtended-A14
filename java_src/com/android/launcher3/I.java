package com.android.launcher3;

import android.view.View;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.util.LauncherBindableItemsContainer$ItemOperator;
import com.android.launcher3.widget.LauncherAppWidgetHostView;
/* loaded from: classes.dex */
public final /* synthetic */ class I implements LauncherBindableItemsContainer$ItemOperator {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f4445a;

    public /* synthetic */ I(int i4) {
        this.f4445a = i4;
    }

    @Override // com.android.launcher3.util.LauncherBindableItemsContainer$ItemOperator
    public final boolean evaluate(View view, ItemInfo itemInfo) {
        switch (this.f4445a) {
            case 0:
                if (view instanceof LauncherAppWidgetHostView) {
                    ((LauncherAppWidgetHostView) view).endDeferringUpdates();
                }
                return false;
            default:
                if (view instanceof LauncherAppWidgetHostView) {
                    ((LauncherAppWidgetHostView) view).beginDeferringUpdates();
                }
                return false;
        }
    }
}
