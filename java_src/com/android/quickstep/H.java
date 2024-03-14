package com.android.quickstep;

import android.view.RemoteAnimationTarget;
import java.util.function.ToIntFunction;
/* loaded from: classes.dex */
public final /* synthetic */ class H implements ToIntFunction {
    @Override // java.util.function.ToIntFunction
    public final int applyAsInt(Object obj) {
        int lambda$getLastAppearedTaskIds$0;
        lambda$getLastAppearedTaskIds$0 = GestureState.lambda$getLastAppearedTaskIds$0((RemoteAnimationTarget) obj);
        return lambda$getLastAppearedTaskIds$0;
    }
}
