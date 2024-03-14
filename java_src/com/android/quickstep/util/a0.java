package com.android.quickstep.util;

import java.util.function.Predicate;
/* loaded from: classes.dex */
public final /* synthetic */ class a0 implements Predicate {
    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        boolean lambda$checkTaskLaunchFailed$1;
        lambda$checkTaskLaunchFailed$1 = TaskRemovedDuringLaunchListener.lambda$checkTaskLaunchFailed$1((GroupTask) obj);
        return lambda$checkTaskLaunchFailed$1;
    }
}
