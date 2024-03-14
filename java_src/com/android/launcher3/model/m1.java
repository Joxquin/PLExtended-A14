package com.android.launcher3.model;

import android.content.pm.LauncherActivityInfo;
import java.util.function.Function;
/* loaded from: classes.dex */
public final /* synthetic */ class m1 implements Function {
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return ((LauncherActivityInfo) obj).getApplicationInfo().packageName;
    }
}
