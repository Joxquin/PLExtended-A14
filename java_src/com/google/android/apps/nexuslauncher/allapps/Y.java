package com.google.android.apps.nexuslauncher.allapps;

import android.os.Bundle;
import com.android.launcher3.allapps.BaseAllAppsAdapter;
import com.android.launcher3.model.WidgetItem;
import com.android.launcher3.widget.model.WidgetsListBaseEntry;
import java.util.function.Function;
/* loaded from: classes.dex */
public final /* synthetic */ class Y implements Function {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f6974a;

    public /* synthetic */ Y(int i4) {
        this.f6974a = i4;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f6974a) {
            case 0:
                return ((WidgetsListBaseEntry) obj).mWidgets.stream();
            case 1:
                return ((WidgetItem) obj).widgetInfo;
            case 2:
                return (C0653h1) ((BaseAllAppsAdapter.AdapterItem) obj);
            case 3:
                return ((C0653h1) obj).f7080a;
            default:
                return Boolean.valueOf(((Bundle) obj).getBoolean("is_answer"));
        }
    }
}
