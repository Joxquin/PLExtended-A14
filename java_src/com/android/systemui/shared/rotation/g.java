package com.android.systemui.shared.rotation;

import com.android.systemui.shared.system.ActivityManagerWrapper;
import java.util.function.Function;
/* loaded from: classes.dex */
public final /* synthetic */ class g implements Function {
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return ((ActivityManagerWrapper) obj).getRunningTask();
    }
}
