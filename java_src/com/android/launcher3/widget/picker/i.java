package com.android.launcher3.widget.picker;

import com.android.launcher3.widget.model.WidgetsListBaseEntry;
import com.android.launcher3.widget.model.WidgetsListHeaderEntry;
import java.util.function.Predicate;
/* loaded from: classes.dex */
public final /* synthetic */ class i implements Predicate {
    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        return ((WidgetsListBaseEntry) obj) instanceof WidgetsListHeaderEntry;
    }
}
