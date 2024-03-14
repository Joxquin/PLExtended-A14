package com.android.launcher3.model;

import com.android.launcher3.model.data.ItemInfo;
import java.util.function.Predicate;
/* loaded from: classes.dex */
public final /* synthetic */ class K0 implements Predicate {
    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        return ((ItemInfo) obj).itemType == 6;
    }
}
