package com.android.launcher3.model;

import java.util.function.Predicate;
/* loaded from: classes.dex */
public final /* synthetic */ class u1 implements Predicate {
    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        return ((WidgetItem) obj).widgetInfo != null;
    }
}
