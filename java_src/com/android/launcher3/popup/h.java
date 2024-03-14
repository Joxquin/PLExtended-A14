package com.android.launcher3.popup;

import com.android.launcher3.model.WidgetItem;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.widget.model.WidgetsListBaseEntry;
import com.android.launcher3.widget.model.WidgetsListContentEntry;
import java.util.HashMap;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final /* synthetic */ class h implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f4932a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ HashMap f4933b;

    public /* synthetic */ h(HashMap hashMap, int i4) {
        this.f4932a = i4;
        this.f4933b = hashMap;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f4932a) {
            case 0:
                ((WidgetsListContentEntry) ((WidgetsListBaseEntry) obj)).mWidgets.forEach(new h(this.f4933b, 1));
                return;
            default:
                WidgetItem widgetItem = (WidgetItem) obj;
                this.f4933b.put(new ComponentKey(widgetItem.componentName, widgetItem.user), widgetItem);
                return;
        }
    }
}
