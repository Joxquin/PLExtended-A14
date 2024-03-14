package com.android.quickstep;

import android.view.RemoteAnimationTarget;
import java.util.function.Predicate;
/* renamed from: com.android.quickstep.v0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0581v0 implements Predicate {
    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        boolean lambda$onAnimationStart$0;
        lambda$onAnimationStart$0 = RecentsAnimationCallbacks.lambda$onAnimationStart$0((RemoteAnimationTarget) obj);
        return lambda$onAnimationStart$0;
    }
}
