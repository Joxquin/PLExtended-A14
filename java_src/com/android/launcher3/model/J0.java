package com.android.launcher3.model;

import android.content.ComponentName;
import java.util.function.Function;
/* loaded from: classes.dex */
public final /* synthetic */ class J0 implements Function {
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return ((ComponentName) obj).toShortString();
    }
}
