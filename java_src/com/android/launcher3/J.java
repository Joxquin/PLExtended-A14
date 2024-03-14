package com.android.launcher3;

import java.util.function.Predicate;
/* loaded from: classes.dex */
public final /* synthetic */ class J implements Predicate {
    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        return ((DeviceProfile) obj).isTwoPanels;
    }
}
