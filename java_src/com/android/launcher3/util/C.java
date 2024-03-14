package com.android.launcher3.util;

import com.android.launcher3.util.ScreenOnTracker;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final /* synthetic */ class C implements Consumer {
    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        ((ScreenOnTracker.ScreenOnListener) obj).onUserPresent();
    }
}
