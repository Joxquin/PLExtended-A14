package com.android.quickstep.logging;

import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.util.NavigationMode;
import java.util.function.Function;
/* loaded from: classes.dex */
public final /* synthetic */ class b implements Function {
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        StatsLogManager.LauncherEvent launcherEvent;
        launcherEvent = ((NavigationMode) obj).launcherEvent;
        return launcherEvent;
    }
}
