package com.android.quickstep.logging;

import com.android.launcher3.logger.LauncherAtom$Attribute;
import java.util.function.Function;
/* loaded from: classes.dex */
public final /* synthetic */ class g implements Function {
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return Integer.valueOf(((LauncherAtom$Attribute) obj).getNumber());
    }
}
