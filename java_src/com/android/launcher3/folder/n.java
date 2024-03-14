package com.android.launcher3.folder;

import java.util.Objects;
import java.util.function.Predicate;
/* loaded from: classes.dex */
public final /* synthetic */ class n implements Predicate {
    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        return Objects.nonNull((CharSequence) obj);
    }
}
