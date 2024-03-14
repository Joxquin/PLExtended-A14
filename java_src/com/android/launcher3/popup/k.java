package com.android.launcher3.popup;

import com.android.launcher3.widget.model.WidgetsListBaseEntry;
import com.android.launcher3.widget.model.WidgetsListContentEntry;
import java.util.function.Function;
/* loaded from: classes.dex */
public final /* synthetic */ class k implements Function {
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return ((WidgetsListContentEntry) ((WidgetsListBaseEntry) obj)).mWidgets.stream();
    }
}
