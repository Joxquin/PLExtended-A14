package com.android.launcher3.uioverrides;

import android.appwidget.AppWidgetHostView;
import android.appwidget.AppWidgetProviderInfo;
import android.widget.RemoteViews;
import com.android.launcher3.uioverrides.QuickstepWidgetHolder;
/* loaded from: classes.dex */
public final /* synthetic */ class c implements QuickstepWidgetHolder.UpdateKey {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f5232a;

    @Override // java.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        switch (this.f5232a) {
            case 0:
                ((AppWidgetHostView) obj).onUpdateProviderInfo((AppWidgetProviderInfo) obj2);
                return;
            case 1:
                ((AppWidgetHostView) obj).updateAppWidget((RemoteViews) obj2);
                return;
            default:
                ((AppWidgetHostView) obj).onViewDataChanged(((Integer) obj2).intValue());
                return;
        }
    }
}
