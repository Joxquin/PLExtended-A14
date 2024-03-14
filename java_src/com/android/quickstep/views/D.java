package com.android.quickstep.views;

import com.android.quickstep.views.TaskView;
import java.util.Objects;
import java.util.function.Predicate;
/* loaded from: classes.dex */
public final /* synthetic */ class D implements Predicate {
    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        return Objects.nonNull((TaskView.TaskIdAttributeContainer) obj);
    }
}
